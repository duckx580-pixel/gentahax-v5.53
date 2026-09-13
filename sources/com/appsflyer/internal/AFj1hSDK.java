package com.appsflyer.internal;

import com.android.billingclient.BuildConfig;
import java.lang.reflect.Field;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFj1hSDK implements AFj1iSDK {
    @Override // com.appsflyer.internal.AFj1iSDK
    public final String getMediationNetwork() {
        Object objM3603constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            AFj1hSDK aFj1hSDK = this;
            Field declaredField = BuildConfig.class.getDeclaredField("VERSION_NAME");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            Intrinsics.checkNotNull(obj, "");
            objM3603constructorimpl = Result.m3603constructorimpl((String) obj);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3603constructorimpl = Result.m3603constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m3609isFailureimpl(objM3603constructorimpl) ? "" : objM3603constructorimpl);
    }
}
