package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class jd {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static jd f2647;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    private jj f2648;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private Choreographer.FrameCallback f2650;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private boolean f2651;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private HashMap<im, io> f2649 = new HashMap<>();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private Handler f2652 = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    static /* synthetic */ boolean m2663(jd jdVar) {
        jdVar.f2651 = false;
        return false;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static synchronized jd m2669() {
        if (f2647 == null) {
            f2647 = new jd();
        }
        return f2647;
    }

    private jd() {
    }

    /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.jd$3, reason: invalid class name */
    final class AnonymousClass3 extends io {
        AnonymousClass3() {
        }

        @Override // com.json.adqualitysdk.sdk.i.io
        /* JADX INFO: renamed from: ｋ */
        public final void mo418() {
            if (jd.this.f2648 == null) {
                jd.this.f2648 = new jj() { // from class: com.ironsource.adqualitysdk.sdk.i.jd.3.4
                    @Override // com.json.adqualitysdk.sdk.i.jj, com.json.adqualitysdk.sdk.i.jf
                    /* JADX INFO: renamed from: ｋ */
                    public final void mo489(Activity activity) {
                        t.m2997(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.jd.3.4.1
                            @Override // com.json.adqualitysdk.sdk.i.io
                            /* JADX INFO: renamed from: ｋ */
                            public final void mo418() {
                                final jd jdVar = jd.this;
                                t.m2997(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.jd.5
                                    @Override // com.json.adqualitysdk.sdk.i.io
                                    /* JADX INFO: renamed from: ｋ */
                                    public final void mo418() {
                                        jd.m2663(jd.this);
                                    }
                                });
                            }
                        });
                    }

                    @Override // com.json.adqualitysdk.sdk.i.jj, com.json.adqualitysdk.sdk.i.jf
                    /* JADX INFO: renamed from: ﻐ */
                    public final void mo488(Activity activity) {
                        t.m2997(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.jd.3.4.2
                            @Override // com.json.adqualitysdk.sdk.i.io
                            /* JADX INFO: renamed from: ｋ */
                            public final void mo418() {
                                jd.m2666(jd.this);
                            }
                        });
                    }
                };
                jd.this.f2652.post(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.jd.3.1
                    @Override // com.json.adqualitysdk.sdk.i.io
                    /* JADX INFO: renamed from: ｋ */
                    public final void mo418() {
                        ja.m2619().m2624(jd.this.f2648);
                        t.m2997(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.jd.3.1.5
                            @Override // com.json.adqualitysdk.sdk.i.io
                            /* JADX INFO: renamed from: ｋ */
                            public final void mo418() {
                                jd.m2666(jd.this);
                            }
                        });
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2676() {
        t.m2997(new AnonymousClass3());
    }

    /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.jd$1, reason: invalid class name */
    final class AnonymousClass1 extends io {

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        final /* synthetic */ im f2654;

        AnonymousClass1(im imVar) {
            this.f2654 = imVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.io
        /* JADX INFO: renamed from: ｋ */
        public final void mo418() {
            jd.this.f2649.put(this.f2654, new io() { // from class: com.ironsource.adqualitysdk.sdk.i.jd.1.2
                @Override // com.json.adqualitysdk.sdk.i.io
                /* JADX INFO: renamed from: ｋ */
                public final void mo418() {
                    AnonymousClass1.this.f2654.mo1861();
                }
            });
            jd.m2666(jd.this);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m2674(im imVar) {
        t.m2997(new AnonymousClass1(imVar));
    }

    /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.jd$2, reason: invalid class name */
    final class AnonymousClass2 extends io {

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        private /* synthetic */ im f2656;

        AnonymousClass2(im imVar) {
            this.f2656 = imVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.io
        /* JADX INFO: renamed from: ｋ */
        public final void mo418() {
            jd.this.f2649.remove(this.f2656);
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m2675(im imVar) {
        t.m2997(new AnonymousClass2(imVar));
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    static /* synthetic */ void m2666(jd jdVar) {
        if (jdVar.f2651 || new HashMap(jdVar.f2649).isEmpty()) {
            return;
        }
        jdVar.f2651 = true;
        t.m2997(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.jd.4
            @Override // com.json.adqualitysdk.sdk.i.io
            /* JADX INFO: renamed from: ｋ */
            public final void mo418() {
                if (!jd.this.f2651) {
                    jd.this.f2650 = null;
                    return;
                }
                HashMap mapM2665 = jd.m2665(jd.this);
                Iterator it = mapM2665.keySet().iterator();
                while (it.hasNext()) {
                    jd.this.f2652.post((Runnable) mapM2665.get((im) it.next()));
                }
                if (jd.this.f2650 == null) {
                    jd.this.f2650 = new Choreographer.FrameCallback() { // from class: com.ironsource.adqualitysdk.sdk.i.jd.4.2

                        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
                        private static int f2665 = 0;

                        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
                        private static int f2666 = 1;

                        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
                        private static char[] f2667 = {'_', 199, 191, 179, 180, 184, 211, 227, 219, Typography.times, 211, 216, '2', 'B', 'B', 'i', 'Z', AbstractJsonLexerKt.STRING_ESC, 'i', 'g', 'i', 'e', 'c', 'e', 'j', 'h'};

                        @Override // android.view.Choreographer.FrameCallback
                        public final void doFrame(long j) {
                            int i = 2 % 2;
                            int i2 = f2666 + 53;
                            f2665 = i2 % 128;
                            int i3 = i2 % 2;
                            try {
                                t.m2991(this);
                                int i4 = f2665 + 45;
                                f2666 = i4 % 128;
                                int i5 = i4 % 2;
                            } catch (Throwable th) {
                                l.m2910(m2677("\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000", true, new int[]{0, 12, 109, 3}).intern(), m2677("\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001", false, new int[]{12, 14, 0, 9}).intern(), th, false);
                            }
                        }

                        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
                        private static String m2677(String str, boolean z, int[] iArr) throws UnsupportedEncodingException {
                            String str2;
                            Object bytes = str;
                            if (str != null) {
                                bytes = str.getBytes("ISO-8859-1");
                            }
                            byte[] bArr = (byte[]) bytes;
                            synchronized (g.f2042) {
                                int i = iArr[0];
                                int i2 = iArr[1];
                                int i3 = iArr[2];
                                int i4 = iArr[3];
                                char[] cArr = new char[i2];
                                System.arraycopy(f2667, i, cArr, 0, i2);
                                if (bArr != null) {
                                    char[] cArr2 = new char[i2];
                                    g.f2041 = 0;
                                    char c = 0;
                                    while (g.f2041 < i2) {
                                        if (bArr[g.f2041] == 1) {
                                            cArr2[g.f2041] = (char) (((cArr[g.f2041] << 1) + 1) - c);
                                        } else {
                                            cArr2[g.f2041] = (char) ((cArr[g.f2041] << 1) - c);
                                        }
                                        c = cArr2[g.f2041];
                                        g.f2041++;
                                    }
                                    cArr = cArr2;
                                }
                                if (i4 > 0) {
                                    char[] cArr3 = new char[i2];
                                    System.arraycopy(cArr, 0, cArr3, 0, i2);
                                    int i5 = i2 - i4;
                                    System.arraycopy(cArr3, 0, cArr, i5, i4);
                                    System.arraycopy(cArr3, i4, cArr, 0, i5);
                                }
                                if (z) {
                                    char[] cArr4 = new char[i2];
                                    g.f2041 = 0;
                                    while (g.f2041 < i2) {
                                        cArr4[g.f2041] = cArr[(i2 - g.f2041) - 1];
                                        g.f2041++;
                                    }
                                    cArr = cArr4;
                                }
                                if (i3 > 0) {
                                    g.f2041 = 0;
                                    while (g.f2041 < i2) {
                                        cArr[g.f2041] = (char) (cArr[g.f2041] - iArr[2]);
                                        g.f2041++;
                                    }
                                }
                                str2 = new String(cArr);
                            }
                            return str2;
                        }
                    };
                }
                Choreographer.getInstance().postFrameCallback(jd.this.f2650);
            }
        });
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    static /* synthetic */ HashMap m2665(jd jdVar) {
        return new HashMap(jdVar.f2649);
    }
}
