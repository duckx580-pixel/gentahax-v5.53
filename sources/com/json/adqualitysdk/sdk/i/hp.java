package com.json.adqualitysdk.sdk.i;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class hp {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private int f2272;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private List<List<Field>> f2273;

    public hp() {
        ArrayList arrayList = new ArrayList();
        this.f2273 = arrayList;
        int i = (-1) + 1;
        this.f2272 = i;
        arrayList.add(i, new ArrayList());
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    final void m2362(Field field) {
        this.f2273.get(this.f2272).add(field);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    final void m2359(Field field) {
        this.f2273.get(this.f2272).remove(field);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    final void m2360() {
        int i = this.f2272 + 1;
        this.f2272 = i;
        this.f2273.add(i, new ArrayList());
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    final void m2361() {
        this.f2273.remove(this.f2272);
        this.f2272--;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    final List<List<Field>> m2363() {
        return this.f2273;
    }
}
