package com.json.adqualitysdk.sdk.i;

import com.json.adqualitysdk.sdk.i.hj;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ho {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private a f2266;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private hj f2267;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private List<Field> f2268;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Field m2355(Class cls, final String str) {
        a aVar = new a(this) { // from class: com.ironsource.adqualitysdk.sdk.i.ho.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this);
            }

            @Override // com.ironsource.adqualitysdk.sdk.i.ho.a
            /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
            public final boolean mo2356(Field field) {
                return field.getType().getName().toLowerCase().startsWith(str.toLowerCase());
            }
        };
        synchronized (ho.class) {
            if (this.f2268 == null) {
                this.f2268 = new ArrayList();
            }
            this.f2268.clear();
            m2349(cls, aVar, this.f2268);
            if (this.f2268.isEmpty()) {
                return null;
            }
            return this.f2268.get(0);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final <T> Field m2352(Class cls, Class<T> cls2) {
        Field fieldM2354;
        synchronized (jp.class) {
            if (this.f2267 == null) {
                this.f2267 = new hj();
            }
            this.f2267.m2286(cls2);
            fieldM2354 = m2354(cls, this.f2267);
        }
        return fieldM2354;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Field m2354(Class cls, hj hjVar) {
        synchronized (jp.class) {
            if (this.f2268 == null) {
                this.f2268 = new ArrayList();
            }
            this.f2268.clear();
            m2348(cls, hjVar, this.f2268);
            if (this.f2268.isEmpty()) {
                return null;
            }
            return this.f2268.get(0);
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final List<Field> m2353(Class cls, hj hjVar) {
        ArrayList arrayList = new ArrayList();
        m2348(cls, hjVar, arrayList);
        return arrayList;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private void m2348(Class cls, hj hjVar, List<Field> list) {
        synchronized (ho.class) {
            if (this.f2266 == null) {
                this.f2266 = new a(this);
            }
            this.f2266.m2358(hjVar);
            m2349(cls, this.f2266, list);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static hj.b m2347() {
        return new hj.b();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Field[] m2350(Class cls, boolean z, int i, List<String> list) {
        while (cls != null && !ka.m2845(cls, list)) {
            cls = cls.getSuperclass();
        }
        Field[] fieldArrM2849 = new Field[0];
        if (cls != null) {
            Field[] declaredFields = new Field[0];
            Field[] fields = new Field[0];
            try {
                declaredFields = cls.getDeclaredFields();
            } catch (Error unused) {
            }
            try {
                fields = cls.getFields();
            } catch (Error unused2) {
            }
            fieldArrM2849 = ka.m2849(declaredFields, fields);
            if (!z) {
                return fieldArrM2849;
            }
            Class superclass = cls.getSuperclass();
            for (int i2 = 0; superclass != null && i2 != i; i2++) {
                try {
                    fieldArrM2849 = ka.m2849(fieldArrM2849, superclass.getDeclaredFields());
                } catch (Error unused3) {
                }
                try {
                    fieldArrM2849 = ka.m2849(fieldArrM2849, superclass.getFields());
                } catch (Error unused4) {
                }
                superclass = superclass.getSuperclass();
            }
        }
        return fieldArrM2849;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private void m2349(Class cls, a aVar, List<Field> list) {
        for (Field field : m2351(cls, aVar.m2357())) {
            if (aVar.mo2356(field)) {
                field.setAccessible(true);
                list.add(field);
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static Field[] m2351(Class cls, hj hjVar) {
        if (hjVar != null && hjVar.m2269()) {
            return m2350(cls, hjVar.m2269(), hjVar.m2272(), null);
        }
        try {
            return cls.getDeclaredFields();
        } catch (Error unused) {
            return cls.getFields();
        }
    }

    class a {

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        private int f2270;

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        private hj f2271;

        private a() {
        }

        /* synthetic */ a(ho hoVar) {
            this();
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void m2358(hj hjVar) {
            this.f2271 = hjVar;
            this.f2270 = hjVar.m2282();
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final hj m2357() {
            return this.f2271;
        }

        /* JADX INFO: renamed from: ｋ */
        public boolean mo2356(Field field) {
            boolean zIsAssignableFrom;
            if (this.f2271 == null || (field.getModifiers() & this.f2271.m2273()) != this.f2271.m2273() || (field.getModifiers() & this.f2271.m2270()) != 0 || this.f2271.m2284().contains(field.getType())) {
                return false;
            }
            if (this.f2271.m2283()) {
                zIsAssignableFrom = field.getType().equals(this.f2271.m2285());
            } else {
                zIsAssignableFrom = this.f2271.m2285().isAssignableFrom(field.getType());
            }
            if (zIsAssignableFrom) {
                int i = this.f2270;
                if (i == 0) {
                    return true;
                }
                this.f2270 = i - 1;
            }
            return false;
        }
    }
}
