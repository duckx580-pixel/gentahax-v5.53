package com.json.adqualitysdk.sdk.i;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes2.dex */
public abstract class en extends ee {
    /* JADX INFO: renamed from: ｋ */
    abstract boolean mo2183(Object obj, Object obj2);

    /* JADX INFO: renamed from: ﾇ */
    abstract boolean mo2184(String str, String str2);

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    abstract boolean mo2188(int i);

    public en(dz dzVar, dz dzVar2, dm dmVar) {
        super(dzVar, dzVar2, dmVar);
    }

    @Override // com.json.adqualitysdk.sdk.i.dz
    /* JADX INFO: renamed from: ﻛ */
    public final du mo2121(dq dqVar, ci ciVar) {
        Object objM2148 = m2175().m2162(dqVar, ciVar).m2148();
        Object objM21482 = m2176().m2162(dqVar, ciVar).m2148();
        try {
            return new du(Boolean.valueOf(mo2188(new BigDecimal(objM2148.toString()).compareTo(new BigDecimal(objM21482.toString())))));
        } catch (Exception unused) {
            if ((objM2148 instanceof String) && (objM21482 instanceof String)) {
                return new du(Boolean.valueOf(mo2184((String) objM2148, (String) objM21482)));
            }
            return new du(Boolean.valueOf(mo2183(objM2148, objM21482)));
        }
    }
}
