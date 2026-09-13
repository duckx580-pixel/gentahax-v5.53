###### Class com.gentahax.main.MenuActivity (com.gentahax.main.MenuActivity)
.class public Lcom/gentahax/main/MenuActivity;
.super Ljava/lang/Object;
.source "MenuActivity.java"


# static fields
.field public static CachePath:Ljava/lang/String; = null

.field private static FXPCPlayers:Landroid/media/MediaPlayer; = null

.field private static FXPlayers:Landroid/media/MediaPlayer; = null

.field private static final TAG:Ljava/lang/String; = "GENTAHAX"

.field private static context:Landroid/app/Activity; = null

.field public static iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii:Ljava/lang/String; = "R0VOVEEgSEFY"

.field public static mIsMenuOpenned:Z = true

.field public static mListener:Ljava/lang/String; = "We can\'t get onClose listener!"

.field public static manager:Landroid/view/WindowManager;

.field private static soundDelayeding:Z

.field public static vParams:Landroid/view/WindowManager$LayoutParams;

.field public static vTouch:Landroid/view/View;

.field public static windowManager:Landroid/view/WindowManager;


# instance fields
.field public voiceChat:Lcom/gentahax/main/VoiceChat;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sput-object p1, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/gentahax/main/MenuActivity;->CachePath:Ljava/lang/String;

    .line 66
    const-string p1, "onNotification.ogg"

    sget-object v0, Lcom/gentahax/main/Sound;->onNotification:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/gentahax/main/MenuActivity;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string p1, "onErrorNotification.ogg"

    sget-object v0, Lcom/gentahax/main/Sound;->onErrorNotification:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/gentahax/main/MenuActivity;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string p1, "onUnknownNotification.ogg"

    sget-object v0, Lcom/gentahax/main/Sound;->onNotificationUnknown:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/gentahax/main/MenuActivity;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 70
    new-instance v0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gentahax/main/MenuActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    new-instance v0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gentahax/main/MenuActivity;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static CallKeyboard()V
    .registers 2

    .line 502
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 503
    new-instance v1, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static CallToast(Ljava/lang/String;I)V
    .registers 4

    .line 475
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gentahax/main/MenuActivity$5;

    invoke-direct {v1, p1, p0}, Lcom/gentahax/main/MenuActivity$5;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ChangeMenuState(Z)V
    .registers 2

    .line 134
    sput-boolean p0, Lcom/gentahax/main/MenuActivity;->mIsMenuOpenned:Z

    if-eqz p0, :cond_7

    .line 135
    const-string p0, "Openning GUI..."

    goto :goto_9

    :cond_7
    const-string p0, "Closing GUI..."

    :goto_9
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static GetBeginName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 303
    sget-object v0, Lcom/gentahax/main/MenuActivity;->iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-static {v0, p1}, Lcom/gentahax/main/MenuActivity;->oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/gentahax/main/MenuActivity;->oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-ne v0, p0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public static GetCachePath()Ljava/lang/String;
    .registers 1

    .line 511
    sget-object v0, Lcom/gentahax/main/MenuActivity;->CachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static GetSharedInt(Ljava/lang/String;)I
    .registers 4

    .line 282
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GENTAHAX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static GetSharedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 266
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GENTAHAX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    const-string v1, "NULL"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native InitTextEditor(Ljava/lang/String;)V
.end method

