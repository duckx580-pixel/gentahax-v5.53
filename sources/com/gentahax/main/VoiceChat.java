package com.gentahax.main;

import android.app.Activity;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.NoiseSuppressor;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import com.unity3d.services.core.device.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
public class VoiceChat {
    private static final int REQ_RECORD_AUDIO = 1001;
    private static final String TAG = "GENTAHAX";
    private static VoiceChat instance;
    private AudioTrack audioTrack;
    private Activity context;
    private Thread recordThread;
    private AudioRecord recorder;
    private boolean running = false;
    private boolean muted = true;
    private final Object audioLock = new Object();
    private final Object sendLock = new Object();
    private boolean playbackInitialized = false;

    public static native void nativeProcessNoiseSuppression(short[] sArr, int i);

    private static native void nativeSendPcmDirect(ByteBuffer byteBuffer, int i, int i2, int i3, int i4);

    public VoiceChat(Activity activity) {
        this.context = activity;
    }

    public static synchronized VoiceChat getInstance(Activity activity) {
        if (instance == null) {
            instance = new VoiceChat(activity);
            Log.d(TAG, "VoiceChat instance created");
        }
        return instance;
    }

    public void setMute(boolean z) {
        this.muted = z;
    }

    public boolean isMuted() {
        return this.muted;
    }

    public static void nativeSetMute(boolean z) {
        VoiceChat voiceChat = getInstance();
        if (voiceChat != null) {
            voiceChat.setMute(z);
            if (z) {
                AudioRecord audioRecord = voiceChat.recorder;
                if (audioRecord != null && audioRecord.getRecordingState() == 3) {
                    voiceChat.recorder.stop();
                }
            } else {
                if (ActivityCompat.checkSelfPermission(voiceChat.context, "android.permission.RECORD_AUDIO") != 0) {
                    Log.w(TAG, "RECORD_AUDIO permission not granted, requesting...");
                    ActivityCompat.requestPermissions(voiceChat.context, new String[]{"android.permission.RECORD_AUDIO"}, 1001);
                    return;
                }
                if (!voiceChat.running) {
                    voiceChat.startVoice();
                }
                AudioRecord audioRecord2 = voiceChat.recorder;
                if (audioRecord2 != null && audioRecord2.getState() == 1) {
                    voiceChat.recorder.startRecording();
                }
            }
            Log.i(TAG, "Mute set to: " + z);
        }
    }

    public void toggleMute() {
        this.muted = !this.muted;
    }

