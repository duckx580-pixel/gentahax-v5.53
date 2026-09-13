###### Class com.gentahax.main.VoiceChat (com.gentahax.main.VoiceChat)
.class public Lcom/gentahax/main/VoiceChat;
.super Ljava/lang/Object;
.source "VoiceChat.java"


# static fields
.field private static final REQ_RECORD_AUDIO:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "GENTAHAX"

.field private static instance:Lcom/gentahax/main/VoiceChat;


# instance fields
.field private final audioLock:Ljava/lang/Object;

.field private audioTrack:Landroid/media/AudioTrack;

.field private context:Landroid/app/Activity;

.field private muted:Z

.field private playbackInitialized:Z

.field private recordThread:Ljava/lang/Thread;

.field private recorder:Landroid/media/AudioRecord;

.field private running:Z

.field private final sendLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->running:Z

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/gentahax/main/VoiceChat;->muted:Z

    .line 26
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/gentahax/main/VoiceChat;->audioLock:Ljava/lang/Object;

    .line 27
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/gentahax/main/VoiceChat;->sendLock:Ljava/lang/Object;

    .line 43
    iput-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->playbackInitialized:Z

    .line 33
    iput-object p1, p0, Lcom/gentahax/main/VoiceChat;->context:Landroid/app/Activity;

    return-void
.end method

