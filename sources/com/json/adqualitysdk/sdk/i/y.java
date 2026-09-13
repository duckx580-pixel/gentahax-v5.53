package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y<T> extends u<WebView, T> {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private ac f3019;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private ip f3021;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private Map<T, ac> f3020 = new WeakHashMap();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private y<T>.a f3018 = new a();

    /* JADX INFO: renamed from: ﻛ */
    abstract q<WebView, T> mo362();

    /* JADX INFO: renamed from: ﻛ */
    abstract void mo364(T t, List<WebView> list);

    /* JADX INFO: renamed from: ﾇ */
    abstract ac mo366();

    /* JADX INFO: renamed from: ﾒ */
    abstract View mo367(T t);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.json.adqualitysdk.sdk.i.u, com.json.adqualitysdk.sdk.i.q
    /* JADX INFO: renamed from: ﻐ */
    public final /* synthetic */ void mo391(JSONObject jSONObject, Object obj, Object obj2) {
        super.mo399(jSONObject, (WebView) obj, obj2);
    }

    public y(ip ipVar) {
        this.f3021 = ipVar;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    final void m3069(ip ipVar) {
        this.f3021 = ipVar;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    final void m3070(y<T>.a aVar) {
        this.f3018 = aVar;
    }

    /* JADX INFO: renamed from: ｋ */
    void mo3049(T t, String str) {
        m3068(new JSONObject(), (Object) t, str);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    final void m3068(final JSONObject jSONObject, final T t, String str) {
        ac acVarMo366;
        boolean z = ((a) this.f3018).f3041 && !TextUtils.isEmpty(((a) this.f3018).f3042);
        if (((a) this.f3018).f3036) {
            acVarMo366 = this.f3020.get(t);
        } else {
            acVarMo366 = this.f3019;
        }
        if (acVarMo366 == null) {
            acVarMo366 = mo366();
            if (((a) this.f3018).f3036) {
                this.f3020.put(t, acVarMo366);
            } else {
                this.f3019 = acVarMo366;
            }
            acVarMo366.m3006(mo362());
        }
        ac acVar = acVarMo366;
        acVar.m392();
        acVar.m393(((a) this.f3018).f3042, ((a) this.f3018).f3040, z, ((a) this.f3018).f3037, ((a) this.f3018).f3039);
        acVar.m396(str);
        if (((a) this.f3018).f3035) {
            ArrayList arrayList = new ArrayList();
            mo364(t, arrayList);
            List<WebView> arrayList2 = new ArrayList<>();
            ip ipVar = this.f3021;
            if (ipVar != null) {
                arrayList2 = ipVar.mo1713(t);
            }
            final List<WebView> listM2736 = jp.m2736(arrayList, arrayList2);
            if (listM2736.isEmpty() || ((a) this.f3018).f3038) {
                View viewMo367 = mo367(t);
                if (viewMo367 != null) {
                    viewMo367.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.ironsource.adqualitysdk.sdk.i.y.3

                        /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
                        private static char f3026 = 788;

                        /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
                        private static int f3027 = 1;

                        /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
                        private static int f3028 = 0;

                        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
                        private static char f3029 = 63082;

                        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
                        private static char f3030 = 771;

                        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
                        private static char f3031 = 19028;

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // android.view.View.OnLayoutChangeListener
                        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                            int i9 = 2 % 2;
                            try {
                                ArrayList arrayList3 = new ArrayList();
                                y.this.mo364(t, arrayList3);
                                if (arrayList3.isEmpty()) {
                                    return;
                                }
                                int i10 = f3028 + 79;
                                f3027 = i10 % 128;
                                int i11 = i10 % 2;
                                View viewMo3672 = y.this.mo367(t);
                                if (viewMo3672 != null && !y.this.f3018.f3038) {
                                    int i12 = f3028 + 93;
                                    f3027 = i12 % 128;
                                    int i13 = i12 % 2;
                                    viewMo3672.removeOnLayoutChangeListener(this);
                                }
                                y.this.m3066(t, arrayList3);
                                y.this.mo1685(new JSONObject(), arrayList3.get(0), t);
                            } catch (Throwable th) {
                                jw.m2800(m3071("珡ţ馠挻ꜚ♹鉦\udfef矠폧农幁纈檿蒪纾䔍㐠킉컡", 19 - Color.blue(0)).intern(), m3071("☂ፌ⏸풪Ԇ〪㍁焮ꅶ魰^偺\udd4d―罋㡴岸\udbd2\u2fef靇퉒㨯徭䬜", View.MeasureSpec.getMode(0) + 23).intern(), th, false);
                            }
                        }

                        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
                        private static String m3071(String str2, int i) {
                            String str3;
                            Object charArray = str2;
                            if (str2 != null) {
                                charArray = str2.toCharArray();
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
                                        char c3 = (char) (c - (((c2 + i2) ^ ((c2 << 4) + f3031)) ^ ((c2 >>> 5) + f3026)));
                                        cArr3[1] = c3;
                                        cArr3[0] = (char) (c2 - (((c3 >>> 5) + f3030) ^ ((c3 + i2) ^ ((c3 << 4) + f3029))));
                                        i2 -= 40503;
                                    }
                                    cArr2[k.f2807] = cArr3[0];
                                    cArr2[k.f2807 + 1] = cArr3[1];
                                    k.f2807 += 2;
                                }
                                str3 = new String(cArr2, 0, i);
                            }
                            return str3;
                        }
                    });
                }
                if (listM2736.isEmpty()) {
                    super.mo391(jSONObject, (Object) null, t);
                    return;
                }
            }
            if (!((a) this.f3018).f3034) {
                m3066(t, listM2736);
                super.mo391(jSONObject, listM2736.get(0), t);
                return;
            } else {
                t.m2990().post(new Runnable() { // from class: com.ironsource.adqualitysdk.sdk.i.y.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.this.m3066(t, (List<WebView>) listM2736);
                        y.super.mo391(jSONObject, (WebView) listM2736.get(0), t);
                    }
                });
                return;
            }
        }
        super.mo391(jSONObject, (Object) null, t);
    }

    /* JADX INFO: renamed from: ﻐ */
    void mo3044(T t) {
        ac acVar;
        JSONObject jSONObject = new JSONObject();
        if (((a) this.f3018).f3036) {
            acVar = this.f3020.get(t);
        } else {
            acVar = this.f3019;
        }
        mo1678(jSONObject, acVar.m390(), t);
    }

    public class a {

        /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
        private boolean f3034;

        /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
        private boolean f3035;

        /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
        private boolean f3036;

        /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
        private boolean f3037;

        /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
        private boolean f3038;

        /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
        private boolean f3039;

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        private List<String> f3040;

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        private boolean f3041;

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        private String f3042;

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        protected List<String> f3043 = new ArrayList();

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        private boolean f3044;

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final y<T>.a m3091(String str) {
            this.f3042 = str;
            return this;
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final y<T>.a m3086(List<String> list) {
            this.f3040 = list;
            return this;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final y<T>.a m3088(boolean z) {
            this.f3044 = z;
            return this;
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final y<T>.a m3087(boolean z) {
            this.f3041 = z;
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final y<T>.a m3090(boolean z) {
            this.f3038 = z;
            return this;
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final y<T>.a m3085(boolean z) {
            this.f3035 = z;
            return this;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final y<T>.a m3092(boolean z) {
            this.f3037 = z;
            return this;
        }

        /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
        public final y<T>.a m3084(boolean z) {
            this.f3039 = z;
            return this;
        }

        /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
        public final y<T>.a m3082(boolean z) {
            this.f3036 = z;
            return this;
        }

        /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
        public final y<T>.a m3083(boolean z) {
            this.f3034 = z;
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final y<T>.a m3089(List<String> list) {
            if (list != null) {
                this.f3043 = list;
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public void m3066(T t, List<WebView> list) {
        ac acVar;
        ac acVar2;
        if (((a) this.f3018).f3036) {
            acVar = this.f3020.get(t);
        } else {
            acVar = this.f3019;
        }
        acVar.m394(list);
        if (((a) this.f3018).f3044) {
            if (((a) this.f3018).f3036) {
                acVar2 = this.f3020.get(t);
            } else {
                acVar2 = this.f3019;
            }
            acVar2.m396(Integer.toHexString(list.get(0).hashCode()));
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.u
    /* JADX INFO: renamed from: ｋ */
    protected final String mo395(T t) {
        ac acVar;
        if (((a) this.f3018).f3036) {
            acVar = this.f3020.get(t);
        } else {
            acVar = this.f3019;
        }
        return acVar.mo395(t);
    }
}
