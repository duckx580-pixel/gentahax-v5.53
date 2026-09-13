###### Class com.gentahax.main.GLES3JNIView (com.gentahax.main.GLES3JNIView)
.class public Lcom/gentahax/main/GLES3JNIView;
.super Landroid/opengl/GLSurfaceView;
.source "GLES3JNIView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field static m_gameTimer:J = 0x0L

.field static m_timerLoopMS:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 15
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/gentahax/main/GLES3JNIView;->setEGLConfigChooser(IIIIII)V

    .line 17
    invoke-virtual {p0}, Lcom/gentahax/main/GLES3JNIView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 p1, 0x3

    .line 18
    invoke-virtual {p0, p1}, Lcom/gentahax/main/GLES3JNIView;->setEGLContextClientVersion(I)V

    .line 19
    invoke-virtual {p0, p0}, Lcom/gentahax/main/GLES3JNIView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public static SetFPSLimit(I)V
    .registers 2

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    .line 53
    sput p0, Lcom/gentahax/main/GLES3JNIView;->m_timerLoopMS:I

    return-void
.end method

.method public static native nativeGetTouchRect()[I
.end method

.method public static native nativeOnDetachedFromWindow()V
.end method

.method public static native nativeOnDrawFrame()V
.end method

.method public static native nativeOnSurfaceChanged(II)V
.end method

.method public static native nativeOnSurfaceCreated()V
.end method

.method public static native nativeOnTouch(IFFI)Z
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 1

    .line 49
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 50
    invoke-static {}, Lcom/gentahax/main/GLES3JNIView;->nativeOnDetachedFromWindow()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 10

    .line 24
    sget p1, Lcom/gentahax/main/GLES3JNIView;->m_timerLoopMS:I

    if-eqz p1, :cond_2f

    .line 26
    :goto_4
    sget-wide v0, Lcom/gentahax/main/GLES3JNIView;->m_gameTimer:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    const-wide/16 v0, 0x1

    if-gtz p1, :cond_2b

    sget-wide v2, Lcom/gentahax/main/GLES3JNIView;->m_gameTimer:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget p1, Lcom/gentahax/main/GLES3JNIView;->m_timerLoopMS:I

    int-to-long v6, p1

    add-long/2addr v4, v6

    add-long/2addr v4, v0

    cmp-long p1, v2, v4

    if-lez p1, :cond_20

    goto :goto_2b

    .line 31
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget p1, Lcom/gentahax/main/GLES3JNIView;->m_timerLoopMS:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/gentahax/main/GLES3JNIView;->m_gameTimer:J

    goto :goto_2f

    .line 28
    :cond_2b
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    .line 33
    :cond_2f
    :goto_2f
    invoke-static {}, Lcom/gentahax/main/GLES3JNIView;->nativeOnDrawFrame()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    .line 38
    invoke-static {p2, p3}, Lcom/gentahax/main/GLES3JNIView;->nativeOnSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    .line 43
    invoke-static {}, Lcom/gentahax/main/GLES3JNIView;->nativeOnSurfaceCreated()V

    return-void
.end method
