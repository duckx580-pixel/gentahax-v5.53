###### Class com.gentahax.main.LineNumberView (com.gentahax.main.LineNumberView)
.class public Lcom/gentahax/main/LineNumberView;
.super Landroid/view/View;
.source "LineNumberView.java"


# instance fields
.field private attachedEditText:Landroid/widget/EditText;

.field private lineHeight:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$F-ERKxqXZLFg4zetwNA3UklvJ2A(Lcom/gentahax/main/LineNumberView;)V
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/gentahax/main/LineNumberView;->attachedEditText:Landroid/widget/EditText;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/LineNumberView;->paint:Landroid/graphics/Paint;

    .line 21
    const-string v0, "#555555"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object p1, p0, Lcom/gentahax/main/LineNumberView;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 23
    iget-object p1, p0, Lcom/gentahax/main/LineNumberView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 26
    new-instance p1, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda0;-><init>(Lcom/gentahax/main/LineNumberView;Landroid/widget/EditText;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 31
    invoke-virtual {p2}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda1;-><init>(Lcom/gentahax/main/LineNumberView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-gentahax-main-LineNumberView(Landroid/widget/EditText;)V
    .registers 2

    .line 27
    invoke-virtual {p1}, Landroid/widget/EditText;->getLineHeight()I

    move-result p1

    iput p1, p0, Lcom/gentahax/main/LineNumberView;->lineHeight:I

    .line 28
    invoke-virtual {p0}, Lcom/gentahax/main/LineNumberView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    iget-object v0, p0, Lcom/gentahax/main/LineNumberView;->attachedEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/gentahax/main/LineNumberView;->attachedEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/gentahax/main/LineNumberView;->attachedEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    iget-object v2, p0, Lcom/gentahax/main/LineNumberView;->attachedEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/gentahax/main/LineNumberView;->attachedEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    :goto_2a
    if-gt v0, v1, :cond_4c

    .line 41
    iget-object v2, p0, Lcom/gentahax/main/LineNumberView;->attachedEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gentahax/main/LineNumberView;->attachedEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getScrollY()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/gentahax/main/LineNumberView;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {p1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2a

    :cond_4c
    return-void
.end method

###### Class com.gentahax.main.LineNumberView$$ExternalSyntheticLambda0 (com.gentahax.main.LineNumberView$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/LineNumberView;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/LineNumberView;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda0;->f$0:Lcom/gentahax/main/LineNumberView;

    iput-object p2, p0, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda0;->f$0:Lcom/gentahax/main/LineNumberView;

    iget-object v1, p0, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/gentahax/main/LineNumberView;->lambda$new$0$com-gentahax-main-LineNumberView(Landroid/widget/EditText;)V

    return-void
.end method

###### Class com.gentahax.main.LineNumberView$$ExternalSyntheticLambda1 (com.gentahax.main.LineNumberView$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/LineNumberView;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/LineNumberView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda1;->f$0:Lcom/gentahax/main/LineNumberView;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/LineNumberView$$ExternalSyntheticLambda1;->f$0:Lcom/gentahax/main/LineNumberView;

    invoke-static {v0}, Lcom/gentahax/main/LineNumberView;->$r8$lambda$F-ERKxqXZLFg4zetwNA3UklvJ2A(Lcom/gentahax/main/LineNumberView;)V

    return-void
.end method
