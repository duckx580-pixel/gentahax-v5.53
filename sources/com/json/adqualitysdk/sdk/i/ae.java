package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ae extends js {

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    private static int f101 = 1;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    private static int f102 = 0;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    private static int f103 = 62;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    private static char f104 = 60409;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    private static char f105 = 47305;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    private static char f106 = 7498;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    private static char f107 = 33741;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private int f108;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private int f109;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private int f110;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private String f111;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private Handler f112;

    public interface c {
        void onEventGenerated(JSONObject jSONObject);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    static /* synthetic */ int m407(ae aeVar) {
        int i = 2 % 2;
        int i2 = f101 + 117;
        int i3 = i2 % 128;
        f102 = i3;
        int i4 = i2 % 2;
        int i5 = aeVar.f110;
        aeVar.f110 = i5 + 1;
        int i6 = i3 + 67;
        f101 = i6 % 128;
        int i7 = i6 % 2;
        return i5;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    static /* synthetic */ int m409(ae aeVar) {
        int i = 2 % 2;
        int i2 = f102;
        int i3 = i2 + 45;
        f101 = i3 % 128;
        int i4 = i3 % 2;
        int i5 = aeVar.f109;
        aeVar.f109 = i5 + 1;
        int i6 = i2 + 13;
        f101 = i6 % 128;
        int i7 = i6 % 2;
        return i5;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    static /* synthetic */ int m411(ae aeVar) {
        int i = 2 % 2;
        int i2 = f102;
        int i3 = i2 + 105;
        f101 = i3 % 128;
        int i4 = i3 % 2;
        int i5 = aeVar.f110;
        int i6 = i2 + 97;
        f101 = i6 % 128;
        int i7 = i6 % 2;
        return i5;
    }

    ae(Context context, al alVar, int i, String str, long j) {
        super(context, alVar, j);
        this.f108 = i;
        this.f109 = 0;
        this.f110 = 1;
        this.f111 = str;
        HandlerThread handlerThread = new HandlerThread(m408("\udfa7뻬⯸䴝喒艤ᵰ쳺胆\u1739ᦈኳ텭됥\uf37fѧ鴣䇖說\ueb51瘟㠷䃔⦃", 23 - Color.argb(0, 0, 0, 0)).intern());
        handlerThread.start();
        this.f112 = new Handler(handlerThread.getLooper());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private int m413() {
        int i = 2 % 2;
        int i2 = f101;
        int i3 = i2 + 109;
        int i4 = i3 % 128;
        f102 = i4;
        int i5 = i3 % 2;
        int i6 = this.f109;
        if (i6 != 0) {
            int i7 = i4 + 67;
            f101 = i7 % 128;
            if (i7 % 2 != 0) {
                return i6;
            }
            throw null;
        }
        int i8 = i2 + 59;
        int i9 = i8 % 128;
        f102 = i9;
        int i10 = i8 % 2 != 0 ? 0 : 1;
        int i11 = i9 + 97;
        f101 = i11 % 128;
        if (i11 % 2 != 0) {
            return i10;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized void m414(final String str, final JSONObject jSONObject, final JSONObject jSONObject2, final boolean z, final c cVar) throws Throwable {
        try {
            try {
                int i = 2 % 2;
                this.f112.post(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.ae.3

                    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
                    private static int f113 = 0;

                    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
                    private static int f114 = 1;

                    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
                    private static long f115 = -1043968294105785616L;

                    @Override // com.json.adqualitysdk.sdk.i.io
                    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
                    public final void mo418() throws Exception {
                        int i2 = 2 % 2;
                        if (str.equals(m417("홲黫퉣詯혆䑫柜ᫌ뷗\ud828\uf3b0皠Ɓ⳯形\ue24d镆", KeyEvent.normalizeMetaState(0)).intern())) {
                            ae.m409(ae.this);
                            int i3 = f114 + 9;
                            f113 = i3 % 128;
                            int i4 = i3 % 2;
                        }
                        int iM411 = ae.m411(ae.this);
                        ae.m407(ae.this);
                        JSONObject jSONObjectM2809 = jx.m2809(jSONObject);
                        jSONObjectM2809.put(m417("컟紪ꗊ畐캱ꞻ၇\ue5e5", Process.myPid() >> 22).intern(), str);
                        jSONObjectM2809.put(m417("≋\udc1d㒨鵺∮ڃ", ExpandableListView.getPackedPositionGroup(0L)).intern(), iM411);
                        String strIntern = m417("䞿푯\uef44줃䟋\u0eed嫅妰Ⱊ銽캅㗰達", View.resolveSize(0, 0)).intern();
                        JSONObject jSONObject3 = jSONObject2;
                        if (jSONObject3 != null) {
                            int i5 = f113 + 99;
                            f114 = i5 % 128;
                            int i6 = i5 % 2;
                            strIntern = jSONObject3.optString(ik.f2446);
                            jSONObjectM2809.put(ik.f2404, jSONObject2.optString(ik.f2404, null));
                        }
                        if (TextUtils.isEmpty(strIntern)) {
                            int i7 = f114 + 7;
                            f113 = i7 % 128;
                            strIntern = i7 % 2 != 0 ? m417("誱퍶〱\udee6諟৩薿乓", 'l' % AndroidCharacter.getMirror('3')).intern() : m417("誱퍶〱\udee6諟৩薿乓", '0' - AndroidCharacter.getMirror('0')).intern();
                        }
                        jSONObjectM2809.put(ik.f2450, strIntern);
                        if (!jSONObjectM2809.has(ik.f2449)) {
                            jSONObjectM2809.put(ik.f2449, strIntern);
                        }
                        final JSONObject jSONObjectMo416 = ae.this.mo416(jSONObjectM2809, z, true, str.equals(m417("룜\uf33f⥉\uf04c뢨⦿鳶惵퍲뗦࢝", MotionEvent.axisFromString("") + 1).intern()));
                        t.m2999(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.ae.3.4
                            @Override // com.json.adqualitysdk.sdk.i.io
                            /* JADX INFO: renamed from: ｋ */
                            public final void mo418() {
                                cVar.onEventGenerated(jSONObjectMo416);
                            }
                        });
                    }

                    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
                    private static String m417(String str2, int i2) {
                        String str3;
                        Object charArray = str2;
                        if (str2 != null) {
                            charArray = str2.toCharArray();
                        }
                        char[] cArr = (char[]) charArray;
                        synchronized (i.f2334) {
                            char[] cArrM2484 = i.m2484(f115, cArr, i2);
                            i.f2333 = 4;
                            while (i.f2333 < cArrM2484.length) {
                                i.f2332 = i.f2333 - 4;
                                cArrM2484[i.f2333] = (char) (((long) (cArrM2484[i.f2333] ^ cArrM2484[i.f2333 % 4])) ^ (((long) i.f2332) * f115));
                                i.f2333++;
                            }
                            str3 = new String(cArrM2484, 4, cArrM2484.length - 4);
                        }
                        return str3;
                    }
                });
                int i2 = f101 + 59;
                f102 = i2 % 128;
                int i3 = i2 % 2;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m415(final JSONArray jSONArray, final boolean z, final c cVar) {
        int i = 2 % 2;
        this.f112.post(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.ae.5

            /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
            private static int f124 = 0;

            /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
            private static int f125 = 1;

            /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
            private static char[] f127 = {41142, 31759, 6626, 13635, 53775, 61426, 'A', 56516, 47413, 38290, 29393, 20262, 11157, 2245, 58659, 49599, 40658, 31531, 22422, 13526, 4363, 60819, 51918, 42799, 33670, 24831, 15676, 6557, 63214, 47020, 27441, 3791, 8824, 50483, 63643, 40054, 48957, 21212, 30322, 10553, 52430, 57471, 33580, 42629, 23162, 32063, 4294, 13427, 55043, 35564, 44670, 16641, 25806};

            /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
            private static long f126 = -1632652314227581782L;

            @Override // com.json.adqualitysdk.sdk.i.io
            /* JADX INFO: renamed from: ｋ */
            public final void mo418() throws Exception {
                int i2 = 2 % 2;
                int i3 = f124 + 63;
                f125 = i3 % 128;
                int i4 = i3 % 2;
                final JSONObject jSONObjectMo416 = ae.this.mo416(null, z, false, false);
                try {
                    jSONObjectMo416.put(m419((char) (41171 - ((Process.getThreadPriority(0) + 20) >> 6)), (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 6, TextUtils.getTrimmedLength("")).intern(), jSONArray);
                    int i5 = f124 + 13;
                    f125 = i5 % 128;
                    int i6 = i5 % 2;
                } catch (JSONException e) {
                    l.m2913(m419((char) Color.alpha(0), MotionEvent.axisFromString("") + 24, TextUtils.lastIndexOf("", '0', 0, 0) + 7).intern(), m419((char) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 47081), 24 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 29).intern(), e);
                }
                t.m2999(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.ae.5.1
                    @Override // com.json.adqualitysdk.sdk.i.io
                    /* JADX INFO: renamed from: ｋ */
                    public final void mo418() {
                        cVar.onEventGenerated(jSONObjectMo416);
                    }
                });
            }

            /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
            private static String m419(char c2, int i2, int i3) {
                String str;
                synchronized (d.f1577) {
                    char[] cArr = new char[i2];
                    d.f1576 = 0;
                    while (d.f1576 < i2) {
                        cArr[d.f1576] = (char) ((((long) f127[d.f1576 + i3]) ^ (((long) d.f1576) * f126)) ^ ((long) c2));
                        d.f1576++;
                    }
                    str = new String(cArr);
                }
                return str;
            }
        });
        int i2 = f102 + 121;
        f101 = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 70 / 0;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.js
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final JSONObject mo416(JSONObject jSONObject, boolean z, boolean z2, boolean z3) throws JSONException {
        long jM2738;
        long jM2739;
        synchronized (this) {
            jM2738 = jp.m2738();
            jM2739 = jp.m2739();
        }
        JSONObject jSONObjectMo416 = super.mo416(jSONObject, z, z2, z3);
        try {
            long jOptLong = jSONObjectMo416.optLong(ik.f2443);
            jSONObjectMo416.remove(ik.f2443);
            if (jOptLong != 0) {
                long j = jM2739 - (jM2738 - jOptLong);
                jSONObjectMo416.put(m408("纝\ueabb䈳\uee08", 3 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern(), jM2738);
                jSONObjectMo416.put(m412(false, "\u0001\u0000\uffff", 179 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 1, Color.green(0) + 3).intern(), jM2739);
                jM2738 = jOptLong;
                jM2739 = j;
            }
            jSONObjectMo416.put(m408("\uedab䦴䈳\uee08", 4 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))).intern(), jM2738);
            jSONObjectMo416.put(m412(true, "\u0001\u0000", 179 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), -TextUtils.lastIndexOf("", '0', 0), 2 - TextUtils.getTrimmedLength("")).intern(), jM2739);
            jSONObjectMo416.put(m412(true, "\u0006\ufff7￼\b", 172 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), TextUtils.indexOf("", "", 0) + 1, 4 - Drawable.resolveOpacity(0, 0)).intern(), this.f111);
            jSONObjectMo416.put(m408("ꪥ킭옻ᢓ", 3 - View.resolveSizeAndState(0, 0, 0)).intern(), this.f108);
            jSONObjectMo416.put(m412(true, "\uffff\u0004\ufffe", 173 - Gravity.getAbsoluteGravity(0, 0), TextUtils.indexOf("", "") + 2, 3 - (ViewConfiguration.getPressedStateDuration() >> 16)).intern(), m413());
            if (ao.m569().mo571()) {
                jSONObjectMo416.put(m412(false, "\ufffa\n\u0003\ufffb", 167 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), 4 - View.resolveSize(0, 0), AndroidCharacter.getMirror('0') - ',').intern(), true);
            }
            if (z2) {
                m410(jSONObjectMo416);
            }
            return jSONObjectMo416;
        } catch (JSONException e) {
            l.m2913(m408("\udfa7뻬⯸䴝喒艤ᵰ쳺胆\u1739ᦈኳ텭됥\uf37fѧ鴣䇖說\ueb51瘟㠷䃔⦃", TextUtils.getOffsetAfter("", 0) + 23).intern(), m408("風䚧\ue910姆ꔌ◥獈؇꺊\uf040鬒劥Ꭻ坟\ue54e䂊ᦈኳ텭됥‘㋭㝫廷", 24 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1))).intern(), e);
            return jSONObjectMo416;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private synchronized void m410(JSONObject jSONObject) {
        int i = 2 % 2;
        int i2 = f101 + 123;
        f102 = i2 % 128;
        int i3 = i2 % 2;
        ih ihVarM2659 = jc.m2651().m2659();
        try {
            jSONObject.put(m408("ḓ䁚纝\ueabb㖖\u2d6d瑟\uf0b9\ued55儑", 9 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern(), jx.m2823(ihVarM2659.m2517(), ihVarM2659.m2518(), ihVarM2659.m2515(), ihVarM2659.m2516()));
            int i4 = f101 + 89;
            f102 = i4 % 128;
            if (i4 % 2 != 0) {
                int i5 = 44 / 0;
            }
        } catch (JSONException e) {
            l.m2913(m408("\udfa7뻬⯸䴝喒艤ᵰ쳺胆\u1739ᦈኳ텭됥\uf37fѧ鴣䇖說\ueb51瘟㠷䃔⦃", (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 24).intern(), m412(true, "\u0012\u0000\u000b\uffbf\u0006\r\b\u0003\u0003\u0000\uffbf\u0011\u000e\u0011\u0011\u0004\u0013\r\u0004\u0015\u0004\uffbf\u000e\u0013\uffbf\u0007\u0002\u0014\u000e\u0013", TextUtils.lastIndexOf("", '0', 0, 0) + 160, 16 - TextUtils.indexOf("", "", 0), View.MeasureSpec.getMode(0) + 30).intern(), e);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static String m408(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (k.f2808) {
            char[] cArr2 = new char[cArr.length];
            k.f2807 = 0;
            char[] cArr3 = new char[2];
            while (k.f2807 < cArr.length) {
                cArr3[0] = cArr[k.f2807];
                cArr3[1] = cArr[k.f2807 + 1];
                int i2 = 58224;
                for (int i3 = 0; i3 < 16; i3++) {
                    char c2 = cArr3[1];
                    char c3 = cArr3[0];
                    char c4 = (char) (c2 - (((c3 + i2) ^ ((c3 << 4) + f107)) ^ ((c3 >>> 5) + f104)));
                    cArr3[1] = c4;
                    cArr3[0] = (char) (c3 - (((c4 >>> 5) + f105) ^ ((c4 + i2) ^ ((c4 << 4) + f106))));
                    i2 -= 40503;
                }
                cArr2[k.f2807] = cArr3[0];
                cArr2[k.f2807 + 1] = cArr3[1];
                k.f2807 += 2;
            }
            str2 = new String(cArr2, 0, i);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private static String m412(boolean z, String str, int i, int i2, int i3) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (a.f66) {
            char[] cArr2 = new char[i3];
            a.f65 = 0;
            while (a.f65 < i3) {
                a.f63 = cArr[a.f65];
                cArr2[a.f65] = (char) (a.f63 + i);
                int i4 = a.f65;
                cArr2[i4] = (char) (cArr2[i4] - f103);
                a.f65++;
            }
            if (i2 > 0) {
                a.f64 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                System.arraycopy(cArr3, 0, cArr2, i3 - a.f64, a.f64);
                System.arraycopy(cArr3, a.f64, cArr2, 0, i3 - a.f64);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                a.f65 = 0;
                while (a.f65 < i3) {
                    cArr4[a.f65] = cArr2[(i3 - a.f65) - 1];
                    a.f65++;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }
}
