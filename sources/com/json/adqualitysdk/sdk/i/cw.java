package com.json.adqualitysdk.sdk.i;

import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public final class cw extends da {
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static int m1870(List<Object> list) {
        return kb.m2858((String) m1887(list, 0, String.class), (String) m1887(list, 1, String.class));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static List<String> m1872(List<Object> list) {
        return hr.m2365().m2367().m2463(m1887(list, 0, Object.class), (List<String>) m1887(list, 1, List.class), ((Integer) m1887(list, 2, Integer.class)).intValue());
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static List<String> m1871(List<Object> list) {
        String str = (String) m1887(list, 0, String.class);
        if (list.get(1) instanceof String) {
            return kb.m2852(str, (String) m1887(list, 1, String.class));
        }
        return kb.m2856(str, new JSONArray((Collection) m1887(list, 1, List.class)));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1873(List<Object> list) {
        String str = (String) m1887(list, 0, String.class);
        boolean zBooleanValue = list.size() > 2 ? ((Boolean) m1887(list, 2, Boolean.class)).booleanValue() : true;
        if (list.get(1) instanceof String) {
            return kb.m2860(str, (String) m1887(list, 1, String.class), zBooleanValue);
        }
        return kb.m2855(str, new JSONArray((Collection) m1887(list, 1, List.class)), zBooleanValue);
    }
}
