###### Class com.gentahax.main.MainActivity (com.gentahax.main.MainActivity)
.class public Lcom/gentahax/main/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance p1, Lcom/gentahax/main/FloatingTextEditor;

    invoke-direct {p1, p0}, Lcom/gentahax/main/FloatingTextEditor;-><init>(Landroid/app/Activity;)V

    .line 25
    const-string v0, "KONTOL"

    invoke-virtual {p1, v0}, Lcom/gentahax/main/FloatingTextEditor;->mBind(Ljava/lang/String;)V

    return-void
.end method
