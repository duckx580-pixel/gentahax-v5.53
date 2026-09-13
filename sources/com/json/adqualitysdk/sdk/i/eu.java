package com.json.adqualitysdk.sdk.i;

import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public final class eu extends ek {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static long f1907 = 2435869614871768589L;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private static int f1908 = 0;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static int f1909 = 1;

    public eu(dz dzVar, dz dzVar2, dm dmVar) {
        super(dzVar, dzVar2, dmVar);
    }

    @Override // com.json.adqualitysdk.sdk.i.ek
    /* JADX INFO: renamed from: ﻛ */
    public final Number mo2186(Number number, Number number2) {
        int i = 2 % 2;
        if (!(!(number instanceof Double)) || (number2 instanceof Double)) {
            Double dValueOf = Double.valueOf(number.doubleValue() - number2.doubleValue());
            int i2 = f1908 + 5;
            f1909 = i2 % 128;
            if (i2 % 2 == 0) {
                int i3 = 82 / 0;
            }
            return dValueOf;
        }
        if (!(number instanceof Long)) {
            int i4 = f1908 + 115;
            f1909 = i4 % 128;
            if (i4 % 2 == 0) {
                boolean z = number2 instanceof Long;
                throw null;
            }
            if (!(number2 instanceof Long)) {
                return Integer.valueOf(number.intValue() - number2.intValue());
            }
        }
        return Long.valueOf(number.longValue() - number2.longValue());
    }

    @Override // com.json.adqualitysdk.sdk.i.ee
    /* JADX INFO: renamed from: ﻐ */
    public final String mo2174() {
        int i = 2 % 2;
        int i2 = f1909 + 59;
        f1908 = i2 % 128;
        int i3 = i2 % 2;
        String strIntern = m2194("◀◭⩒㻠\uf682", 1 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern();
        int i4 = f1909 + 105;
        f1908 = i4 % 128;
        int i5 = i4 % 2;
        return strIntern;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private static String m2194(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (i.f2334) {
            char[] cArrM2484 = i.m2484(f1907, cArr, i);
            i.f2333 = 4;
            while (i.f2333 < cArrM2484.length) {
                i.f2332 = i.f2333 - 4;
                cArrM2484[i.f2333] = (char) (((long) (cArrM2484[i.f2333] ^ cArrM2484[i.f2333 % 4])) ^ (((long) i.f2332) * f1907));
                i.f2333++;
            }
            str2 = new String(cArrM2484, 4, cArrM2484.length - 4);
        }
        return str2;
    }
}
