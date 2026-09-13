package com.facebook.ads.redexgen.core;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1Y, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network.dex */
public class C1Y {
    public String A00;
    public String A01;
    public String A02;
    public String A03;

    /* JADX WARN: Method inline analysis failed
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1768)
    	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1743)
    	at jadx.core.dex.instructions.args.SSAVar.removeUse(SSAVar.java:139)
    	at jadx.core.dex.visitors.MarkMethodsForInline.lambda$unbindSsaVars$1(MarkMethodsForInline.java:150)
    	at jadx.core.dex.nodes.InsnNode.visitArgs(InsnNode.java:339)
    	at jadx.core.dex.visitors.MarkMethodsForInline.unbindSsaVars(MarkMethodsForInline.java:145)
    	at jadx.core.dex.visitors.MarkMethodsForInline.addInlineAttr(MarkMethodsForInline.java:140)
    	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:82)
    	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:55)
    	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:38)
     */
    public static /* synthetic */ String A02(C1Y c1y) {
        return c1y.A00;
    }

    public final C1Y A04(String str) {
        this.A00 = str;
        return this;
    }

    public final C1Y A05(String str) {
        this.A01 = str;
        return this;
    }

    public final C1Y A06(String str) {
        this.A02 = str;
        return this;
    }

    public final C1Y A07(String str) {
        this.A03 = str;
        return this;
    }

    public final C1Z A08() {
        return new C1Z(this);
    }
}
