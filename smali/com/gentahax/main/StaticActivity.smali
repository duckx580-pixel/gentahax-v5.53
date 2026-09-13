###### Class com.gentahax.main.StaticActivity (com.gentahax.main.StaticActivity)
.class public Lcom/gentahax/main/StaticActivity;
.super Ljava/lang/Object;
.source "StaticActivity.java"


# static fields
.field private static gApp:Lcom/gentahax/main/MenuActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Start(Landroid/content/Context;)V
    .registers 2

    .line 15
    new-instance v0, Lcom/gentahax/main/MenuActivity;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v0, p0}, Lcom/gentahax/main/MenuActivity;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/gentahax/main/StaticActivity;->gApp:Lcom/gentahax/main/MenuActivity;

    return-void
.end method
