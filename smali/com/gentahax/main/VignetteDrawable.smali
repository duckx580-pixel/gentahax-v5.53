###### Class com.gentahax.main.VignetteDrawable (com.gentahax.main.VignetteDrawable)
.class public Lcom/gentahax/main/VignetteDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VignetteDrawable.java"


# instance fields
.field private height:I

.field private final paint:Landroid/graphics/Paint;

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/gentahax/main/VignetteDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/gentahax/main/VignetteDrawable;->width:I

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/gentahax/main/VignetteDrawable;->height:I

    .line 24
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/gentahax/main/VignetteDrawable;->width:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/gentahax/main/VignetteDrawable;->height:I

    int-to-float v5, v4

    div-float v3, v5, v3

    .line 26
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v4, v1

    const/4 v1, 0x0

    const/high16 v5, -0x56000000

    filled-new-array {v1, v5}, [I

    move-result-object v5

    const/4 v1, 0x2

    new-array v6, v1, [F

    fill-array-data v6, :array_4a

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 32
    iget-object v1, p0, Lcom/gentahax/main/VignetteDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 33
    iget v0, p0, Lcom/gentahax/main/VignetteDrawable;->width:I

    int-to-float v4, v0

    iget v0, p0, Lcom/gentahax/main/VignetteDrawable;->height:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/gentahax/main/VignetteDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    nop

    :array_4a
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/gentahax/main/VignetteDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/gentahax/main/VignetteDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
