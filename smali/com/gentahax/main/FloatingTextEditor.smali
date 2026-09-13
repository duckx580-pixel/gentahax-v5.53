###### Class com.gentahax.main.FloatingTextEditor (com.gentahax.main.FloatingTextEditor)
.class public Lcom/gentahax/main/FloatingTextEditor;
.super Ljava/lang/Object;
.source "FloatingTextEditor.java"


# static fields
.field private static final ARRAY_PATTERN:Ljava/util/regex/Pattern;

.field private static final ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field private static final NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final PARAMS_PATTERN:Ljava/util/regex/Pattern;

.field private static final STRING_PATTERN:Ljava/util/regex/Pattern;

.field private static final VARIABLE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field ctx:Landroid/app/Activity;

.field private highlightDelay:I

.field private final highlightHandler:Landroid/os/Handler;

.field private isHighlightEnabled:Z

.field private pendingHighlight:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$F-ERKxqXZLFg4zetwNA3UklvJ2A(Lcom/gentahax/main/LineNumberView;)V
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 227
    const-string v0, "\\b(function|end|local|then|elseif|else|if|while|for|do|repeat|until|return|break|in|and|or|not|nil|true|false)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gentahax/main/FloatingTextEditor;->KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    .line 228
    const-string v0, "\"(.*?)\"|\'(.*?)\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gentahax/main/FloatingTextEditor;->STRING_PATTERN:Ljava/util/regex/Pattern;

    .line 229
    const-string v0, "--.*?$"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gentahax/main/FloatingTextEditor;->COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 230
    const-string v0, "\\b\\d+\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gentahax/main/FloatingTextEditor;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 231
    const-string v0, "\\[[0-9]+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gentahax/main/FloatingTextEditor;->ARRAY_PATTERN:Ljava/util/regex/Pattern;

    .line 232
    const-string v0, "\\b[a-z]+[A-Z][a-zA-Z0-9_]*\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gentahax/main/FloatingTextEditor;->ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    .line 233
    const-string v0, "function\\s+\\w*\\s*\\(([^)]*)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gentahax/main/FloatingTextEditor;->PARAMS_PATTERN:Ljava/util/regex/Pattern;

    .line 234
    const-string v0, "\\blocal\\s+(\\w+)|\\b(\\w+)\\s*="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gentahax/main/FloatingTextEditor;->VARIABLE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/gentahax/main/FloatingTextEditor;->isHighlightEnabled:Z

    const/16 v0, 0x96

    .line 36
    iput v0, p0, Lcom/gentahax/main/FloatingTextEditor;->highlightDelay:I

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gentahax/main/FloatingTextEditor;->highlightHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/gentahax/main/FloatingTextEditor;->pendingHighlight:Ljava/lang/Runnable;

    .line 38
    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/gentahax/main/FloatingTextEditor;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/gentahax/main/FloatingTextEditor;->isHighlightEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/gentahax/main/FloatingTextEditor;->highlightLuaAsync(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$200(Lcom/gentahax/main/FloatingTextEditor;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/gentahax/main/FloatingTextEditor;->highlightDelay:I

    return p0
.end method

.method static synthetic access$202(Lcom/gentahax/main/FloatingTextEditor;I)I
    .registers 2

    .line 33
    iput p1, p0, Lcom/gentahax/main/FloatingTextEditor;->highlightDelay:I

    return p1
.end method

.method private applySpan(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/Editable;Ljava/lang/String;)V
    .registers 8

    .line 364
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 365
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 366
    :cond_8
    :goto_8
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p4

    if-eqz p4, :cond_29

    .line 367
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p4

    .line 368
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    if-ltz p4, :cond_8

    .line 369
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_8

    .line 370
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {p3, v1, p4, v0, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_29
    return-void
.end method

.method private generateLineNumbers(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, -0x1

    .line 375
    const-string v1, "\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    :goto_e
    if-gt v2, p1, :cond_1a

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 378
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getOverlayType()I
    .registers 3

    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    const/16 v0, 0x7f6

    return v0

    :cond_9
    const/16 v0, 0x7d2

    return v0
.end method

.method private highlightLuaAsync(Landroid/widget/EditText;)V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor;->pendingHighlight:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 239
    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor;->highlightHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    :cond_9
    new-instance v0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda1;-><init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/gentahax/main/FloatingTextEditor;->pendingHighlight:Ljava/lang/Runnable;

    .line 353
    iget-object p1, p0, Lcom/gentahax/main/FloatingTextEditor;->highlightHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/gentahax/main/FloatingTextEditor;->highlightDelay:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isInsideString(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[I>;)Z"
        }
    .end annotation

    .line 357
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 358
    aget v1, v0, v1

    if-lt p1, v1, :cond_4

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ge p1, v0, :cond_4

    :cond_1a
    return v1
.end method

.method static synthetic lambda$highlightLuaAsync$5(Landroid/text/Spannable;Ljava/util/List;)V
    .registers 7

    .line 332
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    array-length v1, v0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 333
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 336
    :cond_19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 337
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    .line 338
    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    .line 339
    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    if-ltz v1, :cond_1d

    .line 340
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-gt v3, v4, :cond_1d

    if-ge v1, v3, :cond_1d

    .line 341
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 342
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    .line 341
    invoke-interface {p0, v4, v1, v3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1d

    :cond_58
    return-void
.end method

.method static synthetic lambda$mBind$0(Landroid/widget/EditText;Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 4

    .line 176
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gentahax/main/MenuActivity;->InitTextEditor(Ljava/lang/String;)V

    .line 177
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$mBind$1(Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 3

    .line 180
    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$highlightLuaAsync$6$com-gentahax-main-FloatingTextEditor(Ljava/lang/String;Landroid/text/Spannable;)V
    .registers 14

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    sget-object v2, Lcom/gentahax/main/FloatingTextEditor;->STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 252
    :goto_10
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 253
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 254
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 255
    filled-new-array {v3, v4}, [I

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "#6A9955"

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 260
    :cond_37
    sget-object v2, Lcom/gentahax/main/FloatingTextEditor;->COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 261
    :goto_3d
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 262
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "#808080"

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 266
    :cond_5d
    sget-object v2, Lcom/gentahax/main/FloatingTextEditor;->KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 267
    :cond_63
    :goto_63
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 268
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/gentahax/main/FloatingTextEditor;->isInsideString(ILjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 269
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "#CE9178"

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 274
    :cond_8d
    sget-object v2, Lcom/gentahax/main/FloatingTextEditor;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 275
    :cond_93
    :goto_93
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 276
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/gentahax/main/FloatingTextEditor;->isInsideString(ILjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_93

    .line 277
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "#B5CEA8"

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 282
    :cond_bd
    sget-object v2, Lcom/gentahax/main/FloatingTextEditor;->ARRAY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 283
    :cond_c3
    :goto_c3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 284
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/gentahax/main/FloatingTextEditor;->isInsideString(ILjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_c3

    .line 285
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "#569CD6"

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 290
    :cond_ed
    sget-object v2, Lcom/gentahax/main/FloatingTextEditor;->ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 291
    :cond_f3
    :goto_f3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 292
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/gentahax/main/FloatingTextEditor;->isInsideString(ILjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_f3

    .line 293
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "#9CDCFE"

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f3

    .line 298
    :cond_11d
    sget-object v2, Lcom/gentahax/main/FloatingTextEditor;->VARIABLE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 299
    :cond_123
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_155

    :goto_12a
    const/4 v3, 0x2

    if-gt v4, v3, :cond_123

    .line 301
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_152

    .line 302
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    .line 303
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    .line 304
    invoke-direct {p0, v3, v1}, Lcom/gentahax/main/FloatingTextEditor;->isInsideString(ILjava/util/List;)Z

    move-result v6

    if-nez v6, :cond_152

    .line 305
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "#DCDCAA"

    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_152
    add-int/lit8 v4, v4, 0x1

    goto :goto_12a

    .line 312
    :cond_155
    sget-object v2, Lcom/gentahax/main/FloatingTextEditor;->PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 313
    :cond_15b
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1ab

    .line 314
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    .line 317
    array-length v6, v3

    const/4 v7, 0x0

    :goto_171
    if-ge v7, v6, :cond_15b

    aget-object v8, v3, v7

    .line 318
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 319
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1a8

    .line 320
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 321
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v9

    if-ltz v9, :cond_1a8

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v8, v10, :cond_1a8

    invoke-direct {p0, v9, v1}, Lcom/gentahax/main/FloatingTextEditor;->isInsideString(ILjava/util/List;)Z

    move-result v10

    if-nez v10, :cond_1a8

    .line 323
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "#C586C0"

    filled-new-array {v5, v9, v10}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    :cond_1a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_171

    .line 331
    :cond_1ab
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, v0}, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda8;-><init>(Landroid/text/Spannable;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$highlightLuaAsync$7$com-gentahax-main-FloatingTextEditor(Landroid/widget/EditText;)V
    .registers 5

    .line 243
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 246
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda2;-><init>(Lcom/gentahax/main/FloatingTextEditor;Ljava/lang/String;Landroid/text/Spannable;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 350
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$mBind$2$com-gentahax-main-FloatingTextEditor(Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/WindowManager$LayoutParams;Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .registers 7

    .line 183
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p6, :cond_9

    const p5, 0x20100

    goto :goto_b

    :cond_9
    const/16 p5, 0x120

    .line 187
    :goto_b
    iput p5, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 188
    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p6, :cond_24

    .line 191
    invoke-virtual {p4}, Landroid/widget/EditText;->requestFocus()Z

    .line 192
    iget-object p1, p0, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 193
    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_24
    return-void
.end method

.method synthetic lambda$mBind$3$com-gentahax-main-FloatingTextEditor(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .registers 6

    .line 0
    xor-int/lit8 p2, p3, 0x1

    .line 197
    iput-boolean p2, p0, Lcom/gentahax/main/FloatingTextEditor;->isHighlightEnabled:Z

    if-nez p3, :cond_a

    .line 199
    invoke-direct {p0, p1}, Lcom/gentahax/main/FloatingTextEditor;->highlightLuaAsync(Landroid/widget/EditText;)V

    goto :goto_26

    .line 202
    :cond_a
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 203
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    const-class p3, Landroid/text/style/ForegroundColorSpan;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ForegroundColorSpan;

    array-length p3, p2

    :goto_1c
    if-ge v0, p3, :cond_26

    aget-object v1, p2, v0

    .line 204
    invoke-interface {p1, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_26
    :goto_26
    return-void
.end method

.method synthetic lambda$mBind$4$com-gentahax-main-FloatingTextEditor(Ljava/lang/String;)V
    .registers 24

    .line 0
    move-object/from16 v6, p0

    .line 51
    iget-object v0, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/WindowManager;

    .line 53
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 54
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x14

    .line 55
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 56
    const-string v4, "#1E1E1E"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 58
    new-instance v5, Landroid/widget/HorizontalScrollView;

    iget-object v7, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v5, v7}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v7, Landroid/widget/ScrollView;

    iget-object v8, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 61
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    new-instance v10, Landroid/widget/EditText;

    iget-object v11, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v11, p1

    .line 64
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const-string v11, "#CCCCCC"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTextColor(I)V

    .line 66
    const-string v11, "#888888"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 67
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/16 v4, 0xa

    .line 68
    invoke-virtual {v10, v4, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 69
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTextSize(F)V

    const v11, 0x800033

    .line 70
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 71
    sget-object v11, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 78
    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 80
    new-instance v11, Lcom/gentahax/main/LineNumberView;

    iget-object v15, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v11, v15, v10}, Lcom/gentahax/main/LineNumberView;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 81
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v13, 0x64

    invoke-direct {v15, v13, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v15}, Lcom/gentahax/main/LineNumberView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v10}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda3;

    invoke-direct {v15, v11}, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda3;-><init>(Lcom/gentahax/main/LineNumberView;)V

    invoke-virtual {v13, v15}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 85
    new-instance v13, Lcom/gentahax/main/FloatingTextEditor$1;

    invoke-direct {v13, v6, v10}, Lcom/gentahax/main/FloatingTextEditor$1;-><init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V

    invoke-virtual {v10, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 99
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 108
    new-instance v7, Landroid/widget/CheckBox;

    iget-object v8, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 109
    const-string v8, "Emulator Mode"

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 113
    new-instance v8, Landroid/widget/CheckBox;

    iget-object v11, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v8, v11}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 114
    const-string v11, "Highlight"

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v8, v12}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 116
    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 119
    new-instance v11, Landroid/widget/EditText;

    iget-object v0, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v11, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 120
    const-string v0, "Delay ms"

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 121
    const-string v0, "150"

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 122
    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 123
    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setTextColor(I)V

    .line 124
    const-string v0, "#2D2D2D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 125
    invoke-virtual {v11, v1, v9, v1, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v0, 0x4

    .line 126
    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setMinEms(I)V

    const/4 v0, 0x6

    .line 127
    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setMaxEms(I)V

    .line 129
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x11

    .line 136
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 138
    new-instance v5, Landroid/widget/Button;

    iget-object v13, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v5, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 139
    const-string v13, "Done"

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const-string v13, "#4CAF50"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 141
    invoke-virtual {v5, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 143
    new-instance v13, Landroid/widget/Button;

    iget-object v15, v6, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-direct {v13, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 144
    const-string v15, "Cancel"

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const-string v15, "#F44336"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 146
    invoke-virtual {v13, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 148
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v12, v9, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 153
    invoke-virtual {v12, v4, v1, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    invoke-virtual {v0, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {v0, v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/gentahax/main/FloatingTextEditor;->getOverlayType()I

    move-result v19

    const/16 v21, -0x3

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v20, 0x520

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x30

    .line 170
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x32

    .line 171
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 173
    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda4;

    invoke-direct {v0, v10, v2, v3}, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda4;-><init>(Landroid/widget/EditText;Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance v0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda5;

    invoke-direct {v0, v2, v3}, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda5;-><init>(Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v9, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;-><init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/WindowManager$LayoutParams;Landroid/widget/EditText;)V

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    new-instance v0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda7;

    invoke-direct {v0, v6, v10}, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda7;-><init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    new-instance v0, Lcom/gentahax/main/FloatingTextEditor$2;

    invoke-direct {v0, v6, v11}, Lcom/gentahax/main/FloatingTextEditor$2;-><init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    invoke-direct {v6, v10}, Lcom/gentahax/main/FloatingTextEditor;->highlightLuaAsync(Landroid/widget/EditText;)V

    return-void
.end method

.method public mBind(Ljava/lang/String;)V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 43
    iget-object p1, p0, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    const-string v0, "Please allow overlay permission"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 44
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    .line 45
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 50
    :cond_3a
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor;->ctx:Landroid/app/Activity;

    new-instance v1, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda0;-><init>(Lcom/gentahax/main/FloatingTextEditor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor.AnonymousClass1 (com.gentahax.main.FloatingTextEditor$1)
.class Lcom/gentahax/main/FloatingTextEditor$1;
.super Ljava/lang/Object;
.source "FloatingTextEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gentahax/main/FloatingTextEditor;->mBind(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gentahax/main/FloatingTextEditor;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$1;->this$0:Lcom/gentahax/main/FloatingTextEditor;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 89
    iget-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$1;->this$0:Lcom/gentahax/main/FloatingTextEditor;

    invoke-static {p1}, Lcom/gentahax/main/FloatingTextEditor;->access$000(Lcom/gentahax/main/FloatingTextEditor;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 90
    iget-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$1;->this$0:Lcom/gentahax/main/FloatingTextEditor;

    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$1;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/gentahax/main/FloatingTextEditor;->access$100(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V

    :cond_f
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor.AnonymousClass2 (com.gentahax.main.FloatingTextEditor$2)
.class Lcom/gentahax/main/FloatingTextEditor$2;
.super Ljava/lang/Object;
.source "FloatingTextEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gentahax/main/FloatingTextEditor;->mBind(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gentahax/main/FloatingTextEditor;

.field final synthetic val$intervalInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$2;->this$0:Lcom/gentahax/main/FloatingTextEditor;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$2;->val$intervalInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 213
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 214
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$2;->this$0:Lcom/gentahax/main/FloatingTextEditor;

    const/16 v1, 0x32

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/gentahax/main/FloatingTextEditor;->access$202(Lcom/gentahax/main/FloatingTextEditor;I)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_37

    .line 216
    :catch_14
    iget-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$2;->this$0:Lcom/gentahax/main/FloatingTextEditor;

    const/16 v0, 0x96

    invoke-static {p1, v0}, Lcom/gentahax/main/FloatingTextEditor;->access$202(Lcom/gentahax/main/FloatingTextEditor;I)I

    .line 217
    iget-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$2;->val$intervalInput:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$2;->this$0:Lcom/gentahax/main/FloatingTextEditor;

    invoke-static {v0}, Lcom/gentahax/main/FloatingTextEditor;->access$200(Lcom/gentahax/main/FloatingTextEditor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$2;->val$intervalInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :goto_37
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda0 (com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/FloatingTextEditor;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/FloatingTextEditor;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda0;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda0;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gentahax/main/FloatingTextEditor;->lambda$mBind$4$com-gentahax-main-FloatingTextEditor(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda1 (com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/FloatingTextEditor;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda1;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda1;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/gentahax/main/FloatingTextEditor;->lambda$highlightLuaAsync$7$com-gentahax-main-FloatingTextEditor(Landroid/widget/EditText;)V

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda2 (com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/FloatingTextEditor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/text/Spannable;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/FloatingTextEditor;Ljava/lang/String;Landroid/text/Spannable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda2;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda2;->f$2:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda2;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda2;->f$2:Landroid/text/Spannable;

    invoke-virtual {v0, v1, v2}, Lcom/gentahax/main/FloatingTextEditor;->lambda$highlightLuaAsync$6$com-gentahax-main-FloatingTextEditor(Ljava/lang/String;Landroid/text/Spannable;)V

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda3 (com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda3;
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

    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda3;->f$0:Lcom/gentahax/main/LineNumberView;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda3;->f$0:Lcom/gentahax/main/LineNumberView;

    invoke-static {v0}, Lcom/gentahax/main/FloatingTextEditor;->$r8$lambda$F-ERKxqXZLFg4zetwNA3UklvJ2A(Lcom/gentahax/main/LineNumberView;)V

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda4 (com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/view/WindowManager;

.field public final synthetic f$2:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda4;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda4;->f$1:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda4;->f$2:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda4;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda4;->f$1:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda4;->f$2:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, p1}, Lcom/gentahax/main/FloatingTextEditor;->lambda$mBind$0(Landroid/widget/EditText;Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda5 (com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/WindowManager;

.field public final synthetic f$1:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda5;->f$0:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda5;->f$1:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda5;->f$0:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda5;->f$1:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, p1}, Lcom/gentahax/main/FloatingTextEditor;->lambda$mBind$1(Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda6 (com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/FloatingTextEditor;

.field public final synthetic f$1:Landroid/view/WindowManager;

.field public final synthetic f$2:Landroid/widget/LinearLayout;

.field public final synthetic f$3:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic f$4:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/WindowManager$LayoutParams;Landroid/widget/EditText;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$1:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$2:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$3:Landroid/view/WindowManager$LayoutParams;

    iput-object p5, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$4:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$1:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$3:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda6;->f$4:Landroid/widget/EditText;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/gentahax/main/FloatingTextEditor;->lambda$mBind$2$com-gentahax-main-FloatingTextEditor(Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/WindowManager$LayoutParams;Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda7 (com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gentahax/main/FloatingTextEditor;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/gentahax/main/FloatingTextEditor;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda7;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda7;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda7;->f$0:Lcom/gentahax/main/FloatingTextEditor;

    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda7;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/gentahax/main/FloatingTextEditor;->lambda$mBind$3$com-gentahax-main-FloatingTextEditor(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda8 (com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/text/Spannable;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/text/Spannable;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda8;->f$0:Landroid/text/Spannable;

    iput-object p2, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda8;->f$0:Landroid/text/Spannable;

    iget-object v1, p0, Lcom/gentahax/main/FloatingTextEditor$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/gentahax/main/FloatingTextEditor;->lambda$highlightLuaAsync$5(Landroid/text/Spannable;Ljava/util/List;)V

    return-void
.end method
