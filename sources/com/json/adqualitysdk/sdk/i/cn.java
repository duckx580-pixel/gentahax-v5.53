package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.content.Context;
import com.json.adqualitysdk.sdk.ISAdQualityAdType;
import com.json.adqualitysdk.sdk.IronSourceAdQuality;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class cn extends da {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static int f1415 = 1;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static char[] f1416 = {153, 309, 293, 266, 262, 261, 273, 281, 290, 298, 293, 297};

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private static int f1417;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Object m1779(ci ciVar, List<Object> list) {
        String str;
        Object obj;
        int i = 2 % 2;
        int i2 = f1417 + 85;
        f1415 = i2 % 128;
        if (i2 % 2 == 0) {
            str = (String) m1887(list, 1, String.class);
            obj = m1887(list, 0, (Class<Object>) JSONObject.class);
        } else {
            str = (String) m1887(list, 0, String.class);
            obj = m1887(list, 1, (Class<Object>) JSONObject.class);
        }
        ciVar.m1669(str, (JSONObject) obj);
        int i3 = f1417 + 31;
        f1415 = i3 % 128;
        int i4 = i3 % 2;
        return null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Object m1783(final ci ciVar, List<Object> list, final dq dqVar) {
        final dp dpVar;
        int i = 2 % 2;
        int i2 = f1415 + 99;
        f1417 = i2 % 128;
        if (i2 % 2 == 0 ? (dpVar = (dp) m1887(list, 0, dp.class)) != null : (dpVar = (dp) m1887(list, 1, dp.class)) != null) {
            ciVar.m1665(new ii() { // from class: com.ironsource.adqualitysdk.sdk.i.cn.2
                @Override // com.json.adqualitysdk.sdk.i.ii
                /* JADX INFO: renamed from: ﾒ */
                public final JSONObject mo730(String str, JSONObject jSONObject) {
                    return (JSONObject) dpVar.m2112(dqVar, ciVar, Arrays.asList(str, jSONObject)).m2148();
                }
            });
        }
        int i3 = f1415 + 89;
        f1417 = i3 % 128;
        Object obj = null;
        if (i3 % 2 == 0) {
            return null;
        }
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Object m1773(ci ciVar) {
        int i = 2 % 2;
        int i2 = f1417 + 39;
        f1415 = i2 % 128;
        int i3 = i2 % 2;
        cl clVarM1664 = ciVar.m1664();
        int i4 = f1417 + 103;
        f1415 = i4 % 128;
        int i5 = i4 % 2;
        return clVarM1664;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Object m1776(ci ciVar) {
        int i = 2 % 2;
        int i2 = f1417 + 123;
        f1415 = i2 % 128;
        int i3 = i2 % 2;
        Context contextM1672 = ciVar.m1672();
        int i4 = f1415 + 27;
        f1417 = i4 % 128;
        if (i4 % 2 == 0) {
            return contextM1672;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static long m1781() {
        int i = 2 % 2;
        int i2 = f1415 + 3;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        long jM2738 = jp.m2738();
        int i4 = f1417 + 55;
        f1415 = i4 % 128;
        if (i4 % 2 != 0) {
            return jM2738;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static JSONObject m1771() {
        int i = 2 % 2;
        int i2 = f1415 + 71;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        ih ihVarM1759 = m1759();
        JSONObject jSONObjectM2823 = jx.m2823(ihVarM1759.m2517(), ihVarM1759.m2518(), ihVarM1759.m2515(), ihVarM1759.m2516());
        int i4 = f1417 + 29;
        f1415 = i4 % 128;
        if (i4 % 2 != 0) {
            return jSONObjectM2823;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static long m1778() {
        int i = 2 % 2;
        int i2 = f1417 + 89;
        f1415 = i2 % 128;
        int i3 = i2 % 2;
        long jM2515 = m1759().m2515();
        int i4 = f1415 + 25;
        f1417 = i4 % 128;
        int i5 = i4 % 2;
        return jM2515;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Activity m1775() {
        int i = 2 % 2;
        int i2 = f1415 + 45;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        ja jaVarM2619 = ja.m2619();
        if (i3 == 0) {
            return jaVarM2619.mo2621();
        }
        jaVarM2619.mo2621();
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static db m1772() {
        int i = 2 % 2;
        db dbVar = new db();
        int i2 = f1415 + 31;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        return dbVar;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static dc m1765() {
        int i = 2 % 2;
        dc dcVar = new dc();
        int i2 = f1417 + 3;
        f1415 = i2 % 128;
        if (i2 % 2 != 0) {
            return dcVar;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static de m1761() {
        int i = 2 % 2;
        de deVar = new de();
        int i2 = f1415 + 39;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        return deVar;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static di m1763() {
        int i = 2 % 2;
        di diVar = new di();
        int i2 = f1415 + 121;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        return diVar;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1782(ci ciVar) {
        int i = 2 % 2;
        int i2 = f1415 + 79;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        cl clVarM1664 = ciVar.m1664();
        if (i3 != 0) {
            clVarM1664.m1747();
            Object obj = null;
            super.hashCode();
            throw null;
        }
        String strM1747 = clVarM1664.m1747();
        int i4 = f1417 + 117;
        f1415 = i4 % 128;
        int i5 = i4 % 2;
        return strM1747;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String m1769(ci ciVar) {
        int i = 2 % 2;
        int i2 = f1415 + 49;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        Object obj = null;
        cl clVarM1664 = ciVar.m1664();
        if (i3 != 0) {
            clVarM1664.m1744();
            super.hashCode();
            throw null;
        }
        String strM1744 = clVarM1664.m1744();
        int i4 = f1415 + 95;
        f1417 = i4 % 128;
        if (i4 % 2 == 0) {
            return strM1744;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static String m1767() {
        int i = 2 % 2;
        int i2 = f1415 + 77;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        String sDKVersion = IronSourceAdQuality.getSDKVersion();
        int i4 = f1415 + 39;
        f1417 = i4 % 128;
        if (i4 % 2 == 0) {
            return sDKVersion;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static JSONObject m1764() {
        JSONObject jSONObjectM600;
        int i = 2 % 2;
        int i2 = f1417 + 19;
        f1415 = i2 % 128;
        if (i2 % 2 == 0) {
            jSONObjectM600 = ao.m569().m600();
            int i3 = 82 / 0;
        } else {
            jSONObjectM600 = ao.m569().m600();
        }
        int i4 = f1415 + 99;
        f1417 = i4 % 128;
        int i5 = i4 % 2;
        return jSONObjectM600;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x003d A[PHI: r1 r2 r5
      0x003d: PHI (r1v7 java.lang.String) = (r1v6 java.lang.String), (r1v11 java.lang.String) binds: [B:8:0x003b, B:5:0x0024] A[DONT_GENERATE, DONT_INLINE]
      0x003d: PHI (r2v4 com.ironsource.adqualitysdk.sdk.i.at) = (r2v3 com.ironsource.adqualitysdk.sdk.i.at), (r2v6 com.ironsource.adqualitysdk.sdk.i.at) binds: [B:8:0x003b, B:5:0x0024] A[DONT_GENERATE, DONT_INLINE]
      0x003d: PHI (r5v2 java.util.List<java.lang.Object>) = (r5v1 java.util.List<java.lang.Object>), (r5v7 java.util.List<java.lang.Object>) binds: [B:8:0x003b, B:5:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m1784(java.util.List<java.lang.Object> r5) {
        /*
            r4 = this;
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.json.adqualitysdk.sdk.i.cn.f1415
            int r1 = r1 + 29
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.cn.f1417 = r2
            int r1 = r1 % r0
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L27
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            java.lang.Object r1 = m1887(r5, r2, r1)
            java.lang.String r1 = (java.lang.String) r1
            java.util.List r5 = m1889(r5, r3)
            com.ironsource.adqualitysdk.sdk.i.r r2 = com.json.adqualitysdk.sdk.i.r.m2972()
            com.ironsource.adqualitysdk.sdk.i.at r2 = r2.m2978()
            if (r2 == 0) goto L40
            goto L3d
        L27:
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            java.lang.Object r1 = m1887(r5, r3, r1)
            java.lang.String r1 = (java.lang.String) r1
            java.util.List r5 = m1889(r5, r2)
            com.ironsource.adqualitysdk.sdk.i.r r2 = com.json.adqualitysdk.sdk.i.r.m2972()
            com.ironsource.adqualitysdk.sdk.i.at r2 = r2.m2978()
            if (r2 == 0) goto L40
        L3d:
            r2.m726(r1, r5)
        L40:
            int r5 = com.json.adqualitysdk.sdk.i.cn.f1417
            int r5 = r5 + 47
            int r1 = r5 % 128
            com.json.adqualitysdk.sdk.i.cn.f1415 = r1
            int r5 = r5 % r0
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cn.m1784(java.util.List):java.lang.Object");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static JSONObject m1780(ci ciVar) {
        int i = 2 % 2;
        int i2 = f1415 + 81;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectM1661 = ciVar.m1661();
        int i4 = f1415 + 43;
        f1417 = i4 % 128;
        if (i4 % 2 == 0) {
            return jSONObjectM1661;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static String m1762(ci ciVar) {
        int i = 2 % 2;
        int i2 = f1417 + 35;
        f1415 = i2 % 128;
        int i3 = i2 % 2;
        cl clVarM1664 = ciVar.m1664();
        if (i3 != 0) {
            return clVarM1664.m1749();
        }
        clVarM1664.m1749();
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Object m1777(List<Object> list) {
        int i = 2 % 2;
        int i2 = f1415 + 121;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        l.m2907(m1770("\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001", false, new int[]{0, 12, 191, 5}).intern(), (String) m1887(list, 0, String.class));
        int i4 = f1417 + 77;
        f1415 = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 55 / 0;
        }
        return null;
    }

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static boolean m1757() {
        int i = 2 % 2;
        int i2 = f1415 + 57;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        boolean zMo585 = ao.m569().mo585();
        int i4 = f1415 + 45;
        f1417 = i4 % 128;
        if (i4 % 2 != 0) {
            int i5 = 89 / 0;
        }
        return zMo585;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m1774(List<Object> list) {
        int i = 2 % 2;
        int i2 = f1417 + 113;
        f1415 = i2 % 128;
        return ISAdQualityAdType.fromInt(((Integer) m1887(list, i2 % 2 == 0 ? 1 : 0, Integer.class)).intValue()).name().toLowerCase();
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static String m1766(ci ciVar) {
        int i = 2 % 2;
        int i2 = f1415 + 97;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        Object obj = null;
        cl clVarM1664 = ciVar.m1664();
        if (i3 != 0) {
            clVarM1664.m1753();
            super.hashCode();
            throw null;
        }
        String strM1753 = clVarM1664.m1753();
        int i4 = f1417 + 113;
        f1415 = i4 % 128;
        if (i4 % 2 != 0) {
            return strM1753;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static String m1768(ci ciVar) {
        int i = 2 % 2;
        int i2 = f1415 + 13;
        f1417 = i2 % 128;
        int i3 = i2 % 2;
        String strM2318 = ciVar.m1670().m2318();
        int i4 = f1415 + 83;
        f1417 = i4 % 128;
        if (i4 % 2 != 0) {
            int i5 = 32 / 0;
        }
        return strM2318;
    }

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static boolean m1760() {
        int i = 2 % 2;
        int i2 = f1417 + 65;
        f1415 = i2 % 128;
        int i3 = i2 % 2;
        boolean zMo591 = ao.m569().mo591();
        int i4 = f1415 + 51;
        f1417 = i4 % 128;
        if (i4 % 2 != 0) {
            int i5 = 30 / 0;
        }
        return zMo591;
    }

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static double m1758() {
        int i = 2 % 2;
        int i2 = f1417 + 51;
        f1415 = i2 % 128;
        int i3 = i2 % 2;
        double dMo586 = ao.m569().mo586();
        int i4 = f1415 + 81;
        f1417 = i4 % 128;
        int i5 = i4 % 2;
        return dMo586;
    }

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    private static ih m1759() {
        int i = 2 % 2;
        int i2 = f1417 + 111;
        f1415 = i2 % 128;
        int i3 = i2 % 2;
        jc jcVarM2651 = jc.m2651();
        if (i3 != 0) {
            return jcVarM2651.m2659();
        }
        jcVarM2651.m2659();
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static String m1770(String str, boolean z, int[] iArr) throws UnsupportedEncodingException {
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
            System.arraycopy(f1416, i, cArr, 0, i2);
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
}
