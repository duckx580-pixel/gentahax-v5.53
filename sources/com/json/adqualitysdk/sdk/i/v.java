package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class v {

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    private static char f2950 = 0;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    private static int f2951 = 1;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    private static int f2952 = 0;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static long f2953 = 0;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static int f2954 = 493005877;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private Map<String, x> f2957 = new HashMap();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private Map<String, ab> f2956 = new HashMap();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private Map<String, z> f2955 = new HashMap();

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    static /* synthetic */ Map m3008(v vVar) {
        int i = 2 % 2;
        int i2 = f2951 + 65;
        int i3 = i2 % 128;
        f2952 = i3;
        int i4 = i2 % 2;
        Map<String, z> map = vVar.f2955;
        int i5 = i3 + 17;
        f2951 = i5 % 128;
        int i6 = i5 % 2;
        return map;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    static /* synthetic */ Map m3010(v vVar) {
        int i = 2 % 2;
        int i2 = f2951 + 67;
        int i3 = i2 % 128;
        f2952 = i3;
        int i4 = i2 % 2;
        Map<String, x> map = vVar.f2957;
        int i5 = i3 + 99;
        f2951 = i5 % 128;
        if (i5 % 2 != 0) {
            return map;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    static /* synthetic */ Map m3011(v vVar) {
        int i = 2 % 2;
        int i2 = f2952 + 71;
        int i3 = i2 % 128;
        f2951 = i3;
        int i4 = i2 % 2;
        Map<String, ab> map = vVar.f2956;
        if (i4 == 0) {
            throw null;
        }
        int i5 = i3 + 11;
        f2952 = i5 % 128;
        int i6 = i5 % 2;
        return map;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    static /* synthetic */ String m3012(JSONObject jSONObject) {
        int i = 2 % 2;
        int i2 = f2951 + 93;
        f2952 = i2 % 128;
        int i3 = i2 % 2;
        String strM3009 = m3009(jSONObject);
        int i4 = f2952 + 75;
        f2951 = i4 % 128;
        if (i4 % 2 != 0) {
            return strM3009;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m3014(final JSONObject jSONObject, final n nVar, final jj jjVar, final ip ipVar) {
        int i = 2 % 2;
        t.m2999(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.v.4
            @Override // com.json.adqualitysdk.sdk.i.io
            /* JADX INFO: renamed from: ｋ */
            public final void mo418() {
                String strM3012 = v.m3012(jSONObject);
                x xVar = (x) v.m3010(v.this).get(strM3012);
                if (xVar == null) {
                    xVar = new x(jSONObject, ipVar);
                    v.m3010(v.this).put(strM3012, xVar);
                } else {
                    xVar.m3069(ipVar);
                    xVar.m3045(jSONObject);
                }
                xVar.m3006((q) nVar);
                xVar.m3048((jf) jjVar);
            }
        });
        int i2 = f2951 + 63;
        f2952 = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 28 / 0;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m3013() {
        int i = 2 % 2;
        t.m2999(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.v.5
            @Override // com.json.adqualitysdk.sdk.i.io
            /* JADX INFO: renamed from: ｋ */
            public final void mo418() {
                ArrayList arrayList = new ArrayList(v.m3010(v.this).values());
                v.m3010(v.this).clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((x) it.next()).m3046();
                }
            }
        });
        int i2 = f2952 + 1;
        f2951 = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m3015(final JSONObject jSONObject, final w wVar) {
        int i = 2 % 2;
        t.m2999(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.v.2
            @Override // com.json.adqualitysdk.sdk.i.io
            /* JADX INFO: renamed from: ｋ */
            public final void mo418() {
                String strM3012 = v.m3012(jSONObject);
                ab abVar = (ab) v.m3011(v.this).get(strM3012);
                if (abVar == null) {
                    abVar = new ab(jSONObject);
                    v.m3011(v.this).put(strM3012, abVar);
                } else {
                    abVar.m365(jSONObject);
                }
                abVar.m3006((q) wVar);
            }
        });
        int i2 = f2951 + 15;
        f2952 = i2 % 128;
        if (i2 % 2 == 0) {
            return;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m3016() {
        int i = 2 % 2;
        t.m2999(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.v.3
            @Override // com.json.adqualitysdk.sdk.i.io
            /* JADX INFO: renamed from: ｋ */
            public final void mo418() {
                ArrayList arrayList = new ArrayList(v.m3011(v.this).values());
                v.m3011(v.this).clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ab) it.next()).m368();
                }
            }
        });
        int i2 = f2952 + 71;
        f2951 = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 25 / 0;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m3018(JSONObject jSONObject, s sVar) {
        int i = 2 % 2;
        int i2 = f2952 + 101;
        f2951 = i2 % 128;
        int i3 = i2 % 2;
        m3017(jSONObject, sVar, null);
        if (i3 == 0) {
            int i4 = 90 / 0;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m3017(final JSONObject jSONObject, final s sVar, final il ilVar) {
        int i = 2 % 2;
        t.m2999(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.v.1
            @Override // com.json.adqualitysdk.sdk.i.io
            /* JADX INFO: renamed from: ｋ */
            public final void mo418() {
                String strM3012 = v.m3012(jSONObject);
                z zVar = (z) v.m3008(v.this).get(strM3012);
                if (zVar == null) {
                    zVar = new z(jSONObject, ilVar);
                    v.m3008(v.this).put(strM3012, zVar);
                } else {
                    zVar.m3110(jSONObject, ilVar);
                }
                zVar.m3006(sVar);
            }
        });
        int i2 = f2951 + 73;
        f2952 = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m3019() {
        int i = 2 % 2;
        t.m2999(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.v.10
            @Override // com.json.adqualitysdk.sdk.i.io
            /* JADX INFO: renamed from: ｋ */
            public final void mo418() {
                ArrayList arrayList = new ArrayList(v.m3008(v.this).values());
                v.m3008(v.this).clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((z) it.next()).m3112();
                }
            }
        });
        int i2 = f2951 + 61;
        f2952 = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 88 / 0;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private static String m3009(JSONObject jSONObject) {
        int i = 2 % 2;
        String string = new StringBuilder().append(jSONObject.optString(m3007(ViewCompat.MEASURED_STATE_MASK - Color.rgb(0, 0, 0), "닾噍\udead\ue7c7昌竕\uf34d둍Єⷺ梓ห圧\ueb75", (char) (32331 - (ViewConfiguration.getWindowTouchSlop() >> 8)), "\u0000\u0000\u0000\u0000", "仈瀍䮾䥾").intern())).append(m3007((-618168878) - TextUtils.indexOf((CharSequence) "", '0'), "乍", (char) (KeyEvent.keyCodeFromString("") + 45509), "\u0000\u0000\u0000\u0000", "팔❽엛墱").intern()).append(jSONObject.optString(m3007(ViewConfiguration.getEdgeSlop() >> 16, "簈꺶昭滏뉶毴䳴ꄁ橅럄\ue254訐ᾂ棥", (char) (43867 - (ViewConfiguration.getEdgeSlop() >> 16)), "\u0000\u0000\u0000\u0000", "뒥ᤣ審뺫").intern())).append(jSONObject.optString(m3007(1563720790 - KeyEvent.keyCodeFromString(""), "泐勉⇴\uf1e3샨傋䠱\uea53\ue7b4\u20fd\udd4f滴媨", (char) (20557 - ExpandableListView.getPackedPositionGroup(0L)), "\u0000\u0000\u0000\u0000", "嘬㑼䵝䥐").intern())).append(jSONObject.optString(m3007((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 847669623, "ᩘ것\u2d73ꏹ蠰쩰했鮁\ue944휵쫰为ᅘ\uea6d决", (char) (54426 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)), "\u0000\u0000\u0000\u0000", "睨虩騲ﳔ").intern())).toString();
        int i2 = f2952 + 45;
        f2951 = i2 % 128;
        int i3 = i2 % 2;
        return string;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static String m3007(int i, String str, char c, String str2, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f2593) {
            char[] cArr4 = (char[]) cArr.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i));
            int length = cArr3.length;
            char[] cArr6 = new char[length];
            j.f2591 = 0;
            while (j.f2591 < length) {
                int i2 = (j.f2591 + 2) % 4;
                int i3 = (j.f2591 + 3) % 4;
                j.f2592 = (char) (((cArr4[j.f2591 % 4] * 32718) + cArr5[i2]) % 65535);
                cArr5[i3] = (char) (((cArr4[i3] * 32718) + cArr5[i2]) / 65535);
                cArr4[i3] = j.f2592;
                cArr6[j.f2591] = (char) (((((long) (cArr4[i3] ^ cArr3[j.f2591])) ^ f2953) ^ ((long) f2954)) ^ ((long) f2950));
                j.f2591++;
            }
            str4 = new String(cArr6);
        }
        return str4;
    }
}
