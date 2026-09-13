package com.json.adqualitysdk.sdk.i;

import android.view.View;
import com.json.adqualitysdk.sdk.i.jd.AnonymousClass1;
import com.json.adqualitysdk.sdk.i.jd.AnonymousClass2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class jb {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    private static jb f2608;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private List<View> f2610 = new ArrayList();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private List<jg> f2611 = new ArrayList();

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private List<View> f2609 = new ArrayList();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private im f2612 = new im() { // from class: com.ironsource.adqualitysdk.sdk.i.jb.1
        @Override // com.json.adqualitysdk.sdk.i.im
        /* JADX INFO: renamed from: ﾒ */
        public final void mo1861() {
            List<View> listM2754 = jr.m2754();
            jb.this.f2609.clear();
            jb.this.f2609.addAll(jb.this.f2610);
            for (int i = 0; i < listM2754.size(); i++) {
                View view = listM2754.get(i);
                jb.this.f2609.remove(view);
                if (!jb.this.f2610.contains(view)) {
                    jb.this.f2610.add(view);
                    jb.this.m2632(view);
                }
            }
            for (int i2 = 0; i2 < jb.this.f2609.size(); i2++) {
                View view2 = (View) jb.this.f2609.get(i2);
                jb.this.f2610.remove(view2);
                jb.this.m2635(view2);
            }
            jb.this.f2609.clear();
        }
    };

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized jb m2636() {
        if (f2608 == null) {
            f2608 = new jb();
        }
        return f2608;
    }

    private jb() {
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m2638(final jg jgVar) {
        synchronized (this) {
            this.f2611.add(jgVar);
        }
        t.m2997(jd.m2669().new AnonymousClass1(this.f2612));
        t.m2999(new io() { // from class: com.ironsource.adqualitysdk.sdk.i.jb.5
            @Override // com.json.adqualitysdk.sdk.i.io
            /* JADX INFO: renamed from: ｋ */
            public final void mo418() {
                Iterator it = jb.this.f2610.iterator();
                while (it.hasNext()) {
                    jgVar.mo361((View) it.next());
                }
            }
        });
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m2639(jg jgVar) {
        synchronized (this) {
            this.f2611.remove(jgVar);
            if (this.f2611.size() == 0) {
                t.m2997(jd.m2669().new AnonymousClass2(this.f2612));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public synchronized void m2632(View view) {
        Iterator<jg> it = this.f2611.iterator();
        while (it.hasNext()) {
            it.next().mo361(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public synchronized void m2635(View view) {
        Iterator<jg> it = this.f2611.iterator();
        while (it.hasNext()) {
            it.next().mo363(view);
        }
    }
}
