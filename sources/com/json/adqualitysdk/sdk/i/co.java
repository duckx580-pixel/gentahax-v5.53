package com.json.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.util.Pair;
import android.widget.VideoView;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class co extends da {
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Object m1787(List<Object> list) {
        return an.m568((Context) m1887(list, 0, Context.class));
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Object m1789(List<Object> list) {
        Context context = (Context) m1887(list, 0, Context.class);
        an.m567(an.m568(context), (BroadcastReceiver) m1887(list, 1, BroadcastReceiver.class), (IntentFilter) m1887(list, 2, IntentFilter.class));
        return null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Object m1786(List<Object> list) {
        Context context = (Context) m1887(list, 0, Context.class);
        an.m566(an.m568(context), (BroadcastReceiver) m1887(list, 1, BroadcastReceiver.class));
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m1791(List<Object> list) {
        return ((Pair) m1887(list, 0, Pair.class)).first;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Object m1790(List<Object> list) {
        return ((Pair) m1887(list, 0, Pair.class)).second;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static Object m1785(List<Object> list) {
        return jr.m2746((VideoView) m1887(list, 0, VideoView.class));
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static long m1788() {
        return jp.m2739();
    }
}
