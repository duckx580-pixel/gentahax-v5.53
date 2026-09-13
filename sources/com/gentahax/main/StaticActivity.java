package com.gentahax.main;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class StaticActivity {
    private static MenuActivity gApp;

    public static void Start(Context context) {
        gApp = new MenuActivity((Activity) context);
    }
}