    public void startVoice() {
        Log.d(TAG, "VoiceChat starting voice instance...");
        if (this.running) {
            Log.w(TAG, "startVoice() called but already running");
            return;
        }
        this.running = true;
        Activity activity = this.context;
        if (activity == null) {
            Log.e(TAG, "Context is null! Cannot start voice chat.");
            return;
        }
        if (ActivityCompat.checkSelfPermission(activity, "android.permission.RECORD_AUDIO") != 0) {
            this.running = false;
            return;
        }
        this.recorder = new AudioRecord.Builder().setAudioSource(7).setAudioFormat(new AudioFormat.Builder().setSampleRate(16000).setEncoding(2).setChannelMask(16).build()).setBufferSizeInBytes(Math.max(AudioRecord.getMinBufferSize(16000, 16, 2), 2560)).build();
        try {
            if (NoiseSuppressor.isAvailable()) {
                NoiseSuppressor.create(this.recorder.getAudioSessionId());
                Log.d(TAG, "NoiseSuppressor enabled");
            }
        } catch (Throwable th) {
            Log.w(TAG, "Failed to enable NoiseSuppressor: " + th.getMessage());
        }
        try {
            if (AcousticEchoCanceler.isAvailable()) {
                AcousticEchoCanceler.create(this.recorder.getAudioSessionId());
                Log.d(TAG, "AcousticEchoCanceler enabled");
            }
        } catch (Throwable th2) {
            Log.w(TAG, "Failed to enable AcousticEchoCanceler: " + th2.getMessage());
        }
        Log.i(TAG, "Voice recording started");
        final int i = 640;
        Thread thread = new Thread(new Runnable() { // from class: com.gentahax.main.VoiceChat$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m111lambda$startVoice$0$comgentahaxmainVoiceChat(i);
            }
        }, "VC-Rec");
        this.recordThread = thread;
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$startVoice$0$com-gentahax-main-VoiceChat, reason: not valid java name */
    /* synthetic */ void m111lambda$startVoice$0$comgentahaxmainVoiceChat(int i) {
        int i2;
        Process.setThreadPriority(-19);
        byte[] bArr = new byte[i];
        int i3 = i / 2;
        short[] sArr = new short[i3];
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i4 = 0;
        while (this.running) {
            if (this.muted) {
                try {
                    Thread.sleep(20L);
                } catch (InterruptedException unused) {
                }
            } else {
                int i5 = 0;
                while (i5 < i && !this.muted) {
                    int i6 = this.recorder.read(bArr, i5, i - i5);
                    if (i6 > 0) {
                        i5 += i6;
                    }
                }
                if (this.muted) {
                    continue;
                } else {
                    ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr);
                    nativeProcessNoiseSuppression(sArr, i3);
                    ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i);
                    byteBufferAllocateDirect.order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().put(sArr);
                    int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - jElapsedRealtime);
                    synchronized (this.sendLock) {
                        i2 = i4 + 1;
                        nativeSendPcmDirect(byteBufferAllocateDirect, i, i4, iElapsedRealtime, 0);
                    }
                    try {
                        Thread.sleep(20L);
                    } catch (InterruptedException unused2) {
                    }
                    i4 = i2;
                }
            }
        }
        Log.i(TAG, "Voice recording thread stopped");
    }

    private void stopVoice() {
        this.running = false;
        AudioRecord audioRecord = this.recorder;
        if (audioRecord != null) {
            try {
                audioRecord.stop();
            } catch (Throwable unused) {
            }
            try {
                this.recorder.release();
            } catch (Throwable unused2) {
            }
            this.recorder = null;
        }
        stopPlayback();
    }

    private void initAudioTrack() {
        if (this.playbackInitialized) {
            return;
        }
        Log.i(TAG, "AudioTrack initializing started...");
        this.audioTrack = new AudioTrack.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(1).build()).setAudioFormat(new AudioFormat.Builder().setSampleRate(16000).setEncoding(2).setChannelMask(4).build()).setBufferSizeInBytes(Math.max(AudioTrack.getMinBufferSize(16000, 4, 2), 2560)).setTransferMode(1).build();
        AudioManager audioManager = (AudioManager) this.context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager != null) {
            audioManager.setMode(0);
            audioManager.setSpeakerphoneOn(true);
        }
        this.audioTrack.play();
        this.playbackInitialized = true;
        Log.i(TAG, "AudioTrack initialized and started (Speakerphone ON)");
    }

    public static VoiceChat getInstance() {
        return instance;
    }

    public static void playReceivedAudio(byte[] bArr) {
        VoiceChat voiceChat = getInstance();
        if (voiceChat != null) {
            voiceChat.playAudio(bArr);
        }
    }

    private void playAudio(byte[] bArr) {
        if (!this.playbackInitialized) {
            initAudioTrack();
        }
        synchronized (this.audioLock) {
            AudioTrack audioTrack = this.audioTrack;
            if (audioTrack != null && bArr.length > 0) {
                audioTrack.write(bArr, 0, bArr.length, 1);
            }
        }
    }

    public void stopPlayback() {
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            try {
                audioTrack.stop();
            } catch (Throwable unused) {
            }
            try {
                this.audioTrack.release();
            } catch (Throwable unused2) {
            }
            this.audioTrack = null;
            this.playbackInitialized = false;
        }
    }
}
