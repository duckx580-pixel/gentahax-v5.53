package com.json.adqualitysdk.sdk.i;

import com.json.adqualitysdk.sdk.i.hn;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class cz extends da {
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Method m1884(List<Object> list) {
        hn hnVar = (hn) m1887(list, 1, hn.class);
        if (list.get(0) instanceof Class) {
            return hm.m2309((Class) m1887(list, 0, Class.class), hnVar);
        }
        return hm.m2309(m1887(list, 0, Object.class).getClass(), hnVar);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static List<Method> m1885(List<Object> list) {
        hn hnVar = (hn) m1887(list, 1, hn.class);
        if (list.get(0) instanceof Class) {
            return hm.m2310((Class) m1887(list, 0, Class.class), hnVar);
        }
        return hm.m2310(m1887(list, 0, Object.class).getClass(), hnVar);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static hn.e m1886() {
        return new hn.e();
    }
}
