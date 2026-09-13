package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.ViewConfiguration;
import com.fyber.FairBid;
import com.fyber.fairbid.ads.ImpressionData;
import com.fyber.fairbid.ads.Interstitial;
import com.fyber.fairbid.ads.PlacementType;
import com.fyber.fairbid.ads.Rewarded;
import com.fyber.fairbid.ads.interstitial.InterstitialListener;
import com.fyber.fairbid.ads.rewarded.RewardedListener;
import com.fyber.fairbid.internal.Constants;
import com.fyber.fairbid.mediation.MediationManager;
import com.fyber.fairbid.mediation.adapter.AdapterConfiguration;
import com.fyber.fairbid.mediation.config.MediationConfig;
import com.fyber.fairbid.sdk.placements.Placement;
import com.fyber.fairbid.sdk.placements.PlacementsHandler;
import com.google.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.bb;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class bl extends bb {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    private static int f848 = 0;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    private static int f849 = 1;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static char[] f850 = {'9', 'k', 'i', 'i', 'l', 's', 'n', 'Z', AbstractJsonLexerKt.STRING_ESC, 'f', 'e', 'n', 'n', 'n', 's', 'r', 'k', 'l', 'q', AbstractJsonLexerKt.BEGIN_LIST, 'T', 173, 181, 168, 170, 184, Typography.registered, 158, Typography.cent, 170, 166, 168, 173, '@', '~', '|', 'z', '|', 128, 'm', 'q', 129, 'y', 'k', 'U', 164, 165, 171, 161, 155, 139, 143, Typography.section, Typography.copyright, 172, Typography.registered, 165, 146, ' ', 'R', 'b', 'h', 'r', 'l', 'k', 'a', '_', 'o', 'm', '7', 'n', 'l', 'n', 'j', 'i', 's', 'n', 'h', 'g', 'j', 'n', 'Y', 'Z', 'k', 'l', 'r', 'h', 'b', 'R', '9', 's', 'c', 'c', 'q', 'i', 'm', AbstractJsonLexerKt.END_LIST, 'Y', 'g', 'c', 'H', 143, 149, 137, 130, 141, 143, 142, 147, 151, 149, 151, 134, 128, 144, 144, 141, 143, 148, 134, 132, 153, 156, 147, 144, 145, 141, 't', 232, 238, 220, 212, 222, 232, 246, 236, 220, 224, 232, 228, 230, 235, 235, 235, 243, 230, 232, 246, 236, '3', 'f', 'l', '^', AbstractJsonLexerKt.BEGIN_LIST, 'n', 'q', 'k', 'l', 's', 'n', 'l', 'n', 'Y', 'R', 'j', 'j', 'X', '^', 'f', 'b', 'd', 'i', 'i', 'i', 'q', 'd', 'f', 't', 'j', '2', 'l', 's', 'n', 'l', 'n', 'Y', 'R', 'j', 'j', 'Y', AbstractJsonLexerKt.BEGIN_LIST, 'i', 'i', 'd', 'k', 'm', 'k', 'j', AbstractJsonLexerKt.END_LIST, AbstractJsonLexerKt.BEGIN_LIST, 'g', 'i', 'f', 'l', '^', AbstractJsonLexerKt.BEGIN_LIST, 'n', 'q', Typography.nbsp, 173, 171, 168, 132, 175, Typography.nbsp, Typography.cent, Typography.nbsp, 158, 173, Typography.degree, 170, 142, 159, Typography.copyright, 156, 168, Typography.nbsp, Ascii.MAX, 156, 175, 156, Ascii.MAX, Typography.copyright, 170, 164, Typography.registered, Typography.registered, '2', 'k', 'q', 'n', AbstractJsonLexerKt.BEGIN_LIST, '^', 'l', 'f', 'e', 'V', '^', 'q', 'g', 'e', 'm', 'i', AbstractJsonLexerKt.BEGIN_LIST, AbstractJsonLexerKt.BEGIN_LIST, 'j', 'j', 'R', 'Y', 'n', 'l', 'n', 's', '2', 'V', 'W', 'm', 'o', 'n', 'j', 'c', 'k', 'Z', 'R', 'j', 'j', 'R', 'Y', 'n', 'l', 'n', 's', 'l', 'k', 'q', 'n', AbstractJsonLexerKt.BEGIN_LIST, '^', 'l', 'f', '0', 'R', 'Y', 'n', 'l', 'n', 's', 'l', 'k', 'q', 'n', AbstractJsonLexerKt.BEGIN_LIST, '^', 'l', 'f', 'e', 'V', AbstractJsonLexerKt.BEGIN_LIST, 'j', 'h', 'e', 'h', 'n', 'g', 'R', 'R', 'j', AbstractJsonLexerKt.STRING_ESC, 171, Typography.plusMinus, 197, 173, 175, 193, 187, '3', 'f', 'l', 'Z', 'R', 'b', 'h', 'r', 'l', 'k', 'Z', 'Y', 'n', 'j', 'g', 'h', 'n', 's', 'i', 'j', 'n', 'l', 'n', 'p', '3', 'f', 'l', 'b', '^', 'f', 'b', 'd', 'i', 'i', 'i', 'q', 'a', 'W', 'g', 'i', '3', 'f', 'l', 'b', '^', 'f', 'b', 'd', 'i', 'i', 'i', 'q', 's', AbstractJsonLexerKt.END_LIST, 'T', 'g', 'i', 'h', 'h', 'k', 'B', 131, 137, 'w', 'o', 'y', 131, 145, 135, 'r', 'v', 142, 142, 300, 290, 261, 293, 282, 290, 301, 290, 301, 300, 299, 286, 301, 295, 258, 301, 286, 300, 299, 286, 295, 286, 301, 'w', 248, 257, 250, 249, 257, 241, 241, 248, 247, 257, 250, 242, '*', 'Q', 'L', 'L', 'N', 'S', 'R', 'O', Typography.nbsp, 166, 161, Typography.nbsp, Typography.section, 168, Typography.pound, Typography.pound, Typography.pound, 154, 155};

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static char f851 = 37914;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private static char f852 = 24038;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private static char f853 = 16764;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static char f854 = 38475;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    static /* synthetic */ String m1073(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f848 + 103;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        String strM1063 = m1063(impressionData);
        if (i3 == 0) {
            int i4 = 12 / 0;
        }
        int i5 = f849 + 7;
        f848 = i5 % 128;
        if (i5 % 2 == 0) {
            return strM1063;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    static /* synthetic */ boolean m1074() {
        int i = 2 % 2;
        int i2 = f849 + 121;
        f848 = i2 % 128;
        if (i2 % 2 != 0) {
            m1072();
            Object obj = null;
            super.hashCode();
            throw null;
        }
        boolean zM1072 = m1072();
        int i3 = f849 + 99;
        f848 = i3 % 128;
        int i4 = i3 % 2;
        return zM1072;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    static /* synthetic */ String m1075(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f848 + 35;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        String strM1064 = m1064(impressionData);
        int i4 = f848 + 45;
        f849 = i4 % 128;
        int i5 = i4 % 2;
        return strM1064;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    static /* synthetic */ double m1076(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f849 + 115;
        f848 = i2 % 128;
        if (i2 % 2 != 0) {
            m1069(impressionData);
            Object obj = null;
            super.hashCode();
            throw null;
        }
        double dM1069 = m1069(impressionData);
        int i3 = f848 + 71;
        f849 = i3 % 128;
        int i4 = i3 % 2;
        return dM1069;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    static /* synthetic */ MediationManager m1077() {
        int i = 2 % 2;
        int i2 = f848 + 1;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        MediationManager mediationManagerM1067 = m1067();
        int i4 = f848 + 107;
        f849 = i4 % 128;
        if (i4 % 2 != 0) {
            return mediationManagerM1067;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    static /* synthetic */ String m1079(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f848 + 67;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        String strM1065 = m1065(impressionData);
        if (i3 == 0) {
            int i4 = 93 / 0;
        }
        int i5 = f849 + 79;
        f848 = i5 % 128;
        int i6 = i5 % 2;
        return strM1065;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    static /* synthetic */ PlacementType m1081(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f849 + 97;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        PlacementType placementTypeM1080 = m1080(impressionData);
        if (i3 != 0) {
            int i4 = 75 / 0;
        }
        return placementTypeM1080;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    static /* synthetic */ Constants.AdType m1082(Placement placement) {
        int i = 2 % 2;
        int i2 = f848 + 113;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        Constants.AdType adTypeM1085 = m1085(placement);
        if (i3 == 0) {
            int i4 = 33 / 0;
        }
        int i5 = f848 + 1;
        f849 = i5 % 128;
        if (i5 % 2 != 0) {
            return adTypeM1085;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    static /* synthetic */ String m1086(FairBid.AdsConfig adsConfig) {
        int i = 2 % 2;
        int i2 = f849 + 73;
        f848 = i2 % 128;
        if (i2 % 2 == 0) {
            return m1083(adsConfig);
        }
        m1083(adsConfig);
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    static /* synthetic */ String m1087(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f848 + 105;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        String strM1071 = m1071(impressionData);
        int i4 = f849 + 55;
        f848 = i4 % 128;
        if (i4 % 2 == 0) {
            return strM1071;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    static /* synthetic */ void m1090(InterstitialListener interstitialListener) {
        int i = 2 % 2;
        int i2 = f848 + 35;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        m1097(interstitialListener);
        int i4 = f848 + 123;
        f849 = i4 % 128;
        if (i4 % 2 != 0) {
            return;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    static /* synthetic */ PlacementType m1091(Constants.AdType adType) {
        int i = 2 % 2;
        int i2 = f849 + 49;
        f848 = i2 % 128;
        if (i2 % 2 != 0) {
            m1084(adType);
            throw null;
        }
        PlacementType placementTypeM1084 = m1084(adType);
        int i3 = f848 + 109;
        f849 = i3 % 128;
        if (i3 % 2 == 0) {
            int i4 = 44 / 0;
        }
        return placementTypeM1084;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    static /* synthetic */ Constants.AdType m1092(String str) {
        int i = 2 % 2;
        int i2 = f848 + 121;
        f849 = i2 % 128;
        if (i2 % 2 != 0) {
            return m1078(str);
        }
        m1078(str);
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    static /* synthetic */ String m1095(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f848 + 31;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        String strM1066 = m1066(impressionData);
        int i4 = f848 + 3;
        f849 = i4 % 128;
        int i5 = i4 % 2;
        return strM1066;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    static /* synthetic */ String m1096(Placement placement) {
        int i = 2 % 2;
        int i2 = f849 + 119;
        f848 = i2 % 128;
        if (i2 % 2 == 0) {
            return m1105(placement);
        }
        m1105(placement);
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    static /* synthetic */ PlacementsHandler m1099(MediationManager mediationManager) {
        int i = 2 % 2;
        int i2 = f848 + 109;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        PlacementsHandler placementsHandlerM1093 = m1093(mediationManager);
        int i4 = f849 + 27;
        f848 = i4 % 128;
        int i5 = i4 % 2;
        return placementsHandlerM1093;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    static /* synthetic */ String m1100(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f848 + 87;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        String strM1068 = m1068(impressionData);
        if (i3 == 0) {
            int i4 = 88 / 0;
        }
        int i5 = f849 + 39;
        f848 = i5 % 128;
        if (i5 % 2 == 0) {
            return strM1068;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    static /* synthetic */ void m1102(RewardedListener rewardedListener) {
        int i = 2 % 2;
        int i2 = f849 + 57;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        m1098(rewardedListener);
        int i4 = f848 + 65;
        f849 = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    static /* synthetic */ String m1103(FairBid.AdsConfig adsConfig) {
        int i = 2 % 2;
        int i2 = f848 + 95;
        f849 = i2 % 128;
        if (i2 % 2 != 0) {
            return m1094(adsConfig);
        }
        m1094(adsConfig);
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    static /* synthetic */ String m1104(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f848 + 51;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        String strM1070 = m1070(impressionData);
        int i4 = f849 + 97;
        f848 = i4 % 128;
        int i5 = i4 % 2;
        return strM1070;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    static /* synthetic */ List m1106(MediationConfig mediationConfig) {
        int i = 2 % 2;
        int i2 = f849 + 67;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        List<AdapterConfiguration> listM1101 = m1101(mediationConfig);
        int i4 = f848 + 123;
        f849 = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 74 / 0;
        }
        return listM1101;
    }

    public bl(String str) {
        super(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x028f  */
    @Override // com.json.adqualitysdk.sdk.i.bb
    /* JADX INFO: renamed from: ﾇ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class mo797(java.lang.String r24) {
        /*
            Method dump skipped, instruction units count: 838
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bl.mo797(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.bb
    /* JADX INFO: renamed from: ﾇ */
    public final String mo798() {
        int i = 2 % 2;
        int i2 = f848 + 17;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        try {
            try {
                String str = (String) FairBid.class.getDeclaredField(m1088("\ufadf㥏굊ṽ溇᥈灱溺嬢ัꀜﰾ", 10 - ImageFormat.getBitsPerPixel(0)).intern()).get(null);
                int i4 = f849 + 5;
                f848 = i4 % 128;
                int i5 = i4 % 2;
                return str;
            } catch (Exception unused) {
                return hr.m2365().m2367().m2461(FairBid.class, m1088("ᦈ摬\uabfd᪽柘\ue4e6ẉ㷏ﶝ峦\uabfd᪽柘\ue4e6ẉ㷏ﶝ峦\uabfd᪽柘\ue4e6\ue13e덭", 23 - Gravity.getAbsoluteGravity(0, 0)).intern());
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.bb
    /* JADX INFO: renamed from: ﻐ */
    final Map<String, bb.a> mo796() {
        int i = 2 % 2;
        HashMap map = new HashMap();
        map.put(m1089("\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000", false, new int[]{100, 27, 41, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.4
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1077();
            }
        });
        map.put(m1089("\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001", false, new int[]{127, 22, 130, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.11
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1091((Constants.AdType) list.get(0));
            }
        });
        map.put(m1089("\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001", false, new int[]{149, 30, 0, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.15
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1081((ImpressionData) list.get(0));
            }
        });
        map.put(m1089("\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000", false, new int[]{179, 29, 0, 22}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.16
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1104((ImpressionData) list.get(0));
            }
        });
        map.put(m1088("ᣦ胛茠\ud923睞咔싑\ue94b\ua95a\ue221\ufb08⛶鬾禑᩼⌟껱巓\uf810㾁ᯐ라굾樎菮抯ఔ唿ꌐ䫒阆嚐脎ⳓ傑㷴", 36 - (ViewConfiguration.getTapTimeout() >> 16)).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.20
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1100((ImpressionData) list.get(0));
            }
        });
        map.put(m1089((String) null, true, new int[]{208, 29, 59, 8}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.18
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1087((ImpressionData) list.get(0));
            }
        });
        map.put(m1089("\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000", true, new int[]{237, 26, 0, 8}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.19
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1095((ImpressionData) list.get(0));
            }
        });
        map.put(m1088("ᣦ胛茠\ud923睞咔싑\ue94b\ua95a\ue221\ufb08⛶鬾禑᩼⌟ᴠ粤⇫ㆇ旃שᡙ뾺婀\ue796", 26 - View.resolveSizeAndState(0, 0, 0)).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.17
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return Double.valueOf(bl.m1076((ImpressionData) list.get(0)));
            }
        });
        map.put(m1089("\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000", true, new int[]{263, 27, 0, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.21
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1073((ImpressionData) list.get(0));
            }
        });
        map.put(m1088("ᣦ胛茠\ud923睞咔싑\ue94b\ua95a\ue221\ufb08⛶鬾禑᩼⌟ⱬ鳝︵Ⲑ阆嚐ݼ䃴醥뛀皣쌚࿄ˋ妛\uabfb뢸\uf044", 34 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.3
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1075((ImpressionData) list.get(0));
            }
        });
        map.put(m1089("\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0001", true, new int[]{290, 27, 0, 15}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.2
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1079((ImpressionData) list.get(0));
            }
        });
        map.put(m1089("\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000", true, new int[]{317, 8, 85, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.1
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1086((FairBid.AdsConfig) list.get(0));
            }
        });
        map.put(m1088("ᣦ胛\udb63⽃銞彜싑\ue94b", 8 - TextUtils.indexOf("", "", 0, 0)).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.5
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1103((FairBid.AdsConfig) list.get(0));
            }
        });
        map.put(m1089("\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001", false, new int[]{325, 24, 0, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.9
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1106((MediationConfig) list.get(0));
            }
        });
        map.put(m1088("ᣦ胛ꦀ﹕躑⃕ⴲ䴙\udc2b\udfa8塮躙ﰠ볊ꡤ禡\ue120뷱", (-16777198) - Color.rgb(0, 0, 0)).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.10
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1082((Placement) list.get(0));
            }
        });
        map.put(m1089("\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000", false, new int[]{349, 16, 0, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.7
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1096((Placement) list.get(0));
            }
        });
        map.put(m1089("\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001", false, new int[]{365, 20, 0, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.8
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1099((MediationManager) list.get(0));
            }
        });
        map.put(m1089("\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000", false, new int[]{385, 13, 29, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.6
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return bl.m1092((String) list.get(0));
            }
        });
        map.put(m1089((String) null, true, new int[]{398, 23, 185, 18}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.13
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                bl.m1090((InterstitialListener) list.get(0));
                return null;
            }
        });
        map.put(m1088("醥뛀\udbee⁸秆憣ㅰᜭᯐ라璓\uedeb亗ࡃ疞뼃䅥⒃ᬂ㈸", 19 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.12
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                bl.m1102((RewardedListener) list.get(0));
                return null;
            }
        });
        map.put(m1089("\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001", false, new int[]{421, 13, 142, 0}).intern(), new bb.a() { // from class: com.ironsource.adqualitysdk.sdk.i.bl.14
            @Override // com.ironsource.adqualitysdk.sdk.i.bb.a
            /* JADX INFO: renamed from: ﾇ */
            public final Object mo827(List<Object> list, ch chVar) {
                return Boolean.valueOf(bl.m1074());
            }
        });
        int i2 = f849 + 17;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        return map;
    }

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    private static MediationManager m1067() {
        int i = 2 % 2;
        int i2 = f848 + 89;
        f849 = i2 % 128;
        if (i2 % 2 == 0) {
            MediationManager.Companion.getInstance();
            Object obj = null;
            super.hashCode();
            throw null;
        }
        MediationManager companion = MediationManager.Companion.getInstance();
        int i3 = f848 + 109;
        f849 = i3 % 128;
        int i4 = i3 % 2;
        return companion;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    private static PlacementType m1080(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f849 + 29;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        PlacementType placementType = impressionData.getPlacementType();
        int i4 = f848 + 67;
        f849 = i4 % 128;
        int i5 = i4 % 2;
        return placementType;
    }

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    private static String m1070(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f848 + 101;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        String renderingSdk = impressionData.getRenderingSdk();
        int i4 = f849 + 73;
        f848 = i4 % 128;
        int i5 = i4 % 2;
        return renderingSdk;
    }

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    private static String m1068(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f849 + 117;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        String renderingSdkVersion = impressionData.getRenderingSdkVersion();
        if (i3 != 0) {
            int i4 = 69 / 0;
        }
        int i5 = f849 + 119;
        f848 = i5 % 128;
        if (i5 % 2 == 0) {
            return renderingSdkVersion;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    private static String m1071(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f849 + 65;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        String demandSource = impressionData.getDemandSource();
        int i4 = f848 + 87;
        f849 = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 86 / 0;
        }
        return demandSource;
    }

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    private static String m1066(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f849 + 19;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        String variantId = impressionData.getVariantId();
        int i4 = f848 + 13;
        f849 = i4 % 128;
        int i5 = i4 % 2;
        return variantId;
    }

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    private static double m1069(ImpressionData impressionData) {
        double netPayout;
        int i = 2 % 2;
        int i2 = f849 + 55;
        f848 = i2 % 128;
        if (i2 % 2 != 0) {
            netPayout = impressionData.getNetPayout();
            int i3 = 22 / 0;
        } else {
            netPayout = impressionData.getNetPayout();
        }
        int i4 = f849 + 43;
        f848 = i4 % 128;
        if (i4 % 2 != 0) {
            int i5 = 33 / 0;
        }
        return netPayout;
    }

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    private static String m1063(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f848 + 109;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        String creativeId = impressionData.getCreativeId();
        if (i3 == 0) {
            int i4 = 26 / 0;
        }
        int i5 = f849 + 101;
        f848 = i5 % 128;
        if (i5 % 2 == 0) {
            return creativeId;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    private static String m1064(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f849 + 101;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        String advertiserDomain = impressionData.getAdvertiserDomain();
        int i4 = f849 + 35;
        f848 = i4 % 128;
        if (i4 % 2 == 0) {
            return advertiserDomain;
        }
        throw null;
    }

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    private static String m1065(ImpressionData impressionData) {
        int i = 2 % 2;
        int i2 = f849 + 91;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        String campaignId = impressionData.getCampaignId();
        int i4 = f848 + 61;
        f849 = i4 % 128;
        int i5 = i4 % 2;
        return campaignId;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static PlacementType m1084(Constants.AdType adType) {
        int i = 2 % 2;
        int i2 = f849 + 51;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        PlacementType placementType = adType.getPlacementType();
        int i4 = f849 + 83;
        f848 = i4 % 128;
        int i5 = i4 % 2;
        return placementType;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static String m1083(FairBid.AdsConfig adsConfig) {
        int i = 2 % 2;
        int i2 = f849 + 3;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        String str = adsConfig.appId;
        int i4 = f849 + 113;
        f848 = i4 % 128;
        if (i4 % 2 != 0) {
            int i5 = 84 / 0;
        }
        return str;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private static String m1094(FairBid.AdsConfig adsConfig) {
        int i = 2 % 2;
        int i2 = f849 + 33;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        String str = adsConfig.store;
        int i4 = f848 + 13;
        f849 = i4 % 128;
        if (i4 % 2 != 0) {
            return str;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private static List<AdapterConfiguration> m1101(MediationConfig mediationConfig) {
        int i = 2 % 2;
        int i2 = f848 + 19;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        List<AdapterConfiguration> adapterConfigurations = mediationConfig.getAdapterConfigurations();
        if (i3 == 0) {
            int i4 = 9 / 0;
        }
        return adapterConfigurations;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static Constants.AdType m1085(Placement placement) {
        int i = 2 % 2;
        int i2 = f849 + 39;
        f848 = i2 % 128;
        if (i2 % 2 == 0) {
            return placement.getAdType();
        }
        placement.getAdType();
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static String m1105(Placement placement) {
        int i = 2 % 2;
        int i2 = f848 + 23;
        f849 = i2 % 128;
        if (i2 % 2 == 0) {
            placement.getName();
            throw null;
        }
        String name = placement.getName();
        int i3 = f849 + 103;
        f848 = i3 % 128;
        int i4 = i3 % 2;
        return name;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private static PlacementsHandler m1093(MediationManager mediationManager) {
        int i = 2 % 2;
        int i2 = f848 + 99;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        PlacementsHandler placementsHandler = mediationManager.getPlacementsHandler();
        int i4 = f848 + 81;
        f849 = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 34 / 0;
        }
        return placementsHandler;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0090  */
    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.fyber.fairbid.internal.Constants.AdType m1078(java.lang.String r7) {
        /*
            r0 = 2
            int r1 = r0 % r0
            int r1 = r7.hashCode()
            r2 = 3
            r3 = 1
            r4 = 0
            switch(r1) {
                case -1372958932: goto L6b;
                case 433141802: goto L4a;
                case 543046670: goto L29;
                case 1951953708: goto Lf;
                default: goto Ld;
            }
        Ld:
            goto L90
        Lf:
            int r1 = android.view.ViewConfiguration.getPressedStateDuration()
            int r1 = r1 >> 16
            int r1 = r1 + 6
            java.lang.String r4 = "㜱〹敩ᤍ륈䌤"
            java.lang.String r1 = m1088(r4, r1)
            java.lang.String r1 = r1.intern()
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L90
            r4 = r3
            goto L91
        L29:
            int r1 = android.graphics.Color.red(r4)
            int r1 = 8 - r1
            java.lang.String r4 = "\uecb5砯얖痘緩톀듸\u1737"
            java.lang.String r1 = m1088(r4, r1)
            java.lang.String r1 = r1.intern()
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L90
            int r7 = com.json.adqualitysdk.sdk.i.bl.f848
            int r7 = r7 + 103
            int r1 = r7 % 128
            com.json.adqualitysdk.sdk.i.bl.f849 = r1
            int r7 = r7 % r0
            r4 = r2
            goto L91
        L4a:
            r1 = 434(0x1b2, float:6.08E-43)
            r5 = 7
            int[] r1 = new int[]{r1, r5, r4, r4}
            java.lang.String r5 = "\u0001\u0001\u0001\u0001\u0001\u0000\u0001"
            java.lang.String r1 = m1089(r5, r4, r1)
            java.lang.String r1 = r1.intern()
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L90
            int r7 = com.json.adqualitysdk.sdk.i.bl.f848
            int r7 = r7 + 21
            int r1 = r7 % 128
            com.json.adqualitysdk.sdk.i.bl.f849 = r1
            int r7 = r7 % r0
            goto L91
        L6b:
            r1 = 12
            r5 = 85
            r6 = 441(0x1b9, float:6.18E-43)
            int[] r1 = new int[]{r6, r1, r5, r4}
            java.lang.String r5 = "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001"
            java.lang.String r1 = m1089(r5, r4, r1)
            java.lang.String r1 = r1.intern()
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L90
            int r7 = com.json.adqualitysdk.sdk.i.bl.f849
            int r7 = r7 + 51
            int r1 = r7 % 128
            com.json.adqualitysdk.sdk.i.bl.f848 = r1
            int r7 = r7 % r0
            r4 = r0
            goto L91
        L90:
            r4 = -1
        L91:
            if (r4 == 0) goto Lb3
            if (r4 == r3) goto Lb0
            r7 = 0
            if (r4 == r0) goto L9e
            if (r4 == r2) goto L9b
            return r7
        L9b:
            com.fyber.fairbid.internal.Constants$AdType r7 = com.fyber.fairbid.internal.Constants.AdType.REWARDED
            return r7
        L9e:
            com.fyber.fairbid.internal.Constants$AdType r1 = com.fyber.fairbid.internal.Constants.AdType.INTERSTITIAL
            int r2 = com.json.adqualitysdk.sdk.i.bl.f848
            int r2 = r2 + 71
            int r3 = r2 % 128
            com.json.adqualitysdk.sdk.i.bl.f849 = r3
            int r2 = r2 % r0
            if (r2 == 0) goto Lac
            return r1
        Lac:
            super.hashCode()
            throw r7
        Lb0:
            com.fyber.fairbid.internal.Constants$AdType r7 = com.fyber.fairbid.internal.Constants.AdType.BANNER
            return r7
        Lb3:
            com.fyber.fairbid.internal.Constants$AdType r7 = com.fyber.fairbid.internal.Constants.AdType.UNKNOWN
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bl.m1078(java.lang.String):com.fyber.fairbid.internal.Constants$AdType");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private static void m1097(InterstitialListener interstitialListener) {
        int i = 2 % 2;
        int i2 = f849 + 5;
        f848 = i2 % 128;
        int i3 = i2 % 2;
        Interstitial.setInterstitialListener(interstitialListener);
        if (i3 != 0) {
            int i4 = 66 / 0;
        }
        int i5 = f849 + 47;
        f848 = i5 % 128;
        if (i5 % 2 != 0) {
            int i6 = 69 / 0;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private static void m1098(RewardedListener rewardedListener) {
        int i = 2 % 2;
        int i2 = f848 + 1;
        f849 = i2 % 128;
        int i3 = i2 % 2;
        Rewarded.setRewardedListener(rewardedListener);
        if (i3 == 0) {
            Object obj = null;
            super.hashCode();
            throw null;
        }
        int i4 = f848 + 29;
        f849 = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    private static boolean m1072() {
        boolean zAssertStarted;
        int i = 2 % 2;
        int i2 = f849 + 31;
        f848 = i2 % 128;
        if (i2 % 2 != 0) {
            zAssertStarted = FairBid.assertStarted();
            int i3 = 40 / 0;
        } else {
            zAssertStarted = FairBid.assertStarted();
        }
        int i4 = f849 + 125;
        f848 = i4 % 128;
        int i5 = i4 % 2;
        return zAssertStarted;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static String m1088(String str, int i) {
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
                    char c = cArr3[1];
                    char c2 = cArr3[0];
                    char c3 = (char) (c - (((c2 + i2) ^ ((c2 << 4) + f851)) ^ ((c2 >>> 5) + f854)));
                    cArr3[1] = c3;
                    cArr3[0] = (char) (c2 - (((c3 >>> 5) + f853) ^ ((c3 + i2) ^ ((c3 << 4) + f852))));
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

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static String m1089(String str, boolean z, int[] iArr) throws UnsupportedEncodingException {
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
            System.arraycopy(f850, i, cArr, 0, i2);
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
