package com.gentahax.main;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: loaded from: classes5.dex */
public class MainActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new FloatingTextEditor(this).mBind("KONTOL");
    }
}
