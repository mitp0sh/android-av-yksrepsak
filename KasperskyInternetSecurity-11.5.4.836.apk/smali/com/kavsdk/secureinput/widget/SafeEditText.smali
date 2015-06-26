.class public Lcom/kavsdk/secureinput/widget/SafeEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements LiE;


# static fields
.field private static a:I

.field private static b:I

.field private static final c:[B


# instance fields
.field private d:Ljava/lang/CharSequence;

.field private e:Z

.field private f:Landroid/view/View$OnLongClickListener;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnKeyListener;

.field private final i:LiD;

.field private j:Z

.field private k:I

.field private l:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/kavsdk/secureinput/widget/SafeEditText;->a:I

    .line 65
    const/4 v0, 0x1

    sput v0, Lcom/kavsdk/secureinput/widget/SafeEditText;->b:I

    .line 71
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/kavsdk/secureinput/widget/SafeEditText;->c:[B

    .line 72
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sget-object v1, Lcom/kavsdk/secureinput/widget/SafeEditText;->c:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 90
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->k:I

    .line 372
    new-instance v0, LiB;

    invoke-direct {v0, p0}, LiB;-><init>(Lcom/kavsdk/secureinput/widget/SafeEditText;)V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->l:Landroid/view/View$OnKeyListener;

    .line 95
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->setInputType(I)V

    .line 97
    invoke-static {p1, p2, p3}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {}, LiD;->a()LiD;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    .line 101
    return-void
.end method

.method public static synthetic a(Lcom/kavsdk/secureinput/widget/SafeEditText;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->f:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 122
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101014f

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1, p2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    return-object v1
.end method

.method private static a(IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    if-lez p0, :cond_0

    .line 240
    new-array v1, p0, [C

    .line 241
    const/16 v0, 0x2022

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 242
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 523
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getCompoundPaddingLeft()I

    move-result v2

    .line 398
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getCompoundPaddingTop()I

    move-result v1

    .line 399
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getCompoundPaddingRight()I

    move-result v3

    .line 400
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getCompoundPaddingBottom()I

    move-result v4

    .line 401
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getScrollX()I

    move-result v5

    .line 402
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getScrollY()I

    move-result v6

    .line 403
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getRight()I

    move-result v7

    .line 404
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getLeft()I

    move-result v8

    .line 405
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getBottom()I

    move-result v9

    .line 406
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getTop()I

    move-result v10

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 410
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getExtendedPaddingTop()I

    move-result v11

    .line 411
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getExtendedPaddingBottom()I

    move-result v0

    .line 413
    sub-int v12, v9, v10

    sub-int v4, v12, v4

    sub-int v1, v4, v1

    .line 414
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    .line 416
    add-int v1, v2, v5

    int-to-float v12, v1

    .line 417
    if-nez v6, :cond_1

    const/4 v1, 0x0

    .line 418
    :goto_0
    sub-int/2addr v7, v8

    sub-int v3, v7, v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    .line 419
    sub-int v5, v9, v10

    add-int/2addr v5, v6

    if-ne v6, v4, :cond_0

    const/4 v0, 0x0

    :cond_0
    sub-int v0, v5, v0

    int-to-float v0, v0

    .line 422
    invoke-virtual {p1, v12, v1, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 423
    int-to-float v0, v2

    int-to-float v1, v11

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 424
    return-void

    .line 417
    :cond_1
    add-int v1, v11, v6

    int-to-float v1, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 511
    const-string v0, ""

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->d:Ljava/lang/CharSequence;

    .line 512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->d:Ljava/lang/CharSequence;

    .line 516
    :cond_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 538
    array-length v0, p0

    new-array v3, v0, [B

    .line 539
    sget-object v4, Lcom/kavsdk/secureinput/widget/SafeEditText;->c:[B

    move v0, v1

    move v2, v1

    .line 541
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_1

    .line 542
    aget-byte v5, p0, v0

    aget-byte v6, v4, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 543
    add-int/lit8 v2, v2, 0x1

    .line 544
    array-length v5, v4

    if-lt v2, v5, :cond_0

    move v2, v1

    .line 541
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_1
    return-object v3
.end method

.method private b()I
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 314
    invoke-virtual {p0, v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getLocationInWindow([I)V

    .line 315
    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 313
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic b(Lcom/kavsdk/secureinput/widget/SafeEditText;)LiD;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 428
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    invoke-direct {p0, p1}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a(Landroid/graphics/Canvas;)V

    .line 433
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 434
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 436
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getExtendedPaddingTop()I

    move-result v0

    .line 437
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getExtendedPaddingBottom()I

    move-result v3

    .line 439
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getHeight()I

    move-result v4

    sub-int v3, v4, v3

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 440
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getTextSize()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 442
    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getGravity()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    .line 444
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 445
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    .line 448
    :cond_0
    int-to-float v0, v0

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 450
    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/kavsdk/secureinput/widget/SafeEditText;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-virtual {v0}, LiD;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-virtual {v0}, LiD;->b()V

    .line 334
    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 454
    invoke-direct {p0, p1}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a(Landroid/graphics/Canvas;)V

    .line 456
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getExtendedPaddingTop()I

    move-result v8

    .line 457
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getExtendedPaddingBottom()I

    move-result v9

    .line 459
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->e()Ljava/lang/CharSequence;

    move-result-object v1

    .line 460
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 461
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    .line 462
    :goto_0
    if-ge v0, v10, :cond_0

    .line 463
    new-instance v4, LiC;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {v4, v0, v5}, LiC;-><init>(IC)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 467
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 468
    new-array v1, v3, [C

    .line 470
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 472
    invoke-static {v11}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 473
    new-array v7, v3, [F

    .line 474
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v4, v2

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LiC;

    .line 475
    iget-char v13, v0, LiC;->a:C

    aput-char v13, v1, v2

    .line 476
    invoke-virtual {v6, v1, v2, v3, v7}, Landroid/text/TextPaint;->getTextWidths([CII[F)I

    .line 477
    aget v13, v7, v2

    iput v13, v0, LiC;->b:F

    .line 479
    invoke-virtual {v6, v1, v2, v3, v5}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 480
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    goto :goto_1

    .line 484
    :cond_1
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 485
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LiC;

    iget v0, v0, LiC;->b:F

    move v5, v3

    move v7, v0

    .line 486
    :goto_2
    if-ge v5, v10, :cond_2

    .line 487
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LiC;

    .line 488
    iput v7, v0, LiC;->c:F

    .line 489
    iget v0, v0, LiC;->b:F

    add-float/2addr v7, v0

    .line 486
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 493
    :cond_2
    invoke-static {v11}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 495
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getHeight()I

    move-result v0

    sub-int/2addr v0, v9

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 496
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v5, v0, v4

    .line 497
    iget v4, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->k:I

    sget v7, Lcom/kavsdk/secureinput/widget/SafeEditText;->b:I

    if-ne v4, v7, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getTextSize()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v5, v0, v4

    .line 501
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LiC;

    .line 502
    iget-char v4, v0, LiC;->a:C

    aput-char v4, v1, v2

    .line 503
    iget v4, v0, LiC;->c:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 506
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 507
    return-void
.end method

.method public static synthetic d(Lcom/kavsdk/secureinput/widget/SafeEditText;)Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->h:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 347
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 348
    return-void
.end method

.method private e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->d:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, LiD;->a(Landroid/app/Activity;)V

    .line 323
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-virtual {v0, p0}, LiD;->a(LiE;)V

    .line 324
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->b()I

    move-result v1

    invoke-virtual {v0, v1}, LiD;->c(I)V

    .line 325
    return-void
.end method

.method public final a(I)V
    .locals 5

    .prologue
    const/16 v4, 0x43

    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 353
    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-virtual {v0}, LiD;->b()V

    .line 355
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->l:Landroid/view/View$OnKeyListener;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, p0, v3, v1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 370
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, -0x5

    if-ne p1, v0, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 362
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->l:Landroid/view/View$OnKeyListener;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, p0, v4, v1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 368
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public extendSelection(I)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->e:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 188
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-virtual {v0}, LiD;->c()V

    .line 310
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 296
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-virtual {v0}, LiD;->c()V

    .line 298
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/kavsdk/secureinput/widget/SafeEditText;->c(Landroid/graphics/Canvas;)V

    .line 393
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 391
    :cond_1
    invoke-direct {p0, p1}, Lcom/kavsdk/secureinput/widget/SafeEditText;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    .line 134
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Liz;

    invoke-direct {v0, p0}, Liz;-><init>(Lcom/kavsdk/secureinput/widget/SafeEditText;)V

    invoke-super {p0, v0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 148
    new-instance v0, LiA;

    invoke-direct {v0, p0}, LiA;-><init>(Lcom/kavsdk/secureinput/widget/SafeEditText;)V

    invoke-super {p0, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->l:Landroid/view/View$OnKeyListener;

    invoke-super {p0, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    .line 257
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->d()V

    .line 259
    invoke-virtual {p0, v2}, Lcom/kavsdk/secureinput/widget/SafeEditText;->setCursorVisible(Z)V

    .line 261
    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->c()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 275
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 280
    if-nez p1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-virtual {v0}, LiD;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->j:Z

    .line 282
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->i:LiD;

    invoke-virtual {v0}, LiD;->c()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->j:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a()V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->g:Landroid/view/View$OnClickListener;

    .line 174
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->h:Landroid/view/View$OnKeyListener;

    .line 184
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->f:Landroid/view/View$OnLongClickListener;

    .line 169
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 220
    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public setSelection(II)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public setShowText(Z)V
    .locals 0

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->e:Z

    .line 214
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->invalidate()V

    .line 215
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a(Ljava/lang/CharSequence;)V

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x2022

    invoke-static {v0, v1}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a(IC)Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 206
    return-void
.end method

.method public setVerticalTextAlign(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/kavsdk/secureinput/widget/SafeEditText;->k:I

    .line 116
    return-void
.end method
