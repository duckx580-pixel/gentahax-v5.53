package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.ViewCompat;
import com.json.adqualitysdk.sdk.i.bb;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import com.vungle.warren.persistence.Repository;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class cd extends bb {

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    private static int f1224 = 0;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    private static int f1225 = 1;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static int f1226 = 0;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static long f1227 = -3485986758628193988L;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private static char f1228 = 0;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static long f1229 = 3689524512343898053L;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private String f1230;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    static /* synthetic */ boolean m1560(Placement placement) {
        int i = 2 % 2;
        int i2 = f1224 + 85;
        f1225 = i2 % 128;
        int i3 = i2 % 2;
        boolean zM1558 = m1558(placement);
        int i4 = f1224 + 77;
        f1225 = i4 % 128;
        int i5 = i4 % 2;
        return zM1558;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    static /* synthetic */ Map m1561(Advertisement advertisement) {
        int i = 2 % 2;
        int i2 = f1224 + 119;
        f1225 = i2 % 128;
        int i3 = i2 % 2;
        Map<String, String> mapM1556 = m1556(advertisement);
        int i4 = f1224 + 87;
        f1225 = i4 % 128;
        int i5 = i4 % 2;
        return mapM1556;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    static /* synthetic */ Placement m1562(Repository repository, String str) {
        int i = 2 % 2;
        int i2 = f1225 + 85;
        f1224 = i2 % 128;
        int i3 = i2 % 2;
        Placement placementM1564 = m1564(repository, str);
        int i4 = f1225 + 21;
        f1224 = i4 % 128;
        if (i4 % 2 == 0) {
            return placementM1564;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    static /* synthetic */ String m1563(Advertisement advertisement) {
        int i = 2 % 2;
        int i2 = f1225 + 49;
        f1224 = i2 % 128;
        if (i2 % 2 == 0) {
            return m1559(advertisement);
        }
        m1559(advertisement);
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    static /* synthetic */ String m1565(Advertisement advertisement) {
        int i = 2 % 2;
        int i2 = f1225 + 113;
        f1224 = i2 % 128;
        int i3 = i2 % 2;
        String strM1557 = m1557(advertisement);
        if (i3 != 0) {
            int i4 = 80 / 0;
        }
        return strM1557;
    }

    public cd(String str) {
        super(str);
    }

    @Override // com.json.adqualitysdk.sdk.i.bb
    /* JADX INFO: renamed from: ﾇ */
    public final String mo798() {
        int i = 2 % 2;
        int i2 = f1224 + 67;
        f1225 = i2 % 128;
        int i3 = i2 % 2;
        String strMo823 = mo823();
        if (strMo823 == null) {
            return null;
        }
        String str = strMo823.split(m1567("䤼㡀䦃쾟", "袂", "%ᴯ竓乣", (char) (25467 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))), (-753062144) - View.MeasureSpec.getMode(0)).intern())[1];
        int i4 = f1225 + 113;
        f1224 = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.bb
    /* JADX INFO: renamed from: ｋ */
    public final String mo823() {
        int i = 2 % 2;
        int i2 = f1224 + 115;
        f1225 = i2 % 128;
        if (i2 % 2 == 0) {
            Object obj = null;
            super.hashCode();
            throw null;
        }
        if (this.f1230 == null) {
            String strM1555 = m1555();
            this.f1230 = strM1555;
            m822(strM1555);
        }
        String str = this.f1230;
        int i3 = f1224 + 77;
        f1225 = i3 % 128;
        int i4 = i3 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    private static String m1555() {
        int i = 2 % 2;
        int i2 = f1225 + 9;
        f1224 = i2 % 128;
        int i3 = i2 % 2;
        Class clsM1554 = m1554();
        hr.m2365().m2368();
        try {
            Iterator<Field> it = hr.m2365().m2368().m2353(clsM1554, ho.m2347().m2293(String.class).m2295(8).m2296(16).m2294()).iterator();
            while (it.hasNext()) {
                int i4 = f1225 + 31;
                f1224 = i4 % 128;
                int i5 = i4 % 2;
                String str = (String) it.next().get(null);
                if (!str.startsWith(m1567("䤼㡀䦃쾟", "⢟쒸쫫\udae9㟮燐ﺨ\uf6bc鉮稵㚓〒", "藸ॎ\ue23e땖", (char) (1 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))), Color.rgb(0, 0, 0) + 16777216).intern())) {
                    int i6 = f1225 + 3;
                    f1224 = i6 % 128;
                    int i7 = i6 % 2;
                    if (str.startsWith(m1567("䤼㡀䦃쾟", "髭紅\uddcd䳭롖旦똑\ue614銱\udc00朖", "튮\ud946ᮑ漩", (char) (ViewCompat.MEASURED_STATE_MASK - Color.rgb(0, 0, 0)), TextUtils.indexOf((CharSequence) "", '0', 0, 0) - 1848031533).intern())) {
                    }
                }
                return str.split(m1566("럾", 51720 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))).intern())[0];
            }
        } catch (Exception unused) {
        }
        int i8 = f1225 + 75;
        f1224 = i8 % 128;
        int i9 = i8 % 2;
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x0384  */
    @Override // com.json.adqualitysdk.sdk.i.bb
    /* JADX INFO: renamed from: ﾇ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo797(java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 1490
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cd.mo797(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.bb
    /* JADX INFO: renamed from: ﻐ */
    final Map<String, bb.a> mo796() {
        int i = 2 % 2;
        HashMap map = new HashMap();
        map.put(m1566("랢뗿댏낈뻕뱿릜ꜹꕐꋷꀝ궤", (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 607).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.cd.3
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return cd.m1562((Repository) list.get(0), (String) list.get(1));
            }
        });
        map.put(m1567("䤼㡀䦃쾟", "䚙缍\uee5c张잳簍赔茶\uf23e⥁ꘞ\uedceཟ턺", "\u0893䣬\u197fꀢ", (char) ((ViewConfiguration.getKeyRepeatDelay() >> 16) + 8729), Color.blue(0)).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.cd.4
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return Boolean.valueOf(cd.m1560((Placement) list.get(0)));
            }
        });
        map.put(m1567("䤼㡀䦃쾟", "髮㨇\ueb02\ue790躷䄲꿾慦眉ɹऔ⪞쐕", "腎㵄\u2d78顛", (char) (23341 - View.getDefaultSize(0, 0)), 2017281153 - Color.alpha(0)).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.cd.5
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return cd.m1563((Advertisement) list.get(0));
            }
        });
        map.put(m1566("랢\ud943橷אָన鷇⻧뾑살剙\ue375", 28386 - ((byte) KeyEvent.getModifierMetaStateMask())).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.cd.1
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return cd.m1565((Advertisement) list.get(0));
            }
        });
        map.put(m1567("䤼㡀䦃쾟", "\ue1b1襹ﯪゆ珷肕聤䬽紀米◬輀\uf198屬瘳㊱\u0ea4偤共", "빼䛘숾\ue63d", (char) (15810 - TextUtils.getCapsMode("", 0, 0)), 1044830399 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.cd.2
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return cd.m1561((Advertisement) list.get(0));
            }
        });
        int i2 = f1224 + 101;
        f1225 = i2 % 128;
        int i3 = i2 % 2;
        return map;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static boolean m1558(Placement placement) {
        int i = 2 % 2;
        int i2 = f1224 + 13;
        f1225 = i2 % 128;
        Object obj = null;
        if (i2 % 2 == 0) {
            placement.isIncentivized();
            super.hashCode();
            throw null;
        }
        boolean zIsIncentivized = placement.isIncentivized();
        int i3 = f1225 + 63;
        f1224 = i3 % 128;
        if (i3 % 2 == 0) {
            return zIsIncentivized;
        }
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static String m1559(Advertisement advertisement) {
        int i = 2 % 2;
        int i2 = f1225 + 89;
        f1224 = i2 % 128;
        int i3 = i2 % 2;
        String adMarketId = advertisement.getAdMarketId();
        if (i3 != 0) {
            int i4 = 21 / 0;
        }
        int i5 = f1224 + 55;
        f1225 = i5 % 128;
        if (i5 % 2 != 0) {
            return adMarketId;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static String m1557(Advertisement advertisement) {
        int i = 2 % 2;
        int i2 = f1225 + 75;
        f1224 = i2 % 128;
        int i3 = i2 % 2;
        String campaign = advertisement.getCampaign();
        int i4 = f1225 + 101;
        f1224 = i4 % 128;
        int i5 = i4 % 2;
        return campaign;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    private static Map<String, String> m1556(Advertisement advertisement) {
        int i = 2 % 2;
        int i2 = f1225 + 65;
        f1224 = i2 % 128;
        int i3 = i2 % 2;
        Map<String, String> downloadableUrls = advertisement.getDownloadableUrls();
        int i4 = f1225 + 11;
        f1224 = i4 % 128;
        if (i4 % 2 == 0) {
            return downloadableUrls;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    private static Class m1554() {
        int i = 2 % 2;
        int i2 = f1224 + 83;
        int i3 = i2 % 128;
        f1225 = i3;
        int i4 = i2 % 2;
        int i5 = i3 + 97;
        f1224 = i5 % 128;
        if (i5 % 2 != 0) {
            int i6 = 12 / 0;
        }
        return VungleApiClient.class;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static Placement m1564(Repository repository, String str) {
        int i = 2 % 2;
        int i2 = f1224 + 61;
        f1225 = i2 % 128;
        int i3 = i2 % 2;
        Placement placement = (Placement) repository.load(str, Placement.class).get();
        int i4 = f1224 + 63;
        f1225 = i4 % 128;
        if (i4 % 2 != 0) {
            return placement;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static String m1567(String str, String str2, String str3, char c, int i) {
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
            char[] cArr5 = (char[]) cArr3.clone();
            cArr4[0] = (char) (c ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i));
            int length = cArr2.length;
            char[] cArr6 = new char[length];
            j.f2591 = 0;
            while (j.f2591 < length) {
                int i2 = (j.f2591 + 2) % 4;
                int i3 = (j.f2591 + 3) % 4;
                j.f2592 = (char) (((cArr4[j.f2591 % 4] * 32718) + cArr5[i2]) % 65535);
                cArr5[i3] = (char) (((cArr4[i3] * 32718) + cArr5[i2]) / 65535);
                cArr4[i3] = j.f2592;
                cArr6[j.f2591] = (char) (((((long) (cArr4[i3] ^ cArr2[j.f2591])) ^ f1227) ^ ((long) f1226)) ^ ((long) f1228));
                j.f2591++;
            }
            str4 = new String(cArr6);
        }
        return str4;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static String m1566(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f1929) {
            f.f1928 = i;
            char[] cArr2 = new char[cArr.length];
            f.f1930 = 0;
            while (f.f1930 < cArr.length) {
                cArr2[f.f1930] = (char) (((long) (cArr[f.f1930] ^ (f.f1930 * f.f1928))) ^ f1229);
                f.f1930++;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }
}
