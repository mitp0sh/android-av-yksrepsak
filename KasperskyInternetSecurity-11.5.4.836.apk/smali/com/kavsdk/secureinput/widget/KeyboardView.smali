.class public Lcom/kavsdk/secureinput/widget/KeyboardView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final ai:I

.field private static aj:I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Landroid/graphics/Paint;

.field private H:Landroid/graphics/Rect;

.field private I:J

.field private J:J

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:J

.field private Q:J

.field private R:[I

.field private S:Landroid/view/GestureDetector;

.field private T:I

.field private U:I

.field private V:Z

.field private W:Lis;

.field private Z:Landroid/graphics/Rect;

.field private aa:Z

.field private ab:Liy;

.field private ac:I

.field private ad:Z

.field private ae:I

.field private af:F

.field private ag:F

.field private ah:Landroid/graphics/drawable/Drawable;

.field private ak:[I

.field private al:I

.field private am:I

.field private an:J

.field private ao:Z

.field private ap:Ljava/lang/StringBuilder;

.field private aq:Z

.field private ar:Landroid/graphics/Rect;

.field private as:Landroid/graphics/Bitmap;

.field private at:Z

.field private au:Landroid/graphics/Canvas;

.field private av:Z

.field private aw:Landroid/os/Handler;

.field private d:Lir;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:F

.field private l:Landroid/widget/PopupWindow;

.field private m:I

.field private n:I

.field private final o:[I

.field private p:Landroid/widget/PopupWindow;

.field private q:Z

.field private r:Landroid/view/View;

.field private s:Ljava/util/Map;

.field private t:[Lis;

.field private u:Lix;

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const-class v0, Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->a:Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x5

    aput v2, v0, v1

    sput-object v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->b:[I

    .line 132
    sget-object v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->EMPTY_STATE_SET:[I

    sput-object v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->c:[I

    .line 220
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ai:I

    .line 222
    const/16 v0, 0xc

    sput v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aj:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    iput v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->o:[I

    .line 174
    iput-boolean v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->x:Z

    .line 175
    iput-boolean v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->y:Z

    .line 176
    iput-boolean v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->z:Z

    .line 195
    iput v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    .line 196
    iput v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->O:I

    .line 199
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->R:[I

    .line 201
    iput v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->T:I

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Z:Landroid/graphics/Rect;

    .line 207
    new-instance v0, Liy;

    invoke-direct {v0, v2}, Liy;-><init>(B)V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ab:Liy;

    .line 212
    iput v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ae:I

    .line 223
    sget v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aj:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ak:[I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ap:Ljava/lang/StringBuilder;

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ar:Landroid/graphics/Rect;

    .line 247
    new-instance v0, Liv;

    invoke-direct {v0, p0}, Liv;-><init>(Lcom/kavsdk/secureinput/widget/KeyboardView;)V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    .line 277
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, LiF;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ah:Landroid/graphics/drawable/Drawable;

    .line 286
    iput v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->v:I

    .line 287
    iput v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->m:I

    iput v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->n:I

    .line 289
    invoke-static {}, LiF;->d()I

    move-result v0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->g:I

    .line 290
    invoke-static {}, LiF;->e()I

    move-result v0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->h:I

    .line 291
    invoke-static {}, LiF;->f()I

    move-result v0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->f:I

    .line 293
    iput v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->U:I

    .line 294
    iput v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->j:I

    .line 295
    iput v4, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->i:F

    .line 297
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->k:F

    .line 299
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->l:Landroid/widget/PopupWindow;

    .line 300
    iput-boolean v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->y:Z

    .line 309
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 311
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->p:Landroid/widget/PopupWindow;

    .line 312
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->p:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iput-object p0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->r:Landroid/view/View;

    .line 316
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->G:Landroid/graphics/Paint;

    .line 317
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 318
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 319
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->G:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 320
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->G:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 322
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->H:Landroid/graphics/Rect;

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->s:Ljava/util/Map;

    .line 324
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ah:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->H:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 326
    const/high16 v0, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ac:I

    .line 327
    iput-boolean v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ad:Z

    .line 329
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->o()V

    .line 330
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->g()V

    .line 331
    return-void
.end method

.method private a(II[I)I
    .locals 16

    .prologue
    .line 761
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    .line 762
    const/4 v6, -0x1

    .line 763
    const/4 v4, -0x1

    .line 764
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->w:I

    add-int/lit8 v3, v2, 0x1

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ak:[I

    const v5, 0x7fffffff

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lir;->a(II)[I

    move-result-object v9

    .line 767
    array-length v10, v9

    .line 768
    const/4 v2, 0x0

    move v7, v2

    move v2, v3

    move v3, v4

    move v4, v6

    :goto_0
    if-ge v7, v10, :cond_3

    .line 769
    aget v5, v9, v7

    aget-object v11, v8, v5

    .line 770
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lis;->a(II)Z

    move-result v5

    .line 772
    if-eqz v5, :cond_7

    .line 773
    aget v4, v9, v7

    move v6, v4

    .line 776
    :goto_1
    if-eqz v5, :cond_1

    iget-object v4, v11, Lis;->a:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    .line 781
    iget-object v4, v11, Lis;->a:[I

    array-length v12, v4

    .line 782
    if-lez v2, :cond_6

    .line 783
    const/4 v3, 0x0

    .line 784
    aget v4, v9, v7

    .line 787
    :goto_2
    if-eqz p3, :cond_5

    .line 789
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ak:[I

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 790
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ak:[I

    aget v5, v5, v2

    if-lez v5, :cond_2

    .line 792
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ak:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ak:[I

    add-int v14, v2, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ak:[I

    array-length v15, v15

    sub-int/2addr v15, v2

    sub-int/2addr v15, v12

    invoke-static {v5, v2, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    add-int v5, v2, v12

    move-object/from16 v0, p3

    array-length v13, v0

    sub-int/2addr v13, v2

    sub-int/2addr v13, v12

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-static {v0, v2, v1, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v12, :cond_0

    .line 797
    add-int v13, v2, v5

    iget-object v14, v11, Lis;->a:[I

    aget v14, v14, v5

    aput v14, p3, v13

    .line 798
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ak:[I

    add-int v14, v2, v5

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 796
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_0
    move v2, v3

    move v3, v4

    .line 768
    :cond_1
    :goto_5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v6

    goto :goto_0

    .line 789
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 805
    :cond_3
    const/4 v2, -0x1

    if-ne v4, v2, :cond_4

    .line 808
    :goto_6
    return v3

    :cond_4
    move v3, v4

    goto :goto_6

    :cond_5
    move v2, v3

    move v3, v4

    goto :goto_5

    :cond_6
    move v4, v3

    move v3, v2

    goto :goto_2

    :cond_7
    move v6, v4

    goto :goto_1
.end method

.method public static synthetic a(Lcom/kavsdk/secureinput/widget/KeyboardView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a([Lis;Lis;ILjava/util/Random;)Lis;
    .locals 5

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 474
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 475
    invoke-virtual {p3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 476
    aget-object v0, p0, v0

    .line 477
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lis;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lis;->i:I

    iget v4, p1, Lis;->i:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lis;->e:I

    iget v4, p1, Lis;->e:I

    if-ne v3, v4, :cond_0

    .line 482
    :goto_1
    return-object v0

    .line 474
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lis;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 844
    iget-boolean v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ao:Z

    if-eqz v1, :cond_1

    .line 846
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ap:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 847
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ap:Ljava/lang/StringBuilder;

    iget-object v2, p1, Lis;->a:[I

    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->am:I

    if-gez v3, :cond_0

    :goto_0
    aget v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 848
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ap:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 850
    :goto_1
    return-object v0

    .line 847
    :cond_0
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->am:I

    goto :goto_0

    .line 850
    :cond_1
    iget-object v0, p1, Lis;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    invoke-virtual {v0}, Lir;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 588
    :cond_0
    return-object p1
.end method

.method private a(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 855
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    .line 856
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->l:Landroid/widget/PopupWindow;

    .line 858
    iput p1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    .line 860
    iget-object v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    .line 861
    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    if-eq v0, v3, :cond_1

    .line 862
    if-eq v0, v5, :cond_0

    array-length v3, v2

    if-le v3, v0, :cond_0

    .line 863
    aget-object v3, v2, v0

    .line 864
    iget v4, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    invoke-virtual {v3}, Lis;->c()V

    .line 865
    invoke-direct {p0, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->c(I)V

    .line 867
    :cond_0
    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    if-eq v3, v5, :cond_1

    array-length v3, v2

    iget v4, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    if-le v3, v4, :cond_1

    .line 868
    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    aget-object v2, v2, v3

    .line 869
    invoke-virtual {v2}, Lis;->b()V

    .line 870
    iget v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    invoke-direct {p0, v2}, Lcom/kavsdk/secureinput/widget/KeyboardView;->c(I)V

    .line 874
    :cond_1
    iget v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->e:I

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->y:Z

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 876
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    if-ne p1, v5, :cond_2

    .line 878
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x46

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 883
    :cond_2
    if-eq p1, v5, :cond_3

    .line 884
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 886
    invoke-direct {p0, p1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->b(I)V

    .line 894
    :cond_3
    :goto_0
    return-void

    .line 888
    :cond_4
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private a(IIIJ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 812
    if-eq p1, v4, :cond_0

    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    aget-object v1, v0, p1

    .line 814
    iget-object v0, v1, Lis;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    iget-object v1, v1, Lis;->j:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lix;->a(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    invoke-interface {v0, v4}, Lix;->b(I)V

    .line 835
    :goto_0
    iput p1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->al:I

    .line 836
    iput-wide p4, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->an:J

    .line 838
    :cond_0
    return-void

    .line 818
    :cond_1
    iget-object v0, v1, Lis;->a:[I

    aget v0, v0, v5

    .line 820
    sget v2, Lcom/kavsdk/secureinput/widget/KeyboardView;->aj:I

    new-array v2, v2, [I

    .line 821
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 822
    invoke-direct {p0, p2, p3, v2}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(II[I)I

    .line 824
    iget-boolean v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ao:Z

    if-eqz v3, :cond_2

    .line 825
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->am:I

    if-eq v0, v4, :cond_3

    .line 826
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    const/4 v3, -0x5

    sget-object v4, Lcom/kavsdk/secureinput/widget/KeyboardView;->b:[I

    invoke-interface {v0, v3, v4}, Lix;->a(I[I)V

    .line 830
    :goto_1
    iget-object v0, v1, Lis;->a:[I

    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->am:I

    aget v0, v0, v1

    .line 832
    :cond_2
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    invoke-interface {v1, v0, v2}, Lix;->a(I[I)V

    .line 833
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    invoke-interface {v1, v0}, Lix;->b(I)V

    goto :goto_0

    .line 828
    :cond_3
    iput v5, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->am:I

    goto :goto_1
.end method

.method private a(JI)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x320

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 1291
    if-ne p3, v3, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    aget-object v0, v0, p3

    .line 1293
    iget-object v1, v0, Lis;->a:[I

    array-length v1, v1

    if-le v1, v2, :cond_3

    .line 1294
    iput-boolean v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ao:Z

    .line 1295
    iget-wide v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->an:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->al:I

    if-ne p3, v1, :cond_2

    .line 1297
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->am:I

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lis;->a:[I

    array-length v0, v0

    rem-int v0, v1, v0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->am:I

    goto :goto_0

    .line 1300
    :cond_2
    iput v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->am:I

    goto :goto_0

    .line 1304
    :cond_3
    iget-wide v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->an:J

    add-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->al:I

    if-eq p3, v0, :cond_0

    .line 1305
    :cond_4
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->o()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kavsdk/secureinput/widget/KeyboardView;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/kavsdk/secureinput/widget/KeyboardView;IIIJ)V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(IIIJ)V

    return-void
.end method

.method private a([Lis;)V
    .locals 4

    .prologue
    .line 453
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 454
    array-length v0, p1

    .line 456
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 457
    aget-object v2, p1, v0

    .line 458
    invoke-virtual {v2}, Lis;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v3, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a([Lis;Lis;ILjava/util/Random;)Lis;

    move-result-object v3

    .line 461
    if-eqz v3, :cond_0

    .line 462
    invoke-virtual {v2, v3}, Lis;->a(Lis;)V

    .line 456
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 470
    :cond_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Z)Z
    .locals 11

    .prologue
    .line 1080
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v1

    sub-int v2, v0, v1

    .line 1081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1082
    if-ltz v0, :cond_0

    .line 1083
    add-int/lit8 v0, v0, 0x0

    .line 1084
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1085
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1086
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(II[I)I

    move-result v6

    .line 1087
    iput-boolean p2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aa:Z

    .line 1090
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ab:Liy;

    invoke-virtual {v3}, Liy;->a()V

    .line 1091
    :cond_1
    iget-object v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ab:Liy;

    invoke-virtual {v3, p1}, Liy;->a(Landroid/view/MotionEvent;)V

    .line 1094
    iget-boolean v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->V:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 1096
    const/4 v0, 0x1

    .line 1218
    :goto_0
    return v0

    .line 1099
    :cond_2
    iget-object v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->S:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1100
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(I)V

    .line 1101
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1102
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1103
    const/4 v0, 0x1

    goto :goto_0

    .line 1108
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 1216
    :goto_1
    iput v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->C:I

    .line 1217
    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->D:I

    .line 1218
    const/4 v0, 0x1

    goto :goto_0

    .line 1114
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->V:Z

    .line 1115
    iput v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->E:I

    .line 1116
    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->F:I

    .line 1117
    iput v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->L:I

    .line 1118
    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->M:I

    .line 1119
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->P:J

    .line 1120
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    .line 1121
    const/4 v1, -0x1

    iput v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->K:I

    .line 1122
    iput v6, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    .line 1123
    iput v6, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->O:I

    .line 1124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->I:J

    .line 1125
    iget-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->I:J

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->J:J

    .line 1126
    invoke-direct {p0, v4, v5, v6}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(JI)V

    .line 1127
    iget-object v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    aget-object v1, v1, v6

    iget-object v1, v1, Lis;->a:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    :goto_2
    invoke-interface {v3, v1}, Lix;->a(I)V

    .line 1129
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lis;->l:Z

    if-eqz v1, :cond_5

    .line 1130
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    iput v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->T:I

    .line 1131
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1132
    iget-object v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1133
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->k()Z

    .line 1135
    iget-boolean v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->V:Z

    if-eqz v1, :cond_5

    .line 1136
    const/4 v1, -0x1

    iput v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->T:I

    goto :goto_1

    .line 1127
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 1140
    :cond_5
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 1141
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1142
    iget-object v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    sget v4, Lcom/kavsdk/secureinput/widget/KeyboardView;->ai:I

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1144
    :cond_6
    invoke-direct {p0, v6}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(I)V

    goto/16 :goto_1

    .line 1148
    :pswitch_1
    const/4 v1, 0x0

    .line 1149
    const/4 v3, -0x1

    if-eq v6, v3, :cond_7

    .line 1150
    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_9

    .line 1151
    iput v6, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    .line 1152
    iget-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->I:J

    sub-long v7, v4, v7

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    .line 1169
    :cond_7
    :goto_3
    if-nez v1, :cond_8

    .line 1171
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1173
    const/4 v1, -0x1

    if-eq v6, v1, :cond_8

    .line 1174
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1175
    iget-object v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    sget v6, Lcom/kavsdk/secureinput/widget/KeyboardView;->ai:I

    int-to-long v6, v6

    invoke-virtual {v3, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1178
    :cond_8
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    invoke-direct {p0, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(I)V

    .line 1179
    iput-wide v4, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->J:J

    goto/16 :goto_1

    .line 1154
    :cond_9
    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    if-ne v6, v3, :cond_a

    .line 1155
    iget-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    iget-wide v9, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->J:J

    sub-long v9, v4, v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    .line 1156
    const/4 v1, 0x1

    goto :goto_3

    .line 1157
    :cond_a
    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->T:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_7

    .line 1158
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->o()V

    .line 1159
    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    iput v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->K:I

    .line 1160
    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->C:I

    iput v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->L:I

    .line 1161
    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->D:I

    iput v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->M:I

    .line 1162
    iget-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    add-long/2addr v7, v4

    iget-wide v9, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->J:J

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->P:J

    .line 1164
    iput v6, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    .line 1165
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    goto :goto_3

    .line 1183
    :pswitch_2
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->m()V

    .line 1184
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    if-ne v6, v1, :cond_c

    .line 1185
    iget-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    iget-wide v9, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->J:J

    sub-long v9, v4, v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    .line 1193
    :goto_4
    iget-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    iget-wide v9, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->P:J

    cmp-long v1, v7, v9

    if-gez v1, :cond_d

    iget-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    const-wide/16 v9, 0x46

    cmp-long v1, v7, v9

    if-gez v1, :cond_d

    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->K:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_d

    .line 1195
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->K:I

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    .line 1196
    iget v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->L:I

    .line 1197
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->M:I

    move v3, v0

    .line 1199
    :goto_5
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(I)V

    .line 1200
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->R:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1202
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->T:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->V:Z

    if-nez v0, :cond_b

    .line 1203
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(IIIJ)V

    .line 1205
    :cond_b
    invoke-direct {p0, v6}, Lcom/kavsdk/secureinput/widget/KeyboardView;->c(I)V

    .line 1206
    const/4 v0, -0x1

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->T:I

    move v0, v3

    .line 1207
    goto/16 :goto_1

    .line 1187
    :cond_c
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->o()V

    .line 1188
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    iput v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->K:I

    .line 1189
    iget-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    add-long/2addr v7, v4

    iget-wide v9, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->J:J

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->P:J

    .line 1190
    iput v6, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    .line 1191
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Q:J

    goto :goto_4

    .line 1209
    :pswitch_3
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->m()V

    .line 1210
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->n()V

    .line 1211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->V:Z

    .line 1212
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(I)V

    .line 1213
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    invoke-direct {p0, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->c(I)V

    goto/16 :goto_1

    :cond_d
    move v3, v0

    goto :goto_5

    .line 1108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic a(Lcom/kavsdk/secureinput/widget/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->j()Z

    move-result v0

    return v0
.end method

.method private b(I)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 897
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->l:Landroid/widget/PopupWindow;

    .line 898
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    .line 899
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    aget-object v2, v0, p1

    .line 901
    iget-object v0, v2, Lis;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 902
    iget-object v0, v2, Lis;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lis;->d:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v6, v6, v6, v6, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 904
    invoke-virtual {v6, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    :goto_2
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/TextView;->measure(II)V

    .line 918
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget v3, v2, Lis;->e:I

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 920
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_2

    .line 923
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 924
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 926
    :cond_2
    iget v0, v2, Lis;->h:I

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->A:I

    .line 928
    iget v0, v2, Lis;->i:I

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->B:I

    .line 931
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->o:[I

    invoke-virtual {p0, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getLocationInWindow([I)V

    .line 936
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->o:[I

    aget v4, v0, v7

    add-int/lit8 v4, v4, 0x0

    aput v4, v0, v7

    .line 937
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->o:[I

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x0

    aput v4, v0, v5

    .line 940
    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v0, v2, Lis;->k:I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->c:[I

    :goto_3
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 942
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->A:I

    iget-object v4, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->o:[I

    aget v4, v4, v7

    add-int/2addr v0, v4

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->A:I

    .line 943
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->B:I

    iget-object v4, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->o:[I

    aget v4, v4, v5

    add-int/2addr v0, v4

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->B:I

    .line 946
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->o:[I

    invoke-virtual {p0, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getLocationOnScreen([I)V

    .line 947
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->B:I

    iget-object v4, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->o:[I

    aget v4, v4, v5

    add-int/2addr v0, v4

    if-gez v0, :cond_3

    .line 950
    iget v0, v2, Lis;->h:I

    iget v4, v2, Lis;->e:I

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v0, v4, :cond_8

    .line 951
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->A:I

    iget v2, v2, Lis;->e:I

    int-to-double v4, v2

    mul-double/2addr v4, v8

    double-to-int v2, v4

    add-int/2addr v0, v2

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->A:I

    .line 955
    :goto_4
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->B:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->B:I

    .line 958
    :cond_3
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 959
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->A:I

    iget v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->B:I

    invoke-virtual {v1, v0, v2, v3, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 967
    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 902
    :cond_4
    iget-object v0, v2, Lis;->c:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 906
    :cond_5
    invoke-virtual {v6, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 907
    invoke-direct {p0, v2}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Lis;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v0, v2, Lis;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v5, :cond_6

    iget-object v0, v2, Lis;->a:[I

    array-length v0, v0

    if-ge v0, v10, :cond_6

    .line 909
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->g:I

    int-to-float v0, v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 910
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 912
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v6, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 913
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 940
    :cond_7
    sget-object v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->EMPTY_STATE_SET:[I

    goto/16 :goto_3

    .line 953
    :cond_8
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->A:I

    iget v2, v2, Lis;->e:I

    int-to-double v4, v2

    mul-double/2addr v4, v8

    double-to-int v2, v4

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->A:I

    goto :goto_4

    .line 962
    :cond_9
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 963
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 964
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->r:Landroid/view/View;

    iget v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->A:I

    iget v3, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->B:I

    invoke-virtual {v1, v0, v7, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_5
.end method

.method private b(Lir;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 612
    if-nez p1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    .line 614
    if-eqz v2, :cond_0

    .line 615
    array-length v3, v2

    move v1, v0

    .line 617
    :goto_1
    if-ge v0, v3, :cond_2

    .line 618
    aget-object v4, v2, v0

    .line 619
    iget v5, v4, Lis;->e:I

    iget v6, v4, Lis;->f:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v4, v4, Lis;->g:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 621
    :cond_2
    if-ltz v1, :cond_0

    if-eqz v3, :cond_0

    .line 622
    int-to-float v0, v1

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->w:I

    .line 623
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->w:I

    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->w:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->w:I

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kavsdk/secureinput/widget/KeyboardView;)Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->k()Z

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 7

    .prologue
    .line 990
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    if-nez v0, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    aget-object v0, v0, p1

    .line 995
    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->W:Lis;

    .line 996
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ar:Landroid/graphics/Rect;

    iget v2, v0, Lis;->h:I

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lis;->i:I

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lis;->h:I

    iget v5, v0, Lis;->e:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lis;->i:I

    iget v6, v0, Lis;->f:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 998
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->h()V

    .line 999
    iget v1, v0, Lis;->h:I

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lis;->i:I

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lis;->h:I

    iget v4, v0, Lis;->e:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lis;->i:I

    iget v0, v0, Lis;->f:I

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/kavsdk/secureinput/widget/KeyboardView;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aa:Z

    return v0
.end method

.method public static synthetic d(Lcom/kavsdk/secureinput/widget/KeyboardView;)Liy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ab:Liy;

    return-object v0
.end method

.method public static synthetic e(Lcom/kavsdk/secureinput/widget/KeyboardView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ac:I

    return v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->av:Z

    return v0
.end method

.method public static synthetic f(Lcom/kavsdk/secureinput/widget/KeyboardView;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic g(Lcom/kavsdk/secureinput/widget/KeyboardView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->O:I

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 353
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Liw;

    invoke-direct {v2, p0}, Liw;-><init>(Lcom/kavsdk/secureinput/widget/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->S:Landroid/view/GestureDetector;

    .line 405
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->S:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 406
    return-void
.end method

.method public static synthetic h(Lcom/kavsdk/secureinput/widget/KeyboardView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->E:I

    return v0
.end method

.method private h()V
    .locals 23

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->at:Z

    if-eqz v4, :cond_3

    .line 650
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->at:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 653
    :cond_1
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 654
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 655
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    .line 656
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->au:Landroid/graphics/Canvas;

    .line 658
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->i()V

    .line 659
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->at:Z

    .line 661
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->au:Landroid/graphics/Canvas;

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ar:Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    if-nez v4, :cond_4

    .line 758
    :goto_0
    return-void

    .line 666
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->G:Landroid/graphics/Paint;

    .line 667
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ah:Landroid/graphics/drawable/Drawable;

    .line 668
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->Z:Landroid/graphics/Rect;

    .line 669
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->H:Landroid/graphics/Rect;

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v11

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v12

    .line 672
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    .line 673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->W:Lis;

    .line 675
    move-object/from16 v0, p0

    iget v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->h:I

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 676
    const/4 v4, 0x0

    .line 677
    if-eqz v14, :cond_5

    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 679
    iget v6, v14, Lis;->h:I

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x1

    iget v15, v5, Landroid/graphics/Rect;->left:I

    if-gt v6, v15, :cond_5

    iget v6, v14, Lis;->i:I

    add-int/2addr v6, v12

    add-int/lit8 v6, v6, -0x1

    iget v15, v5, Landroid/graphics/Rect;->top:I

    if-gt v6, v15, :cond_5

    iget v6, v14, Lis;->h:I

    iget v15, v14, Lis;->e:I

    add-int/2addr v6, v15

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, 0x1

    iget v15, v5, Landroid/graphics/Rect;->right:I

    if-lt v6, v15, :cond_5

    iget v6, v14, Lis;->i:I

    iget v15, v14, Lis;->f:I

    add-int/2addr v6, v15

    add-int/2addr v6, v12

    add-int/lit8 v6, v6, 0x1

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v5, :cond_5

    .line 683
    const/4 v4, 0x1

    .line 686
    :cond_5
    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 687
    array-length v15, v13

    .line 688
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v15, :cond_e

    .line 689
    aget-object v16, v13, v6

    .line 690
    if-eqz v4, :cond_6

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_a

    .line 691
    :cond_6
    move-object/from16 v0, v16

    iget-object v5, v0, Lis;->b:Ljava/lang/CharSequence;

    if-nez v5, :cond_b

    const/4 v5, 0x0

    .line 697
    :goto_2
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    .line 698
    move-object/from16 v0, v16

    iget v0, v0, Lis;->e:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    move-object/from16 v0, v16

    iget v0, v0, Lis;->f:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 700
    :cond_7
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lis;->e:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lis;->f:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 702
    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Lis;->h:I

    move/from16 v17, v0

    add-int v17, v17, v11

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lis;->i:I

    move/from16 v18, v0

    add-int v18, v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 703
    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 705
    if-eqz v5, :cond_d

    .line 707
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    move-object/from16 v0, v16

    iget-object v0, v0, Lis;->a:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->f:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 709
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 715
    :goto_3
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 717
    move-object/from16 v0, v16

    iget v0, v0, Lis;->e:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lis;->f:I

    move/from16 v18, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v5, v0, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 724
    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v5, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 736
    :cond_9
    :goto_4
    move-object/from16 v0, v16

    iget v5, v0, Lis;->h:I

    neg-int v5, v5

    sub-int/2addr v5, v11

    int-to-float v5, v5

    move-object/from16 v0, v16

    iget v0, v0, Lis;->i:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v16, v16, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 688
    :cond_a
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_1

    .line 691
    :cond_b
    move-object/from16 v0, v16

    iget-object v5, v0, Lis;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 711
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->g:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 712
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_3

    .line 725
    :cond_d
    move-object/from16 v0, v16

    iget-object v5, v0, Lis;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    .line 726
    move-object/from16 v0, v16

    iget v5, v0, Lis;->e:I

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v5, v5, v17

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v5, v5, v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lis;->c:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    sub-int v5, v5, v17

    div-int/lit8 v5, v5, 0x2

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v5, v5, v17

    .line 728
    move-object/from16 v0, v16

    iget v0, v0, Lis;->f:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lis;->c:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v17, v17, v18

    .line 730
    int-to-float v0, v5

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 731
    move-object/from16 v0, v16

    iget-object v0, v0, Lis;->c:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lis;->c:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    move-object/from16 v0, v16

    iget-object v0, v0, Lis;->c:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 733
    move-object/from16 v0, v16

    iget-object v0, v0, Lis;->c:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 734
    neg-int v5, v5

    int-to-float v5, v5

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_4

    .line 738
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->W:Lis;

    .line 740
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aq:Z

    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ar:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0
.end method

.method public static synthetic i(Lcom/kavsdk/secureinput/widget/KeyboardView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->F:I

    return v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 977
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aq:Z

    .line 979
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->invalidate()V

    .line 980
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method private k()Z
    .locals 6

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->T:I

    aget-object v0, v0, v1

    .line 1223
    iget v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->N:I

    iget v2, v0, Lis;->h:I

    iget v3, v0, Lis;->i:I

    iget-wide v4, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->an:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(IIIJ)V

    .line 1224
    const/4 v0, 0x1

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1244
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1247
    :cond_0
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->m()V

    .line 1249
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->n()V

    .line 1250
    iput-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    .line 1251
    iput-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->au:Landroid/graphics/Canvas;

    .line 1252
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1253
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1257
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1258
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aw:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->q:Z

    .line 1271
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->i()V

    .line 1273
    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1284
    const/4 v0, -0x1

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->al:I

    .line 1285
    iput v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->am:I

    .line 1286
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->an:J

    .line 1287
    iput-boolean v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ao:Z

    .line 1288
    return-void
.end method


# virtual methods
.method public final a()Lir;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    return-object v0
.end method

.method public final a(Lir;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 428
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(I)V

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->m()V

    .line 433
    iput-object p1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    .line 434
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    invoke-virtual {v0}, Lir;->a()Ljava/util/List;

    move-result-object v0

    .line 435
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lis;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lis;

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    .line 436
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->t:[Lis;

    invoke-direct {p0, v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a([Lis;)V

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->requestLayout()V

    .line 442
    iput-boolean v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->at:Z

    .line 443
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->i()V

    .line 444
    invoke-direct {p0, p1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->b(Lir;)V

    .line 445
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 448
    iput-boolean v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->V:Z

    .line 449
    return-void
.end method

.method public final a(Lix;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    .line 410
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->av:Z

    .line 350
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    .line 1229
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    .line 1233
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    .line 1237
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->u:Lix;

    .line 1241
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->n()V

    .line 581
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1263
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1264
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->l()V

    .line 1265
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 641
    iget-boolean v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->aq:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->at:Z

    if-eqz v0, :cond_1

    .line 642
    :cond_0
    invoke-direct {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->h()V

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 645
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    if-nez v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->setMeasuredDimension(II)V

    .line 603
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    invoke-virtual {v0}, Lir;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 598
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 599
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    invoke-virtual {v1}, Lir;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 628
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 629
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->d:Lir;

    const-string v1, "resize"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, LiU;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->as:Landroid/graphics/Bitmap;

    .line 636
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 1041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 1042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 1046
    iget v2, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ae:I

    if-eq v8, v2, :cond_2

    .line 1047
    if-ne v8, v10, :cond_1

    .line 1049
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1051
    invoke-direct {p0, v0, v4}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    .line 1052
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1054
    if-ne v9, v10, :cond_0

    .line 1055
    invoke-direct {p0, p1, v10}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    .line 1071
    :cond_0
    :goto_0
    iput v8, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ae:I

    .line 1076
    return v10

    .line 1059
    :cond_1
    iget v5, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->af:F

    iget v6, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ag:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    move v4, v10

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1061
    invoke-direct {p0, v0, v10}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    .line 1062
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1065
    :cond_2
    if-ne v8, v10, :cond_0

    .line 1066
    invoke-direct {p0, p1, v4}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    .line 1067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->af:F

    .line 1068
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/kavsdk/secureinput/widget/KeyboardView;->ag:F

    goto :goto_0
.end method