.method public static LaunchURL(Ljava/lang/String;)V
    .registers 3

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 452
    sget-object p0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static OnLibReady()V
    .registers 5

    .line 138
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5c

    .line 139
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    sput-object v0, Lcom/gentahax/main/MenuActivity;->manager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->getAttributes(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sput-object v2, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    .line 141
    invoke-static {v1}, Lcom/gentahax/main/MenuActivity;->getAttributes(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 142
    new-instance v2, Lcom/gentahax/main/GLES3JNIView;

    sget-object v3, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/gentahax/main/GLES3JNIView;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v3, Landroid/view/View;

    sget-object v4, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/gentahax/main/MenuActivity;->vTouch:Landroid/view/View;

    .line 145
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 146
    sget-object v3, Lcom/gentahax/main/MenuActivity;->vTouch:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 147
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vTouch:Landroid/view/View;

    new-instance v3, Lcom/gentahax/main/MenuActivity$1;

    invoke-direct {v3}, Lcom/gentahax/main/MenuActivity$1;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    sget-object v0, Lcom/gentahax/main/MenuActivity;->manager:Landroid/view/WindowManager;

    sget-object v3, Lcom/gentahax/main/MenuActivity;->vTouch:Landroid/view/View;

    sget-object v4, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    sget-object v0, Lcom/gentahax/main/MenuActivity;->manager:Landroid/view/WindowManager;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 159
    new-instance v1, Lcom/gentahax/main/MenuActivity$2;

    invoke-direct {v1, v0}, Lcom/gentahax/main/MenuActivity$2;-><init>(Landroid/os/Handler;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_61

    .line 199
    :cond_5c
    const-string v0, "Overlay permission are denied, please allow it to draw the GUI!"

    invoke-static {v0, v1}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    :goto_61
    return-void
.end method

.method public static PlaySound(Ljava/lang/String;F)V
    .registers 4

    .line 406
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gentahax/main/MenuActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/gentahax/main/MenuActivity$4;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static PlaySoundCache(Ljava/lang/String;)V
    .registers 3

    .line 310
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gentahax/main/MenuActivity$3;

    invoke-direct {v1, p0}, Lcom/gentahax/main/MenuActivity$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native PushLogNative(Ljava/lang/String;)V
.end method

.method public static SetSharedInt(Ljava/lang/String;I)V
    .registers 5

    .line 273
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GENTAHAX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static SetSharedString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 257
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GENTAHAX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 40
    sget-boolean v0, Lcom/gentahax/main/MenuActivity;->soundDelayeding:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 40
    sput-boolean p0, Lcom/gentahax/main/MenuActivity;->soundDelayeding:Z

    return p0
.end method

.method static synthetic access$100()Landroid/media/MediaPlayer;
    .registers 1

    .line 40
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPCPlayers:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 1

    .line 40
    sput-object p0, Lcom/gentahax/main/MenuActivity;->FXPCPlayers:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .registers 1

    .line 40
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Landroid/media/MediaPlayer;
    .registers 1

    .line 40
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 1

    .line 40
    sput-object p0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static callTextEditor(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Lcom/gentahax/main/FloatingTextEditor;

    sget-object v1, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gentahax/main/FloatingTextEditor;-><init>(Landroid/app/Activity;)V

    .line 215
    invoke-virtual {v0, p0}, Lcom/gentahax/main/FloatingTextEditor;->mBind(Ljava/lang/String;)V

    .line 216
    sget-object p0, Lcom/gentahax/main/MenuActivity;->mListener:Ljava/lang/String;

    return-object p0
.end method

.method public static callVibrate(J)V
    .registers 5

    .line 203
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1e

    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1b

    const/4 v1, -0x1

    .line 206
    invoke-static {p0, p1, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_1e

    .line 208
    :cond_1b
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static enableKeepScreenOn()V
    .registers 2

    .line 99
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAttributes(Z)Landroid/view/WindowManager$LayoutParams;
    .registers 11

    const/high16 v0, 0x20000

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 109
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const v1, 0x2800108

    or-int v7, v0, v1

    const/4 v8, -0x2

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    if-eqz p0, :cond_1e

    .line 122
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x30

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1e
    const/4 v0, 0x1

    .line 124
    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_29

    .line 126
    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_29
    const/16 v0, 0x33

    .line 128
    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 129
    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz p0, :cond_35

    const/4 v0, -0x1

    .line 130
    :cond_35
    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    return-object v9
.end method

.method public static getSoundDuration()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getSoundIsLooping()Z
    .registers 1

    .line 400
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static getSoundIsPlaying()Z
    .registers 1

    .line 403
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static getSoundPosition()I
    .registers 1

    .line 385
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static getSoundValidity()Z
    .registers 1

    .line 379
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static get_clipboard()Ljava/lang/String;
    .registers 3

    .line 467
    :try_start_0
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed calling <get_clipboard> in java class. catched: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->PushLogNative(Ljava/lang/String;)V

    .line 470
    const-string v0, "Thread error, sorry, paste can\'t be used here."

    return-object v0
.end method

.method public static killSound()V
    .registers 2

    .line 341
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    .line 343
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 344
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 345
    sput-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_19

    :catch_10
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    :cond_19
    :goto_19
    return-void
.end method

.method static synthetic lambda$CallKeyboard$5()V
    .registers 3

    .line 504
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 505
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 506
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method static synthetic lambda$enableKeepScreenOn$4()V
    .registers 2

    .line 100
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static native mKIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIi()Ljava/lang/String;
.end method

.method public static native mMusicDuration(I)V
.end method

.method public static native mNameAES()Ljava/lang/String;
.end method

.method private static oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 493
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_22

    .line 496
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    rem-int v5, v3, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    xor-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 498
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pauseSound()V
    .registers 2

    .line 352
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 354
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public static resumeSound()V
    .registers 2

    .line 361
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 363
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public static seekSound(I)V
    .registers 2

    .line 370
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 372
    :try_start_4
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception p0

    .line 374
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public static setSoundLooping(Z)V
    .registers 2

    .line 388
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c

    .line 389
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    if-eqz p0, :cond_c

    .line 390
    const-string p0, "ON!"

    goto :goto_e

    :cond_c
    const-string p0, "OFF!"

    :goto_e
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Loop current music: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    :cond_1c
    return-void
.end method

.method public static setSoundVolume(F)V
    .registers 2

    .line 394
    sget-object v0, Lcom/gentahax/main/MenuActivity;->FXPlayers:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    .line 395
    invoke-virtual {v0, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 396
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Volume: %.0f%%"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    :cond_19
    return-void
.end method

.method public static set_clipboard(Ljava/lang/String;)V
    .registers 3

    .line 460
    :try_start_0
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_25

    :catch_e
    move-exception p0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed calling <get_clipboard> in java class. catched: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gentahax/main/MenuActivity;->PushLogNative(Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 289
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gentahax/main/MenuActivity;->CachePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    :try_start_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_21

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 294
    :cond_21
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 295
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 296
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 297
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_31} :catch_32

    goto :goto_54

    :catch_32
    move-exception p1

    .line 299
    sget-object p2, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_54
    return-void
.end method


# virtual methods
.method public getOverlay(Ljava/lang/Runnable;)V
    .registers 7

    .line 219
    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    sget-object v1, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_53

    const/high16 v1, 0x10000000

    .line 221
    :try_start_10
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v3, "package:%s"

    sget-object v4, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    sget-object v3, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_41} :catch_42

    goto :goto_53

    .line 227
    :catch_42
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_53
    :goto_53
    if-eqz p1, :cond_58

    .line 232
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_58
    return-void
.end method

.method public getStorage(Ljava/lang/Runnable;)V
    .registers 6

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_55

    .line 237
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_55

    const/high16 v0, 0x10000000

    .line 240
    :try_start_e
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "package:%s"

    sget-object v3, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    sget-object v2, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_41} :catch_42

    goto :goto_55

    .line 246
    :catch_42
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_55
    :goto_55
    if-eqz p1, :cond_5a

    .line 253
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5a
    return-void
.end method

.method public native isAllowed(Z)V
.end method

.method synthetic lambda$new$0$com-gentahax-main-MenuActivity()V
    .registers 3

    .line 71
    const-string v0, "gentahax"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->mNameAES()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gentahax/main/MenuActivity;->mKIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gentahax/main/MenuActivity;->GetBeginName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gentahax/main/MenuActivity;->isAllowed(Z)V

    .line 74
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->mNameAES()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gentahax/main/MenuActivity;->mKIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gentahax/main/MenuActivity;->GetBeginName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 75
    const-string v0, "onNotification.ogg"

    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->PlaySoundCache(Ljava/lang/String;)V

    goto :goto_2d

    .line 77
    :cond_28
    const-string v0, "onErrorNotification.ogg"

    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->PlaySoundCache(Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method synthetic lambda$new$1$com-gentahax-main-MenuActivity()V
    .registers 3

    .line 84
    const-string v0, "VoiceChat initializing..."

    const-string v1, "GENTAHAX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/gentahax/main/MenuActivity;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gentahax/main/VoiceChat;->getInstance(Landroid/app/Activity;)Lcom/gentahax/main/VoiceChat;

    move-result-object v0

    iput-object v0, p0, Lcom/gentahax/main/MenuActivity;->voiceChat:Lcom/gentahax/main/VoiceChat;

    if-eqz v0, :cond_1a

    .line 87
    invoke-virtual {v0}, Lcom/gentahax/main/VoiceChat;->startVoice()V

    .line 88
    const-string v0, "VoiceChat instance initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 90
    :cond_1a
    const-string v0, "VoiceChat instance failed to init...??"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method synthetic lambda$new$2$com-gentahax-main-MenuActivity()V
    .registers 2

    .line 83
    new-instance v0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gentahax/main/MenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/gentahax/main/MenuActivity;->getOverlay(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$new$3$com-gentahax-main-MenuActivity()V
    .registers 2

    .line 82
    new-instance v0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gentahax/main/MenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/gentahax/main/MenuActivity;->getStorage(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gentahax.main.MenuActivity.AnonymousClass1 (com.gentahax.main.MenuActivity$1)
.class Lcom/gentahax/main/MenuActivity$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gentahax/main/MenuActivity;->OnLibReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lcom/gentahax/main/GLES3JNIView;->nativeOnTouch(IFFI)Z

    const/4 p1, 0x0

    return p1
.end method

###### Class com.gentahax.main.MenuActivity.AnonymousClass2 (com.gentahax.main.MenuActivity$2)
.class Lcom/gentahax/main/MenuActivity$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gentahax/main/MenuActivity;->OnLibReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handler_1:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/gentahax/main/MenuActivity$2;->val$handler_1:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 162
    sget-boolean v0, Lcom/gentahax/main/MenuActivity;->mIsMenuOpenned:Z

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 163
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 164
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 165
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 166
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2c

    .line 169
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 170
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    goto :goto_36

    .line 172
    :cond_2c
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vTouch:Landroid/view/View;

    new-instance v1, Lcom/gentahax/main/VignetteDrawable;

    invoke-direct {v1}, Lcom/gentahax/main/VignetteDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :goto_36
    sget-object v0, Lcom/gentahax/main/MenuActivity;->manager:Landroid/view/WindowManager;

    sget-object v1, Lcom/gentahax/main/MenuActivity;->vTouch:Landroid/view/View;

    sget-object v2, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_88

    .line 177
    :cond_40
    invoke-static {}, Lcom/gentahax/main/GLES3JNIView;->nativeGetTouchRect()[I

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_83

    .line 179
    sget-object v4, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    aget v5, v0, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 180
    sget-object v4, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    aget v3, v0, v3

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 181
    sget-object v3, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x2

    aget v4, v0, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 182
    sget-object v3, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x3

    aget v0, v0, v4

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_73

    .line 184
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 185
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    goto :goto_79

    .line 187
    :cond_73
    sget-object v0, Lcom/gentahax/main/MenuActivity;->vTouch:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :goto_79
    sget-object v0, Lcom/gentahax/main/MenuActivity;->manager:Landroid/view/WindowManager;

    sget-object v1, Lcom/gentahax/main/MenuActivity;->vTouch:Landroid/view/View;

    sget-object v2, Lcom/gentahax/main/MenuActivity;->vParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_88

    .line 192
    :cond_83
    const-string v0, "Rect nullptr!"

    invoke-static {v0, v3}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    .line 195
    :goto_88
    iget-object v0, p0, Lcom/gentahax/main/MenuActivity$2;->val$handler_1:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.gentahax.main.MenuActivity.AnonymousClass3 (com.gentahax.main.MenuActivity$3)
.class Lcom/gentahax/main/MenuActivity$3;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gentahax/main/MenuActivity;->PlaySoundCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/gentahax/main/MenuActivity$3;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 314
    :try_start_0
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$000()Z

    move-result v0

    if-nez v0, :cond_66

    const/4 v0, 0x1

    .line 316
    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->access$002(Z)Z

    .line 318
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 319
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 320
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 323
    :cond_1e
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gentahax/main/MenuActivity;->CachePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gentahax/main/MenuActivity$3;->val$uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->access$102(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 324
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 325
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 326
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_61
    const/4 v0, 0x0

    .line 328
    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->access$002(Z)Z

    goto :goto_83

    .line 331
    :cond_66
    const-string v0, "Services <PlaySound> is busy rightnow, try again later."

    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->PushLogNative(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_83

    :catch_6c
    move-exception v0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Services <PlaySound> return error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->PushLogNative(Ljava/lang/String;)V

    :goto_83
    return-void
.end method

###### Class com.gentahax.main.MenuActivity.AnonymousClass4 (com.gentahax.main.MenuActivity$4)
.class Lcom/gentahax/main/MenuActivity$4;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gentahax/main/MenuActivity;->PlaySound(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$uri:Ljava/lang/String;

.field final synthetic val$volumes:F


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lcom/gentahax/main/MenuActivity$4;->val$uri:Ljava/lang/String;

    iput p2, p0, Lcom/gentahax/main/MenuActivity$4;->val$volumes:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 410
    :try_start_0
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$000()Z

    move-result v0

    if-nez v0, :cond_6b

    const/4 v0, 0x1

    .line 412
    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->access$002(Z)Z

    .line 414
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$300()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 415
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$300()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 416
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$300()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 419
    :cond_1e
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gentahax/main/MenuActivity$4;->val$uri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->access$302(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 420
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$300()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 421
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$300()Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/gentahax/main/MenuActivity$4$1;

    invoke-direct {v1, p0}, Lcom/gentahax/main/MenuActivity$4$1;-><init>(Lcom/gentahax/main/MenuActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 429
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$300()Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/gentahax/main/MenuActivity$4$2;

    invoke-direct {v1, p0}, Lcom/gentahax/main/MenuActivity$4$2;-><init>(Lcom/gentahax/main/MenuActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 435
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$300()Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/gentahax/main/MenuActivity$4;->val$volumes:F

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 436
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$300()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_66
    const/4 v0, 0x0

    .line 438
    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->access$002(Z)Z

    goto :goto_88

    .line 441
    :cond_6b
    const-string v0, "Services <PlaySound> is busy rightnow, try again later."

    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->PushLogNative(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71

    goto :goto_88

    :catch_71
    move-exception v0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Services <PlaySound> return error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gentahax/main/MenuActivity;->PushLogNative(Ljava/lang/String;)V

    :goto_88
    return-void
.end method

###### Class com.gentahax.main.MenuActivity.AnonymousClass4.AnonymousClass1 (com.gentahax.main.MenuActivity$4$1)
.class Lcom/gentahax/main/MenuActivity$4$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gentahax/main/MenuActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gentahax/main/MenuActivity$4;


# direct methods
.method constructor <init>(Lcom/gentahax/main/MenuActivity$4;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/gentahax/main/MenuActivity$4$1;->this$0:Lcom/gentahax/main/MenuActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error preparing MediaPlayer. What: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", Extra: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

###### Class com.gentahax.main.MenuActivity.AnonymousClass4.AnonymousClass2 (com.gentahax.main.MenuActivity$4$2)
.class Lcom/gentahax/main/MenuActivity$4$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gentahax/main/MenuActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gentahax/main/MenuActivity$4;


# direct methods
.method constructor <init>(Lcom/gentahax/main/MenuActivity$4;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/gentahax/main/MenuActivity$4$2;->this$0:Lcom/gentahax/main/MenuActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 432
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-static {p1}, Lcom/gentahax/main/MenuActivity;->mMusicDuration(I)V

    return-void
.end method

###### Class com.gentahax.main.MenuActivity.AnonymousClass5 (com.gentahax.main.MenuActivity$5)
.class Lcom/gentahax/main/MenuActivity$5;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gentahax/main/MenuActivity;->CallToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mStr:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 475
    iput p1, p0, Lcom/gentahax/main/MenuActivity$5;->val$type:I

    iput-object p2, p0, Lcom/gentahax/main/MenuActivity$5;->val$mStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 478
    iget v0, p0, Lcom/gentahax/main/MenuActivity$5;->val$type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    .line 483
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/gentahax/main/MenuActivity$5;->val$mStr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_29

    .line 480
    :cond_18
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/gentahax/main/MenuActivity$5;->val$mStr:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_29
    return-void
.end method

###### Class com.gentahax.main.MenuActivity$$ExternalSyntheticLambda0 (com.gentahax.main.MenuActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->lambda$enableKeepScreenOn$4()V

    return-void
.end method

###### Class com.gentahax.main.MenuActivity$$ExternalSyntheticLambda1 (com.gentahax.main.MenuActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lcom/gentahax/main/MenuActivity;->lambda$CallKeyboard$5()V

    return-void
.end method

###### Class com.gentahax.main.MenuActivity$$ExternalSyntheticLambda2 (com.gentahax.main.MenuActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/MenuActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/MenuActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gentahax/main/MenuActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gentahax/main/MenuActivity;

    invoke-virtual {v0}, Lcom/gentahax/main/MenuActivity;->lambda$new$0$com-gentahax-main-MenuActivity()V

    return-void
.end method

###### Class com.gentahax.main.MenuActivity$$ExternalSyntheticLambda3 (com.gentahax.main.MenuActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/MenuActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/MenuActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gentahax/main/MenuActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gentahax/main/MenuActivity;

    invoke-virtual {v0}, Lcom/gentahax/main/MenuActivity;->lambda$new$3$com-gentahax-main-MenuActivity()V

    return-void
.end method

###### Class com.gentahax.main.MenuActivity$$ExternalSyntheticLambda4 (com.gentahax.main.MenuActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/MenuActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/MenuActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gentahax/main/MenuActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gentahax/main/MenuActivity;

    invoke-virtual {v0}, Lcom/gentahax/main/MenuActivity;->lambda$new$2$com-gentahax-main-MenuActivity()V

    return-void
.end method

###### Class com.gentahax.main.MenuActivity$$ExternalSyntheticLambda5 (com.gentahax.main.MenuActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/MenuActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/MenuActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gentahax/main/MenuActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/MenuActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gentahax/main/MenuActivity;

    invoke-virtual {v0}, Lcom/gentahax/main/MenuActivity;->lambda$new$1$com-gentahax-main-MenuActivity()V

    return-void
.end method
