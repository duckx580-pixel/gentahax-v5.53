package com.json.adqualitysdk.sdk.i;

import com.json.adqualitysdk.sdk.i.hj;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class cs extends da {
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Field m1813(List<Object> list) {
        return hr.m2365().m2368().m2354((Class) m1887(list, 0, Class.class), (hj) m1887(list, 1, hj.class));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static List<Field> m1814(List<Object> list) {
        if (list.get(0) instanceof Class) {
            if (list.size() > 1) {
                return hr.m2365().m2368().m2353((Class) m1887(list, 0, Class.class), (hj) m1887(list, 1, hj.class));
            }
        } else {
            Object obj = m1887(list, 0, Object.class);
            boolean zBooleanValue = list.size() > 1 ? ((Boolean) m1887(list, 1, Boolean.class)).booleanValue() : false;
            hr.m2365().m2368();
            Field[] fieldArrM2350 = ho.m2350(obj.getClass(), zBooleanValue, -1, null);
            if (fieldArrM2350 != null) {
                return Arrays.asList(fieldArrM2350);
            }
        }
        return new ArrayList();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Field m1812(List<Object> list) {
        if (list.get(0) instanceof Class) {
            Class cls = (Class) m1887(list, 0, Class.class);
            if (list.get(1) instanceof Class) {
                return hr.m2365().m2368().m2352(cls, (Class) m1887(list, 1, Class.class));
            }
            return hr.m2365().m2368().m2354(cls, (hj) m1887(list, 1, hj.class));
        }
        Object obj = m1887(list, 0, Object.class);
        return hr.m2365().m2368().m2352(obj.getClass(), (Class) m1887(list, 1, Class.class));
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Field m1811(List<Object> list) {
        return hr.m2365().m2368().m2355((Class) m1887(list, 0, Class.class), (String) m1887(list, 1, String.class));
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static hj.b m1810() {
        hr.m2365().m2368();
        return ho.m2347();
    }
}
