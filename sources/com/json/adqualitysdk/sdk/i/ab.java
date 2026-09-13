package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.y;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ab extends y<View> implements View.OnLayoutChangeListener, jg {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    private static int f67 = 1;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private static int[] f68 = {-215326079, -1976733113, 2017579623, 1873253967, 503324275, -1041779390, 767592704, -1232476207, -273531672, 1237316139, -1496689953, 1826014459, -1529096542, 476366169, -1264851751, 63967044, -144413137, 605072113};

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private static int f69;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private WeakHashMap<View, Boolean> f70;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private Class f71;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private d f72;

    @Override // com.json.adqualitysdk.sdk.i.y
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    final /* synthetic */ void mo364(View view, List list) {
        int i = 2 % 2;
        int i2 = f67 + 49;
        f69 = i2 % 128;
        int i3 = i2 % 2;
        m360(view, (List<WebView>) list);
        if (i3 != 0) {
            Object obj = null;
            super.hashCode();
            throw null;
        }
        int i4 = f67 + 43;
        f69 = i4 % 128;
        if (i4 % 2 != 0) {
            int i5 = 79 / 0;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.y
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    final /* bridge */ /* synthetic */ View mo367(View view) {
        int i = 2 % 2;
        int i2 = f67 + 107;
        f69 = i2 % 128;
        View view2 = view;
        if (i2 % 2 != 0) {
            m358(view2);
            throw null;
        }
        View viewM358 = m358(view2);
        int i3 = f69 + 93;
        f67 = i3 % 128;
        int i4 = i3 % 2;
        return viewM358;
    }

    ab(JSONObject jSONObject) {
        super(null);
        this.f70 = new WeakHashMap<>();
        this.f72 = new d(this);
        m365(jSONObject);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m365(JSONObject jSONObject) {
        int i = 2 % 2;
        d dVar = new d(this, jSONObject);
        m3070((y.a) dVar);
        this.f72 = dVar;
        try {
            this.f71 = Class.forName(d.m370(dVar));
            int i2 = f69 + 43;
            f67 = i2 % 128;
            int i3 = i2 % 2;
            m356();
            if (i3 != 0) {
                return;
            }
            Object obj = null;
            super.hashCode();
            throw null;
        } catch (ClassNotFoundException e) {
            l.m2902(m355(new int[]{-1136211115, -647185925, -947787588, 1476781752, 906775549, 581275050, -667245023, 1580810984, -746672725, -2145599540}, (KeyEvent.getMaxKeyCode() >> 16) + 19).intern(), new StringBuilder().append(m355(new int[]{-2017199686, -2119213670, 135904772, -1014437805, -1297614487, -2079041287, -1948332703, -2053519708, 865931522, -1015219936, -1414390791, 1364126923, 2080149120, -1648347653, 178593511, 1064230949}, 31 - TextUtils.getCapsMode("", 0, 0)).intern()).append(d.m370(dVar)).append(m355(new int[]{-1862595027, -1090991796}, 1 - ImageFormat.getBitsPerPixel(0)).intern()).append(e.getLocalizedMessage()).toString());
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private void m356() {
        int i = 2 % 2;
        int i2 = f69 + 11;
        f67 = i2 % 128;
        int i3 = i2 % 2;
        jb.m2636().m2638(this);
        if (i3 == 0) {
            int i4 = 73 / 0;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m368() {
        int i = 2 % 2;
        int i2 = f67 + 113;
        f69 = i2 % 128;
        int i3 = i2 % 2;
        m3006((q) null);
        jb.m2636().m2639(this);
        int i4 = f69 + 61;
        f67 = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: avoid collision after fix types in other method and contains not printable characters */
    private static View m358(View view) {
        int i = 2 % 2;
        int i2 = f67 + 115;
        int i3 = i2 % 128;
        f69 = i3;
        int i4 = i2 % 2;
        int i5 = i3 + 119;
        f67 = i5 % 128;
        int i6 = i5 % 2;
        return view;
    }

    @Override // com.json.adqualitysdk.sdk.i.y
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    final q<WebView, View> mo362() {
        int i = 2 % 2;
        int i2 = f67;
        int i3 = i2 + 97;
        f69 = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
        int i4 = i2 + 35;
        f69 = i4 % 128;
        int i5 = i4 % 2;
        return this;
    }

    @Override // com.json.adqualitysdk.sdk.i.y
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    final ac mo366() {
        int i = 2 % 2;
        ad adVar = new ad();
        int i2 = f67 + 105;
        f69 = i2 % 128;
        if (i2 % 2 == 0) {
            return adVar;
        }
        Object obj = null;
        super.hashCode();
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.jg
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void mo361(View view) {
        int i = 2 % 2;
        View viewM359 = m359(view, this.f71);
        if (viewM359 != null) {
            m357(viewM359);
            int i2 = f67 + 55;
            f69 = i2 % 128;
            int i3 = i2 % 2;
            return;
        }
        if (!TextUtils.isEmpty(d.m376(this.f72))) {
            int i4 = f69 + 123;
            f67 = i4 % 128;
            int i5 = i4 % 2;
            View viewM354 = m354(view, d.m376(this.f72));
            if (viewM354 != null) {
                viewM354.addOnLayoutChangeListener(this);
            }
        }
        int i6 = f67 + 95;
        f69 = i6 % 128;
        if (i6 % 2 != 0) {
            int i7 = 19 / 0;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.jg
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void mo363(View view) {
        int i = 2 % 2;
        int i2 = f69 + 71;
        f67 = i2 % 128;
        int i3 = i2 % 2;
        View viewM359 = m359(view, this.f71);
        if (viewM359 != null && this.f70.remove(viewM359) != null) {
            mo3044(view);
        }
        int i4 = f69 + 77;
        f67 = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = 2 % 2;
        int i10 = f69 + 47;
        f67 = i10 % 128;
        int i11 = i10 % 2;
        try {
            View viewM359 = m359(view, this.f71);
            if (viewM359 != null) {
                int i12 = f69 + 1;
                f67 = i12 % 128;
                if (i12 % 2 == 0) {
                    m357(viewM359);
                    view.removeOnLayoutChangeListener(this);
                    int i13 = 92 / 0;
                } else {
                    m357(viewM359);
                    view.removeOnLayoutChangeListener(this);
                }
                int i14 = f69 + 95;
                f67 = i14 % 128;
                int i15 = i14 % 2;
            }
        } catch (Throwable th) {
            jw.m2800(m355(new int[]{-1136211115, -647185925, -947787588, 1476781752, 906775549, 581275050, -667245023, 1580810984, -746672725, -2145599540}, 18 - TextUtils.lastIndexOf("", '0', 0)).intern(), m355(new int[]{-2017199686, -2119213670, 1798535630, -815022943, -1999699791, 63274993, 436695982, 1570013190, -964954265, 1151385303, -572376139, -1682600193}, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 22).intern(), th, false);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private void m357(View view) {
        int i = 2 % 2;
        int i2 = f67 + 77;
        f69 = i2 % 128;
        if (i2 % 2 != 0) {
            this.f70.containsKey(view);
            throw null;
        }
        if (this.f70.containsKey(view)) {
            return;
        }
        int i3 = f67 + 15;
        f69 = i3 % 128;
        if (i3 % 2 == 0) {
            this.f70.put(view, Boolean.TRUE);
            mo3049(view, Integer.toHexString(view.hashCode()));
        } else {
            this.f70.put(view, Boolean.TRUE);
            mo3049(view, Integer.toHexString(view.hashCode()));
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private View m359(View view, Class cls) {
        int i = 2 % 2;
        int i2 = f69;
        int i3 = i2 + 13;
        f67 = i3 % 128;
        int i4 = i3 % 2;
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        int i5 = i2 + 19;
        f67 = i5 % 128;
        int i6 = i5 % 2;
        ViewGroup viewGroup = (ViewGroup) view;
        int i7 = i2 + 77;
        f67 = i7 % 128;
        int i8 = i7 % 2;
        for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
            View childAt = viewGroup.getChildAt(i9);
            if (!(!cls.isAssignableFrom(childAt.getClass()))) {
                return childAt;
            }
            View viewM359 = m359(childAt, cls);
            if (viewM359 != null) {
                return viewM359;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private View m354(View view, String str) {
        ViewGroup viewGroup;
        int i;
        int i2 = 2 % 2;
        int i3 = f69;
        int i4 = i3 + 17;
        f67 = i4 % 128;
        int i5 = i4 % 2;
        if (view instanceof ViewGroup) {
            int i6 = i3 + 47;
            f67 = i6 % 128;
            if (i6 % 2 == 0) {
                viewGroup = (ViewGroup) view;
                i = 1;
            } else {
                viewGroup = (ViewGroup) view;
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                View childAt = viewGroup.getChildAt(i);
                if (!childAt.getClass().getName().startsWith(str)) {
                    View viewM354 = m354(childAt, str);
                    if (viewM354 != null) {
                        return viewM354;
                    }
                    i++;
                } else {
                    int i7 = f69 + 41;
                    f67 = i7 % 128;
                    if (i7 % 2 != 0) {
                        return childAt;
                    }
                    throw null;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private void m360(View view, List<WebView> list) {
        int i = 2 % 2;
        int i2 = f67 + 113;
        f69 = i2 % 128;
        if (i2 % 2 != 0) {
            kd.m2888(view, WebView.class, d.m372(this.f72), false, true, null, this.f72.f3043, list);
        } else {
            kd.m2888(view, WebView.class, d.m372(this.f72), true, false, null, this.f72.f3043, list);
        }
        int i3 = f69 + 91;
        f67 = i3 % 128;
        int i4 = i3 % 2;
    }

    public class d extends y.a {

        /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
        private static int f74 = 1;

        /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
        private static int f76 = 0;

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        private static int f77 = 22;

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        private String f78;

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        private String f79;

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        private String f80;

        /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
        private static char[] f75 = {25528, 31767, 23755, 15529, 7501, 64978, 56719, 48749, 40509, 32432, 24399, 16179, 8171, 65289, 57512, 49259, 40972, 33239, 24957, 16655, 8896, 668, 57918, 50121, 41883, 33628, 25839, 17584, 9297, 28940, 28325, 20050, 11801, 4079, 61304, 53036, 44243, 35973, 27682, AbstractJsonLexerKt.UNICODE_ESC, 8131, 16133, 24391, 32421, 40466, 48739, 56760, 65010, 7519, 15501, 23797, 31747, 39836, 48073, 56117, 64366, 6852, 38909, 34891, 43149, 51421, 59696, 2444, 10714, 19001, 27202, 35531, AbstractJsonLexerKt.UNICODE_ESC, 8131, 16133, 24410, 32417, 40454, 48705, 56739, 64995, 7490, 15497, 23776, 31796, 34388, 39392, 47405, 55650, 63635, 6173, 14450, 23454, 31689};

        /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
        private static long f73 = -4052958863730466896L;

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        static /* synthetic */ String m370(d dVar) {
            int i = 2 % 2;
            int i2 = f76;
            int i3 = i2 + 39;
            f74 = i3 % 128;
            int i4 = i3 % 2;
            String str = dVar.f79;
            int i5 = i2 + 31;
            f74 = i5 % 128;
            if (i5 % 2 != 0) {
                return str;
            }
            Object obj = null;
            super.hashCode();
            throw null;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        static /* synthetic */ String m372(d dVar) {
            int i = 2 % 2;
            int i2 = f74 + 29;
            int i3 = i2 % 128;
            f76 = i3;
            int i4 = i2 % 2;
            String str = dVar.f80;
            int i5 = i3 + 53;
            f74 = i5 % 128;
            if (i5 % 2 == 0) {
                int i6 = 48 / 0;
            }
            return str;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        static /* synthetic */ String m376(d dVar) {
            int i = 2 % 2;
            int i2 = f74 + 115;
            int i3 = i2 % 128;
            f76 = i3;
            int i4 = i2 % 2;
            String str = dVar.f78;
            if (i4 != 0) {
                int i5 = 18 / 0;
            }
            int i6 = i3 + 73;
            f74 = i6 % 128;
            int i7 = i6 % 2;
            return str;
        }

        public d(ab abVar) {
        }

        public d(ab abVar, JSONObject jSONObject) {
            m369(jSONObject.optString(m373(true, ExpandableListView.getPackedPositionType(0L) + 123, 4 - (ViewConfiguration.getFadingEdgeLength() >> 16), 22 - (ViewConfiguration.getWindowTouchSlop() >> 8), "\ufff1�\u0000\u0012\u0013\u0004\u0001\u0000\r￫\u0000\b￼￩\u000e\u000e￼\u0007\uffde\u0012\u0000\u0004").intern()));
            m374(jSONObject.optString(m375((char) (25550 - View.MeasureSpec.makeMeasureSpec(0, 0)), Process.myPid() >> 22, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 13).intern()));
            m371(jSONObject.optString(m375((char) (65401 - TextUtils.getOffsetBefore("", 0)), 14 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), 16 - View.resolveSize(0, 0)).intern()));
            m3091(jSONObject.optString(m375((char) (Gravity.getAbsoluteGravity(0, 0) + 29030), ImageFormat.getBitsPerPixel(0) + 30, KeyEvent.normalizeMetaState(0) + 10).intern()));
            m3088(false);
            m3085(!TextUtils.isEmpty(jSONObject.optString(m375((char) (29029 - TextUtils.lastIndexOf("", '0', 0, 0)), 29 - View.resolveSize(0, 0), 9 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern())) || jSONObject.optBoolean(m373(false, 124 - TextUtils.indexOf("", ""), (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 8, 16 - Gravity.getAbsoluteGravity(0, 0), "\uffff\u0011\uffdd\u0006\u0003\uffff\b\u000e\u000f\r\uffff\ufff1\uffff￼\ufff0\u0003").intern()) || jSONObject.optBoolean(m375((char) ((-1) - ((byte) KeyEvent.getModifierMetaStateMask())), 39 - KeyEvent.normalizeMetaState(0), 18 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern()));
            m3092(jSONObject.optBoolean(m373(false, 124 - (Process.myPid() >> 22), 8 - TextUtils.indexOf("", ""), Color.green(0) + 16, "\uffff\u0011\uffdd\u0006\u0003\uffff\b\u000e\u000f\r\uffff\ufff1\uffff￼\ufff0\u0003").intern()));
            m3084(jSONObject.optBoolean(m375((char) ((ViewConfiguration.getLongPressTimeout() >> 16) + 38792), 57 - View.getDefaultSize(0, 0), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 10).intern()));
            m3086(TextUtils.isEmpty(jSONObject.optString(m373(true, 127 - TextUtils.indexOf((CharSequence) "", '0'), 6 - ExpandableListView.getPackedPositionGroup(0L), ((byte) KeyEvent.getModifierMetaStateMask()) + 10, "\ufffb\b￦\u0002\b\u000b\u000e\uffff￼").intern())) ? null : Arrays.asList(jSONObject.optString(m373(true, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 128, View.getDefaultSize(0, 0) + 6, (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 9, "\ufffb\b￦\u0002\b\u000b\u000e\uffff￼").intern()).split(m373(true, 66 - TextUtils.getOffsetAfter("", 0), -TextUtils.lastIndexOf("", '0', 0), TextUtils.getOffsetAfter("", 0) + 1, "\u0000").intern())));
            m3087(jSONObject.optBoolean(m375((char) ((Process.getThreadPriority(0) + 20) >> 6), (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 67, (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 13).intern(), true));
            m3090(false);
            m3082(jSONObject.optBoolean(m373(true, 129 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), ((byte) KeyEvent.getModifierMetaStateMask()) + 8, TextUtils.indexOf("", "", 0, 0) + 17, "\u0002\u0006\uffff\n\u0002\u000b\u0003\t\ufffb\ufff9\u0004\ufff7\n\t\u0004\uffdf\ufffb").intern()));
            m3083(jSONObject.optBoolean(m375((char) (34365 - (ViewConfiguration.getFadingEdgeLength() >> 16)), 81 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), KeyEvent.getDeadChar(0, 0) + 9).intern()));
            m3089(jx.m2815(jSONObject.optJSONArray(m373(true, 127 - Gravity.getAbsoluteGravity(0, 0), 11 - Process.getGidForName(""), ((Process.getThreadPriority(0) + 20) >> 6) + 13, "\t\u0006\u0005\ufffe￠\u0006￫\n\u000e￼\u0000\r￼").intern())));
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        private d m369(String str) {
            int i = 2 % 2;
            int i2 = f74 + 107;
            int i3 = i2 % 128;
            f76 = i3;
            int i4 = i2 % 2;
            this.f80 = str;
            int i5 = i3 + 95;
            f74 = i5 % 128;
            int i6 = i5 % 2;
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        private d m374(String str) {
            int i = 2 % 2;
            int i2 = f74 + 11;
            int i3 = i2 % 128;
            f76 = i3;
            int i4 = i2 % 2;
            this.f79 = str;
            int i5 = i3 + 57;
            f74 = i5 % 128;
            if (i5 % 2 == 0) {
                int i6 = 38 / 0;
            }
            return this;
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        private d m371(String str) {
            int i = 2 % 2;
            int i2 = f76;
            int i3 = i2 + 119;
            f74 = i3 % 128;
            int i4 = i3 % 2;
            this.f78 = str;
            int i5 = i2 + 119;
            f74 = i5 % 128;
            int i6 = i5 % 2;
            return this;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        private static String m373(boolean z, int i, int i2, int i3, String str) {
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
                    cArr2[i4] = (char) (cArr2[i4] - f77);
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

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        private static String m375(char c, int i, int i2) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.d.f1577) {
                char[] cArr = new char[i2];
                com.json.adqualitysdk.sdk.i.d.f1576 = 0;
                while (com.json.adqualitysdk.sdk.i.d.f1576 < i2) {
                    cArr[com.json.adqualitysdk.sdk.i.d.f1576] = (char) ((((long) f75[com.json.adqualitysdk.sdk.i.d.f1576 + i]) ^ (((long) com.json.adqualitysdk.sdk.i.d.f1576) * f73)) ^ ((long) c));
                    com.json.adqualitysdk.sdk.i.d.f1576++;
                }
                str = new String(cArr);
            }
            return str;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static String m355(int[] iArr, int i) {
        String str;
        synchronized (e.f1836) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) f68.clone();
            e.f1835 = 0;
            while (e.f1835 < iArr.length) {
                cArr[0] = (char) (iArr[e.f1835] >> 16);
                cArr[1] = (char) iArr[e.f1835];
                cArr[2] = (char) (iArr[e.f1835 + 1] >> 16);
                cArr[3] = (char) iArr[e.f1835 + 1];
                e.f1834 = (cArr[0] << 16) + cArr[1];
                e.f1837 = (cArr[2] << 16) + cArr[3];
                e.m2164(iArr2);
                for (int i2 = 0; i2 < 16; i2++) {
                    int i3 = e.f1834 ^ iArr2[i2];
                    e.f1834 = i3;
                    e.f1837 = e.m2163(i3) ^ e.f1837;
                    int i4 = e.f1834;
                    e.f1834 = e.f1837;
                    e.f1837 = i4;
                }
                int i5 = e.f1834;
                e.f1834 = e.f1837;
                e.f1837 = i5;
                e.f1837 = i5 ^ iArr2[16];
                e.f1834 ^= iArr2[17];
                int i6 = e.f1834;
                int i7 = e.f1837;
                cArr[0] = (char) (e.f1834 >>> 16);
                cArr[1] = (char) e.f1834;
                cArr[2] = (char) (e.f1837 >>> 16);
                cArr[3] = (char) e.f1837;
                e.m2164(iArr2);
                cArr2[e.f1835 << 1] = cArr[0];
                cArr2[(e.f1835 << 1) + 1] = cArr[1];
                cArr2[(e.f1835 << 1) + 2] = cArr[2];
                cArr2[(e.f1835 << 1) + 3] = cArr[3];
                e.f1835 += 2;
            }
            str = new String(cArr2, 0, i);
        }
        return str;
    }
}
