package com.json.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ck {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private a f1396;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private dp f1397;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean m1724(hs hsVar, dq dqVar, ci ciVar, List<Object> list) {
        a aVar = this.f1396;
        if (aVar != null && !aVar.mo1725(hsVar)) {
            return false;
        }
        if (this.f1397 == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, hsVar);
        return this.f1397.m2112(dqVar, ciVar, arrayList).m2147();
    }

    public static class e {

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        private ck f1399 = new ck();

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final e m1729(Class cls) {
            this.f1399.f1396 = new b(cls);
            return this;
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final e m1727(Class cls) {
            this.f1399.f1396 = new d(cls);
            return this;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final e m1728(Class cls) {
            this.f1399.f1396 = new c(cls);
            return this;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final e m1730(dp dpVar) {
            this.f1399.f1397 = dpVar;
            return this;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final ck m1731() {
            return this.f1399;
        }
    }

    static abstract class a {

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        private Class f1398;

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        abstract boolean mo1725(hs hsVar);

        a(Class cls) {
            this.f1398 = cls;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        final Class m1726() {
            return this.f1398;
        }
    }

    static class b extends a {
        b(Class cls) {
            super(cls);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ck.a
        /* JADX INFO: renamed from: ﾇ */
        public final boolean mo1725(hs hsVar) {
            return m1726().isAssignableFrom(hsVar.mo2369().getType());
        }
    }

    static class d extends a {
        d(Class cls) {
            super(cls);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ck.a
        /* JADX INFO: renamed from: ﾇ */
        public final boolean mo1725(hs hsVar) {
            return m1726().equals(hsVar.mo2369().getType());
        }
    }

    static class c extends a {
        c(Class cls) {
            super(cls);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ck.a
        /* JADX INFO: renamed from: ﾇ */
        final boolean mo1725(hs hsVar) {
            return m1726().isInstance(hsVar.mo2370());
        }
    }
}
