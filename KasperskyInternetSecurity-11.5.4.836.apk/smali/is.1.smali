.class public final Lis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final u:[I

.field private static final v:[I

.field private static final w:[I

.field private static final x:[I

.field private static final y:[I

.field private static final z:[I


# instance fields
.field public a:[I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/CharSequence;

.field public k:I

.field public l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/CharSequence;

.field private q:I

.field private r:Z

.field private s:Lir;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lis;->u:[I

    .line 304
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lis;->v:[I

    .line 310
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lis;->w:[I

    .line 314
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lis;->x:[I

    .line 319
    new-array v0, v2, [I

    sput-object v0, Lis;->y:[I

    .line 322
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lis;->z:[I

    return-void

    .line 299
    :array_0
    .array-data 4
        0x101009f
        0x10100a0
    .end array-data

    .line 304
    :array_1
    .array-data 4
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    .line 314
    :array_2
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lit;IILandroid/content/res/XmlResourceParser;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    invoke-direct {p0, p2}, Lis;-><init>(Lit;)V

    .line 347
    iput p3, p0, Lis;->h:I

    .line 348
    iput p4, p0, Lis;->i:I

    .line 350
    const-string v0, "Keyboard"

    invoke-static {v0}, LiU;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 351
    array-length v1, v0

    if-lez v1, :cond_0

    .line 353
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 355
    const-string v1, "Keyboard_keyWidth"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lis;->s:Lir;

    invoke-static {v2}, Lir;->a(Lir;)I

    move-result v2

    iget v3, p2, Lit;->a:I

    invoke-static {v0, v1, v2, v3}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lis;->e:I

    .line 359
    const-string v1, "Keyboard_keyHeight"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lis;->s:Lir;

    invoke-static {v2}, Lir;->c(Lir;)I

    move-result v2

    iget v3, p2, Lit;->b:I

    invoke-static {v0, v1, v2, v3}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lis;->f:I

    .line 363
    const-string v1, "Keyboard_horizontalGap"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lis;->s:Lir;

    invoke-static {v2}, Lir;->a(Lir;)I

    move-result v2

    iget v3, p2, Lit;->c:I

    invoke-static {v0, v1, v2, v3}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lis;->g:I

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    :cond_0
    iget v0, p0, Lis;->h:I

    iget v1, p0, Lis;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lis;->h:I

    .line 373
    const-string v0, "Keyboard_Key"

    invoke-static {v0}, LiU;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 374
    array-length v1, v0

    if-lez v1, :cond_6

    .line 376
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 378
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 380
    const-string v2, "Keyboard_Key_codes"

    invoke-static {v2}, LiU;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 382
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_7

    .line 384
    :cond_1
    new-array v2, v5, [I

    iget v1, v1, Landroid/util/TypedValue;->data:I

    aput v1, v2, v4

    iput-object v2, p0, Lis;->a:[I

    .line 389
    :cond_2
    :goto_0
    const-string v1, "Keyboard_Key_iconPreview"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lis;->d:Landroid/graphics/drawable/Drawable;

    .line 391
    iget-object v1, p0, Lis;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 392
    iget-object v1, p0, Lis;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lis;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lis;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 396
    :cond_3
    const-string v1, "Keyboard_Key_popupCharacters"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lis;->p:Ljava/lang/CharSequence;

    .line 399
    const-string v1, "Keyboard_Key_popupKeyboard"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lis;->k:I

    .line 402
    const-string v1, "Keyboard_Key_isRepeatable"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lis;->l:Z

    .line 405
    const-string v1, "Keyboard_Key_isModifier"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lis;->r:Z

    .line 408
    const-string v1, "Keyboard_Key_isSticky"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lis;->m:Z

    .line 411
    const-string v1, "Keyboard_Key_keyEdgeFlags"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lis;->q:I

    .line 413
    iget v1, p0, Lis;->q:I

    iget v2, p2, Lit;->f:I

    or-int/2addr v1, v2

    iput v1, p0, Lis;->q:I

    .line 415
    const-string v1, "Keyboard_Key_keyIcon"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lis;->c:Landroid/graphics/drawable/Drawable;

    .line 416
    iget-object v1, p0, Lis;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 417
    iget-object v1, p0, Lis;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lis;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lis;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 420
    :cond_4
    const-string v1, "Keyboard_Key_keyLabel"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lis;->b:Ljava/lang/CharSequence;

    .line 421
    const-string v1, "Keyboard_Key_keyOutputText"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lis;->j:Ljava/lang/CharSequence;

    .line 424
    iget-object v1, p0, Lis;->a:[I

    if-nez v1, :cond_5

    iget-object v1, p0, Lis;->b:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 425
    new-array v1, v5, [I

    iget-object v2, p0, Lis;->b:Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput v2, v1, v4

    iput-object v1, p0, Lis;->a:[I

    .line 427
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    :cond_6
    return-void

    .line 385
    :cond_7
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 386
    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lis;->a(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lis;->a:[I

    goto/16 :goto_0
.end method

.method private constructor <init>(Lit;)V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    invoke-static {p1}, Lit;->a(Lit;)Lir;

    move-result-object v0

    iput-object v0, p0, Lis;->s:Lir;

    .line 329
    iget v0, p1, Lit;->b:I

    iput v0, p0, Lis;->f:I

    .line 330
    iget v0, p1, Lit;->a:I

    iput v0, p0, Lis;->e:I

    .line 331
    iget v0, p1, Lit;->c:I

    iput v0, p0, Lis;->g:I

    .line 332
    iget v0, p1, Lit;->f:I

    iput v0, p0, Lis;->q:I

    .line 333
    return-void
.end method

.method private static a(Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 500
    .line 502
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 503
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 504
    :goto_0
    const-string v3, ","

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 508
    :cond_1
    new-array v2, v2, [I

    .line 510
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v3, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    add-int/lit8 v0, v1, 0x1

    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 516
    goto :goto_1

    .line 515
    :catch_0
    move-exception v1

    const-string v1, "Keyboard"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing keycodes "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 516
    goto :goto_1

    .line 518
    :cond_2
    return-object v2
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 438
    iget-boolean v2, p0, Lis;->m:Z

    if-eqz v2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    iget v2, p0, Lis;->q:I

    if-gtz v2, :cond_0

    .line 442
    iget-object v2, p0, Lis;->a:[I

    array-length v2, v2

    if-gt v2, v0, :cond_0

    .line 446
    iget-object v2, p0, Lis;->a:[I

    aget v2, v2, v1

    .line 447
    if-ltz v2, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lis;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 456
    iget v0, p1, Lis;->h:I

    .line 457
    iget v1, p1, Lis;->i:I

    .line 458
    iget v2, p1, Lis;->e:I

    .line 459
    iget v3, p1, Lis;->f:I

    .line 460
    iget v4, p1, Lis;->g:I

    .line 462
    iget v5, p0, Lis;->h:I

    iput v5, p1, Lis;->h:I

    .line 463
    iget v5, p0, Lis;->i:I

    iput v5, p1, Lis;->i:I

    .line 464
    iget v5, p0, Lis;->f:I

    iput v5, p1, Lis;->f:I

    .line 465
    iget v5, p0, Lis;->e:I

    iput v5, p1, Lis;->e:I

    .line 466
    iget v5, p0, Lis;->g:I

    iput v5, p1, Lis;->g:I

    .line 467
    iput-boolean v6, p1, Lis;->t:Z

    .line 469
    iput v0, p0, Lis;->h:I

    .line 470
    iput v1, p0, Lis;->i:I

    .line 471
    iput v3, p0, Lis;->f:I

    .line 472
    iput v2, p0, Lis;->e:I

    .line 473
    iput v4, p0, Lis;->g:I

    .line 474
    iput-boolean v6, p0, Lis;->t:Z

    .line 475
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lis;->t:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lis;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 530
    iget v0, p0, Lis;->q:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_4

    move v0, v1

    .line 531
    :goto_0
    iget v3, p0, Lis;->q:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_5

    move v3, v1

    .line 532
    :goto_1
    iget v4, p0, Lis;->q:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_6

    move v4, v1

    .line 533
    :goto_2
    iget v5, p0, Lis;->q:I

    and-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_7

    move v5, v1

    .line 534
    :goto_3
    iget v6, p0, Lis;->h:I

    if-ge p1, v6, :cond_0

    if-eqz v0, :cond_8

    iget v0, p0, Lis;->h:I

    iget v6, p0, Lis;->e:I

    add-int/2addr v0, v6

    if-gt p1, v0, :cond_8

    :cond_0
    iget v0, p0, Lis;->h:I

    iget v6, p0, Lis;->e:I

    add-int/2addr v0, v6

    if-lt p1, v0, :cond_1

    if-eqz v3, :cond_8

    iget v0, p0, Lis;->h:I

    if-lt p1, v0, :cond_8

    :cond_1
    iget v0, p0, Lis;->i:I

    if-ge p2, v0, :cond_2

    if-eqz v4, :cond_8

    iget v0, p0, Lis;->i:I

    iget v3, p0, Lis;->f:I

    add-int/2addr v0, v3

    if-gt p2, v0, :cond_8

    :cond_2
    iget v0, p0, Lis;->i:I

    iget v3, p0, Lis;->f:I

    add-int/2addr v0, v3

    if-lt p2, v0, :cond_3

    if-eqz v5, :cond_8

    iget v0, p0, Lis;->i:I

    if-lt p2, v0, :cond_8

    .line 540
    :cond_3
    :goto_4
    return v1

    :cond_4
    move v0, v2

    .line 530
    goto :goto_0

    :cond_5
    move v3, v2

    .line 531
    goto :goto_1

    :cond_6
    move v4, v2

    .line 532
    goto :goto_2

    :cond_7
    move v5, v2

    .line 533
    goto :goto_3

    :cond_8
    move v1, v2

    .line 540
    goto :goto_4
.end method

.method public final b(II)I
    .locals 3

    .prologue
    .line 551
    iget v0, p0, Lis;->h:I

    iget v1, p0, Lis;->e:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 552
    iget v1, p0, Lis;->i:I

    iget v2, p0, Lis;->f:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    .line 553
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lis;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lis;->n:Z

    .line 484
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 493
    iget-boolean v0, p0, Lis;->n:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lis;->n:Z

    .line 494
    iget-boolean v0, p0, Lis;->m:Z

    if-eqz v0, :cond_0

    .line 495
    iget-boolean v0, p0, Lis;->o:Z

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lis;->o:Z

    .line 497
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 493
    goto :goto_0

    :cond_2
    move v1, v2

    .line 495
    goto :goto_1
.end method
