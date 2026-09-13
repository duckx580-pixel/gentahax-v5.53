package com.json.adqualitysdk.sdk.i;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class hm {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private hm f2248;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private dh f2249;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static List<Method> m2310(Class cls, hn hnVar) {
        ArrayList arrayList = new ArrayList();
        m2312(cls, hnVar, arrayList);
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static void m2312(Class cls, hn hnVar, List<Method> list) {
        e eVar = new e((byte) 0);
        eVar.m2320(hnVar);
        m2308(cls, eVar, list);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static void m2308(Class cls, e eVar, List<Method> list) {
        List<Method> listAsList;
        hn hnVarM2319 = eVar.m2319();
        if (hnVarM2319 != null && hnVarM2319.m2269()) {
            listAsList = m2311(cls, hnVarM2319.m2269(), hnVarM2319.m2272());
        } else {
            listAsList = Arrays.asList(cls.getDeclaredMethods());
        }
        for (Method method : listAsList) {
            if (eVar.m2321(method)) {
                list.add(method);
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static List<Method> m2311(Class cls, boolean z, int i) {
        Method[] methodArrM2850 = new Method[0];
        if (cls != null) {
            methodArrM2850 = ka.m2850(cls.getDeclaredMethods(), cls.getMethods());
            if (!z) {
                return Arrays.asList(methodArrM2850);
            }
            Class superclass = cls.getSuperclass();
            for (int i2 = 0; superclass != null && i2 != i; i2++) {
                methodArrM2850 = ka.m2850(ka.m2850(methodArrM2850, superclass.getDeclaredMethods()), superclass.getMethods());
                superclass = superclass.getSuperclass();
            }
        }
        return Arrays.asList(methodArrM2850);
    }

    static class e {

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        private int f2250;

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        private hn f2251;

        private e() {
        }

        /* synthetic */ e(byte b) {
            this();
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void m2320(hn hnVar) {
            this.f2251 = hnVar;
            this.f2250 = hnVar.m2331();
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final hn m2319() {
            return this.f2251;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final boolean m2321(Method method) {
            boolean zIsAssignableFrom;
            if (this.f2251 == null || (method.getModifiers() & this.f2251.m2273()) != this.f2251.m2273() || (method.getModifiers() & this.f2251.m2270()) != 0 || this.f2251.m2332().contains(method.getReturnType())) {
                return false;
            }
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (this.f2251.m2328() != -1 && this.f2251.m2328() != parameterTypes.length) {
                return false;
            }
            List<Class> listM2329 = this.f2251.m2329();
            if (listM2329 != null) {
                if (listM2329.size() != parameterTypes.length) {
                    return false;
                }
                for (int i = 0; i < listM2329.size(); i++) {
                    if (!listM2329.get(i).equals(parameterTypes[i])) {
                        return false;
                    }
                }
            }
            if (this.f2251.m2333() == null) {
                zIsAssignableFrom = true;
            } else if (this.f2251.m2330()) {
                zIsAssignableFrom = method.getReturnType().equals(this.f2251.m2333());
            } else {
                zIsAssignableFrom = this.f2251.m2333().isAssignableFrom(method.getReturnType());
            }
            if (zIsAssignableFrom) {
                int i2 = this.f2250;
                if (i2 == 0) {
                    return true;
                }
                this.f2250 = i2 - 1;
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Method m2309(Class cls, hn hnVar) {
        ArrayList arrayList = new ArrayList();
        m2312(cls, hnVar, arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return (Method) arrayList.get(0);
    }

    public hm() {
    }

    public hm(dh dhVar, hm hmVar) {
        this.f2249 = dhVar;
        this.f2248 = hmVar;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m2318() {
        return this.f2249.m2006();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final hm m2317() {
        return this.f2248;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final List<String> m2315() {
        ArrayList arrayList = new ArrayList(this.f2249.m2010());
        hm hmVar = this.f2248;
        if (hmVar != null) {
            arrayList.addAll(hmVar.m2315());
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final List<dg> m2313() {
        ArrayList arrayList = new ArrayList(this.f2249.m2004());
        hm hmVar = this.f2248;
        if (hmVar != null) {
            arrayList.addAll(hmVar.m2313());
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final dk m2316(String str) {
        dk dkVar;
        hm hmVar = this;
        do {
            dkVar = hmVar.f2249.m2005().get(str);
            if (dkVar != null) {
                break;
            }
            hmVar = hmVar.f2248;
        } while (hmVar != null);
        return dkVar;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final dp m2314(String str) {
        dp dpVar;
        hm hmVar = this;
        do {
            dpVar = hmVar.f2249.m2007().get(str);
            if (dpVar != null) {
                break;
            }
            hmVar = hmVar.f2248;
        } while (hmVar != null);
        return dpVar;
    }
}
