package com.json.adqualitysdk.sdk.i;

import android.util.TypedValue;

/* JADX INFO: loaded from: classes2.dex */
public final class dm {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static int f1723 = 1;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static int f1724 = 0;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private static long f1725 = 8580539187526122618L;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private int f1726;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private String f1727;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static dm m2095(String str, int i) {
        int i2 = 2 % 2;
        if (!r.m2972().m2979()) {
            int i3 = f1724 + 79;
            f1723 = i3 % 128;
            int i4 = i3 % 2;
            return null;
        }
        dm dmVar = new dm(str, i);
        int i5 = f1724 + 113;
        f1723 = i5 % 128;
        int i6 = i5 % 2;
        return dmVar;
    }

    private dm(String str, int i) {
        this.f1727 = str;
        this.f1726 = i;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final int m2096() {
        int i;
        int i2 = 2 % 2;
        int i3 = f1723;
        int i4 = i3 + 123;
        f1724 = i4 % 128;
        if (i4 % 2 != 0) {
            i = this.f1726;
            int i5 = 75 / 0;
        } else {
            i = this.f1726;
        }
        int i6 = i3 + 23;
        f1724 = i6 % 128;
        int i7 = i6 % 2;
        return i;
    }

    public final String toString() {
        int i = 2 % 2;
        String string = new StringBuilder().append(this.f1727).append(m2094("㕌㕶♢〧Ｃ", (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern()).append(this.f1726).toString();
        int i2 = f1724 + 109;
        f1723 = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 69 / 0;
        }
        return string;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static String m2094(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (i.f2334) {
            char[] cArrM2484 = i.m2484(f1725, cArr, i);
            i.f2333 = 4;
            while (i.f2333 < cArrM2484.length) {
                i.f2332 = i.f2333 - 4;
                cArrM2484[i.f2333] = (char) (((long) (cArrM2484[i.f2333] ^ cArrM2484[i.f2333 % 4])) ^ (((long) i.f2332) * f1725));
                i.f2333++;
            }
            str2 = new String(cArrM2484, 4, cArrM2484.length - 4);
        }
        return str2;
    }
}