.method public static getInstance()Lcom/gentahax/main/VoiceChat;
    .registers 1

    .line 221
    sget-object v0, Lcom/gentahax/main/VoiceChat;->instance:Lcom/gentahax/main/VoiceChat;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/gentahax/main/VoiceChat;
    .registers 3

    const-class v0, Lcom/gentahax/main/VoiceChat;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/gentahax/main/VoiceChat;->instance:Lcom/gentahax/main/VoiceChat;

    if-nez v1, :cond_15

    .line 37
    new-instance v1, Lcom/gentahax/main/VoiceChat;

    invoke-direct {v1, p0}, Lcom/gentahax/main/VoiceChat;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/gentahax/main/VoiceChat;->instance:Lcom/gentahax/main/VoiceChat;

    .line 38
    const-string p0, "GENTAHAX"

    const-string v1, "VoiceChat instance created"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_15
    sget-object p0, Lcom/gentahax/main/VoiceChat;->instance:Lcom/gentahax/main/VoiceChat;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initAudioTrack()V
    .registers 9

    .line 186
    iget-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->playbackInitialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 187
    :cond_5
    const-string v0, "AudioTrack initializing started..."

    const-string v1, "GENTAHAX"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e80

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 193
    invoke-static {v0, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v4

    const/16 v5, 0xa00

    .line 194
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 196
    new-instance v5, Landroid/media/AudioTrack$Builder;

    invoke-direct {v5}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x1

    .line 198
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 199
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 200
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 197
    invoke-virtual {v5, v6}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v5

    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 202
    invoke-virtual {v6, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 201
    invoke-virtual {v5, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v4}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v7}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/gentahax/main/VoiceChat;->audioTrack:Landroid/media/AudioTrack;

    .line 210
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->context:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_6f

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 213
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 216
    :cond_6f
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 217
    iput-boolean v7, p0, Lcom/gentahax/main/VoiceChat;->playbackInitialized:Z

    .line 218
    const-string v0, "AudioTrack initialized and started (Speakerphone ON)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native nativeProcessNoiseSuppression([SI)V
.end method

.method private static native nativeSendPcmDirect(Ljava/nio/ByteBuffer;IIII)V
.end method

.method public static nativeSetMute(Z)V
    .registers 6

    .line 53
    invoke-static {}, Lcom/gentahax/main/VoiceChat;->getInstance()Lcom/gentahax/main/VoiceChat;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 55
    invoke-virtual {v0, p0}, Lcom/gentahax/main/VoiceChat;->setMute(Z)V

    .line 56
    const-string v1, "GENTAHAX"

    if-eqz p0, :cond_1e

    .line 57
    iget-object v2, v0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_51

    .line 58
    iget-object v0, v0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    goto :goto_51

    .line 61
    :cond_1e
    iget-object v2, v0, Lcom/gentahax/main/VoiceChat;->context:Landroid/app/Activity;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3b

    .line 62
    const-string p0, "RECORD_AUDIO permission not granted, requesting..."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, v0, Lcom/gentahax/main/VoiceChat;->context:Landroid/app/Activity;

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/16 v1, 0x3e9

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 70
    :cond_3b
    iget-boolean v2, v0, Lcom/gentahax/main/VoiceChat;->running:Z

    if-nez v2, :cond_42

    .line 71
    invoke-virtual {v0}, Lcom/gentahax/main/VoiceChat;->startVoice()V

    .line 73
    :cond_42
    iget-object v2, v0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-ne v2, v4, :cond_51

    .line 74
    iget-object v0, v0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 77
    :cond_51
    :goto_51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Mute set to: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return-void
.end method

.method private playAudio([B)V
    .registers 7

    .line 231
    iget-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->playbackInitialized:Z

    if-nez v0, :cond_7

    .line 232
    invoke-direct {p0}, Lcom/gentahax/main/VoiceChat;->initAudioTrack()V

    .line 234
    :cond_7
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->audioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_a
    iget-object v1, p0, Lcom/gentahax/main/VoiceChat;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_17

    array-length v2, p1

    if-lez v2, :cond_17

    .line 236
    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v2, v3}, Landroid/media/AudioTrack;->write([BIII)I

    .line 238
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public static playReceivedAudio([B)V
    .registers 2

    .line 224
    invoke-static {}, Lcom/gentahax/main/VoiceChat;->getInstance()Lcom/gentahax/main/VoiceChat;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 226
    invoke-direct {v0, p0}, Lcom/gentahax/main/VoiceChat;->playAudio([B)V

    :cond_9
    return-void
.end method

.method private stopVoice()V
    .registers 2

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->running:Z

    .line 178
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_12

    .line 179
    :try_start_7
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_a

    .line 180
    :catchall_a
    :try_start_a
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_f

    :catchall_f
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    .line 183
    :cond_12
    invoke-virtual {p0}, Lcom/gentahax/main/VoiceChat;->stopPlayback()V

    return-void
.end method


# virtual methods
.method public isMuted()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->muted:Z

    return v0
.end method

.method synthetic lambda$startVoice$0$com-gentahax-main-VoiceChat(I)V
    .registers 15

    .line 0
    const/16 v0, -0x13

    .line 138
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 139
    new-array v0, p1, [B

    .line 140
    div-int/lit8 v1, p1, 0x2

    new-array v2, v1, [S

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    move v6, v5

    .line 144
    :catch_11
    :goto_11
    iget-boolean v7, p0, Lcom/gentahax/main/VoiceChat;->running:Z

    if-eqz v7, :cond_74

    .line 145
    iget-boolean v7, p0, Lcom/gentahax/main/VoiceChat;->muted:Z

    const-wide/16 v8, 0x14

    if-eqz v7, :cond_1f

    .line 146
    :try_start_1b
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_11

    goto :goto_11

    :cond_1f
    move v7, v5

    :goto_20
    if-ge v7, p1, :cond_33

    .line 151
    iget-boolean v10, p0, Lcom/gentahax/main/VoiceChat;->muted:Z

    if-nez v10, :cond_33

    .line 152
    iget-object v10, p0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    sub-int v11, p1, v7

    invoke-virtual {v10, v0, v7, v11}, Landroid/media/AudioRecord;->read([BII)I

    move-result v10

    if-gtz v10, :cond_31

    goto :goto_20

    :cond_31
    add-int/2addr v7, v10

    goto :goto_20

    .line 156
    :cond_33
    iget-boolean v7, p0, Lcom/gentahax/main/VoiceChat;->muted:Z

    if-eqz v7, :cond_38

    goto :goto_11

    .line 157
    :cond_38
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 158
    invoke-static {v2, v1}, Lcom/gentahax/main/VoiceChat;->nativeProcessNoiseSuppression([SI)V

    .line 160
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 161
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v3

    long-to-int v10, v10

    .line 164
    iget-object v11, p0, Lcom/gentahax/main/VoiceChat;->sendLock:Ljava/lang/Object;

    monitor-enter v11

    add-int/lit8 v12, v6, 0x1

    .line 165
    :try_start_68
    invoke-static {v7, p1, v6, v10, v5}, Lcom/gentahax/main/VoiceChat;->nativeSendPcmDirect(Ljava/nio/ByteBuffer;IIII)V

    .line 166
    monitor-exit v11
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_71

    .line 168
    :try_start_6c
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_6f} :catch_6f

    :catch_6f
    move v6, v12

    goto :goto_11

    :catchall_71
    move-exception p1

    .line 166
    :try_start_72
    monitor-exit v11
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p1

    .line 170
    :cond_74
    const-string p1, "GENTAHAX"

    const-string v0, "Voice recording thread stopped"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMute(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/gentahax/main/VoiceChat;->muted:Z

    return-void
.end method

.method public startVoice()V
    .registers 8

    .line 84
    const-string v0, "VoiceChat starting voice instance..."

    const-string v1, "GENTAHAX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->running:Z

    if-eqz v0, :cond_11

    .line 86
    const-string v0, "startVoice() called but already running"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->running:Z

    .line 91
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->context:Landroid/app/Activity;

    if-nez v0, :cond_1e

    .line 92
    const-string v0, "Context is null! Cannot start voice chat."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_1e
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->running:Z

    return-void

    :cond_2a
    const/16 v0, 0x3e80

    const/16 v2, 0x10

    const/4 v3, 0x2

    .line 103
    invoke-static {v0, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    const/16 v5, 0xa00

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 107
    new-instance v5, Landroid/media/AudioRecord$Builder;

    invoke-direct {v5}, Landroid/media/AudioRecord$Builder;-><init>()V

    const/4 v6, 0x7

    .line 108
    invoke-virtual {v5, v6}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v5

    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 110
    invoke-virtual {v6, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 109
    invoke-virtual {v5, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v4}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    .line 118
    :try_start_66
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 119
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    .line 120
    const-string v0, "NoiseSuppressor enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_7b

    goto :goto_92

    :catchall_7b
    move-exception v0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to enable NoiseSuppressor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_92
    :goto_92
    :try_start_92
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 128
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    .line 129
    const-string v0, "AcousticEchoCanceler enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_92 .. :try_end_a6} :catchall_a7

    goto :goto_be

    :catchall_a7
    move-exception v0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to enable AcousticEchoCanceler: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_be
    :goto_be
    const-string v0, "Voice recording started"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gentahax/main/VoiceChat$$ExternalSyntheticLambda0;

    const/16 v2, 0x280

    invoke-direct {v1, p0, v2}, Lcom/gentahax/main/VoiceChat$$ExternalSyntheticLambda0;-><init>(Lcom/gentahax/main/VoiceChat;I)V

    const-string v2, "VC-Rec"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gentahax/main/VoiceChat;->recordThread:Ljava/lang/Thread;

    .line 173
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopPlayback()V
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_12

    .line 243
    :try_start_4
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7

    .line 244
    :catchall_7
    :try_start_7
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_c

    :catchall_c
    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/gentahax/main/VoiceChat;->audioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->playbackInitialized:Z

    :cond_12
    return-void
.end method

.method public toggleMute()V
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->muted:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/gentahax/main/VoiceChat;->muted:Z

    return-void
.end method

###### Class com.gentahax.main.VoiceChat$$ExternalSyntheticLambda0 (com.gentahax.main.VoiceChat$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gentahax/main/VoiceChat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/VoiceChat;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/VoiceChat;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/VoiceChat$$ExternalSyntheticLambda0;->f$0:Lcom/gentahax/main/VoiceChat;

    iput p2, p0, Lcom/gentahax/main/VoiceChat$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/VoiceChat$$ExternalSyntheticLambda0;->f$0:Lcom/gentahax/main/VoiceChat;

    iget v1, p0, Lcom/gentahax/main/VoiceChat$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/gentahax/main/VoiceChat;->lambda$startVoice$0$com-gentahax-main-VoiceChat(I)V

    return-void
.end method
