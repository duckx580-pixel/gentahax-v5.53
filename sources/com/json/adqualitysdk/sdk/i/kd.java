package com.json.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class kd {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static Rect f2839 = new Rect();

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static View m2890(Activity activity) {
        return activity.findViewById(R.id.content);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static <E extends View> E m2887(Activity activity, Class<E> cls, int i, List<String> list, String str) {
        ArrayList arrayList = new ArrayList();
        m2898(activity, cls, i, str, true, false, null, list, arrayList);
        if (arrayList.size() > 0) {
            return (E) arrayList.get(0);
        }
        return null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static <E extends View> void m2891(Activity activity, Class<E> cls, boolean z, List<Integer> list, List<String> list2, List<E> list3) {
        m2898(activity, cls, -1, null, false, z, list, list2, list3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static <E extends View> void m2898(Activity activity, Class<E> cls, int i, String str, boolean z, boolean z2, List<Integer> list, List<String> list2, List<E> list3) {
        if (i != -1) {
            View viewFindViewById = activity.findViewById(i);
            if (cls.isInstance(viewFindViewById)) {
                list3.add(viewFindViewById);
                if (z) {
                    return;
                }
            }
            m2888(viewFindViewById, cls, str, z, z2, list, list2, list3);
            if (list3.size() > 0 && z) {
                return;
            }
        }
        View viewFindViewById2 = activity.findViewById(R.id.content);
        if (viewFindViewById2 != null) {
            m2892(viewFindViewById2, cls, str, z, z2, list, list2, list3);
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static <E extends View> void m2892(View view, Class<E> cls, String str, boolean z, boolean z2, List<Integer> list, List<String> list2, List<E> list3) {
        while (view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            view = (View) view.getParent();
        }
        m2888(view, cls, str, z, z2, list, list2, list3);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static <E extends View> E m2897(View view, Class<E> cls, boolean z) {
        ArrayList arrayList = new ArrayList();
        m2893(view, cls, true, z, null, null, arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return (E) arrayList.get(0);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static <E extends View> void m2893(View view, Class<E> cls, boolean z, boolean z2, List<Integer> list, List<String> list2, List<E> list3) {
        m2888(view, cls, null, z, z2, list, list2, list3);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static <E extends View> void m2888(View view, Class<E> cls, String str, boolean z, boolean z2, List<Integer> list, List<String> list2, List<E> list3) {
        List list4 = list3;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            while (i < viewGroup.getChildCount()) {
                View childAt = viewGroup.getChildAt(i);
                if (m2896(childAt, cls, str, list, list2)) {
                    list4.add(childAt);
                    if (z) {
                        return;
                    }
                    if (z2) {
                        m2888(childAt, cls, str, z, z2, list, list2, list4);
                    }
                } else {
                    m2888(childAt, cls, str, z, z2, list, list2, list4);
                    if (list3 != null && list3.size() > 0 && z) {
                        return;
                    }
                }
                i++;
                list4 = list3;
            }
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static <E extends View> boolean m2896(View view, Class<E> cls, String str, List<Integer> list, List<String> list2) {
        if (!cls.isInstance(view)) {
            return false;
        }
        if ((m2895(list) || list.contains(Integer.valueOf(view.getId()))) && !m2900(list2, view)) {
            return str == null || view.getClass().getName().startsWith(str);
        }
        return false;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private static boolean m2895(List list) {
        return list == null || list.isEmpty();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private static boolean m2900(List<String> list, View view) {
        return list != null && list.contains(view.getClass().getName());
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static View m2894(View view) {
        while (view.getParent() instanceof View) {
            view = (View) view.getParent();
        }
        return view;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m2899(View view) {
        view.getHitRect(f2839);
        return view.getGlobalVisibleRect(f2839);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Activity m2889(View view) {
        View viewFindViewById;
        if (view != null) {
            View view2 = view;
            while (view2.getId() != 16908290 && (view2.getParent() instanceof View)) {
                view2 = (View) view2.getParent();
            }
            for (Context context = view2.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                if (context instanceof Activity) {
                    return (Activity) context;
                }
            }
            if (view != null && (viewFindViewById = view.findViewById(R.id.content)) != null && (viewFindViewById.getContext() instanceof Activity)) {
                return (Activity) viewFindViewById.getContext();
            }
        }
        return null;
    }
}
