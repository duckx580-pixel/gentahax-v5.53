package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;
import com.json.adqualitysdk.sdk.i.hz;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class id {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private hz f2349;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private String f2350;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private ib f2351;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private Context f2352;

    public id(Context context, String str, String str2) {
        this.f2352 = context.getApplicationContext();
        this.f2350 = str2;
        this.f2351 = new ib(this.f2352, str);
        this.f2349 = new hz(Cif.f2379, this.f2352.getPackageName(), ic.m2494(this.f2352), this.f2350);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int m2500(String str) {
        try {
            return this.f2351.m2490(str);
        } catch (Throwable unused) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final HashMap<String, String> m2499(String str, int i) {
        try {
            HashMap<String, String> mapM2489 = this.f2351.m2489(str, i);
            HashMap<String, String> map = new HashMap<>();
            for (String str2 : mapM2489.keySet()) {
                String str3 = mapM2489.get(str2);
                if (str3 != null && !TextUtils.isEmpty(str3)) {
                    try {
                        map.put(str2, this.f2349.m2482(str3));
                    } catch (hz.e unused) {
                    }
                }
            }
            return map;
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m2501(String str) {
        try {
            String strM2488 = this.f2351.m2488(str);
            if (strM2488 == null || TextUtils.isEmpty(strM2488)) {
                return strM2488;
            }
            try {
                return this.f2349.m2482(strM2488);
            } catch (hz.e unused) {
                return "";
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m2498(String str) {
        try {
            this.f2351.m2487(str);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2502(String str, String str2) {
        try {
            this.f2351.m2491(str, this.f2349.m2483(str2));
        } catch (Throwable unused) {
        }
    }
}
