.class public final Lcom/kms/KisShieldView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private g:Lcom/kms/KisShieldView$ShieldState;

.field private h:Lkb;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/Paint;

.field private o:Ljava/lang/Runnable;

.field private p:Landroid/os/Handler;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/Runnable;

.field private u:Landroid/os/Handler;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Paint;

.field private x:Z

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/kms/KisShieldView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kms/KisShieldView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->e:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->f:Landroid/graphics/Rect;

    .line 82
    iput v1, p0, Lcom/kms/KisShieldView;->D:F

    .line 83
    iput v1, p0, Lcom/kms/KisShieldView;->E:F

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/kms/KisShieldView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->e:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->f:Landroid/graphics/Rect;

    .line 82
    iput v1, p0, Lcom/kms/KisShieldView;->D:F

    .line 83
    iput v1, p0, Lcom/kms/KisShieldView;->E:F

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/kms/KisShieldView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public static synthetic a(Lcom/kms/KisShieldView;F)F
    .locals 1

    .prologue
    .line 29
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/kms/KisShieldView;->D:F

    return v0
.end method

.method public static synthetic a(Lcom/kms/KisShieldView;I)I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/KisShieldView;->y:I

    return v0
.end method

.method public static synthetic a(Lcom/kms/KisShieldView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kms/KisShieldView;->j:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/kms/KisShieldView;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/KisShieldView;->w:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/KisShieldView;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/KisShieldView;->u:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/KisShieldView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/KisShieldView;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 271
    sget-object v0, Lng;->ShieldView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    move v0, v1

    .line 273
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 274
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 273
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v3, v4}, Lkg;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/kms/KisShieldView;->i:Landroid/graphics/Bitmap;

    .line 277
    iget-object v3, p0, Lcom/kms/KisShieldView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/kms/KisShieldView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/kms/KisShieldView;->z:F

    goto :goto_1

    .line 280
    :pswitch_1
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/kms/KisShieldView;->G:I

    goto :goto_1

    .line 283
    :pswitch_2
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/kms/KisShieldView;->H:I

    goto :goto_1

    .line 286
    :pswitch_3
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/kms/KisShieldView;->I:I

    goto :goto_1

    .line 289
    :pswitch_4
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/kms/KisShieldView;->J:I

    goto :goto_1

    .line 292
    :pswitch_5
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/kms/KisShieldView;->K:I

    goto :goto_1

    .line 295
    :pswitch_6
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/kms/KisShieldView;->L:I

    goto :goto_1

    .line 298
    :pswitch_7
    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/kms/KisShieldView;->B:F

    goto :goto_1

    .line 301
    :pswitch_8
    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/kms/KisShieldView;->C:F

    goto :goto_1

    .line 305
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    iget v0, p0, Lcom/kms/KisShieldView;->G:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/kms/KisShieldView;->H:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/kms/KisShieldView;->I:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/kms/KisShieldView;->J:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/kms/KisShieldView;->K:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/kms/KisShieldView;->L:I

    if-nez v0, :cond_2

    .line 309
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Necessary params are not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_2
    invoke-direct {p0}, Lcom/kms/KisShieldView;->g()V

    .line 313
    sget-object v0, Lcom/kms/KisShieldView$ShieldState;->Info:Lcom/kms/KisShieldView$ShieldState;

    invoke-virtual {p0, v0}, Lcom/kms/KisShieldView;->setShieldState(Lcom/kms/KisShieldView$ShieldState;)V

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/KisShieldView;->setSmoothAnimation(Z)V

    .line 339
    return-void

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(Landroid/content/res/Resources;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kms/KisShieldView;->j:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    .line 395
    :cond_0
    iget v0, p0, Lcom/kms/KisShieldView;->O:I

    if-ne v0, p2, :cond_2

    .line 463
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iput p2, p0, Lcom/kms/KisShieldView;->O:I

    .line 402
    invoke-static {p1, p2}, Lkg;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/kms/KisShieldView;->e:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 405
    iget-object v1, p0, Lcom/kms/KisShieldView;->e:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 406
    iget-object v1, p0, Lcom/kms/KisShieldView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 407
    iget-object v1, p0, Lcom/kms/KisShieldView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 409
    iget-object v1, p0, Lcom/kms/KisShieldView;->j:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 410
    iput-object v0, p0, Lcom/kms/KisShieldView;->j:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 414
    :cond_3
    iput-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    .line 417
    iget-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/kms/KisShieldView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/kms/KisShieldView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 419
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bitmaps must have the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_5
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->x:Z

    if-nez v0, :cond_1

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/KisShieldView;->x:Z

    .line 424
    iput v3, p0, Lcom/kms/KisShieldView;->y:I

    .line 425
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->u:Landroid/os/Handler;

    .line 426
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->w:Landroid/graphics/Paint;

    .line 427
    new-instance v0, LjZ;

    invoke-direct {v0, p0}, LjZ;-><init>(Lcom/kms/KisShieldView;)V

    iput-object v0, p0, Lcom/kms/KisShieldView;->t:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x32

    const/16 v4, 0xff

    .line 509
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->x:Z

    if-eqz v0, :cond_2

    .line 510
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/KisShieldView;->v:Landroid/graphics/Bitmap;

    .line 512
    :goto_0
    iget-object v1, p0, Lcom/kms/KisShieldView;->w:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kms/KisShieldView;->y:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 513
    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/kms/KisShieldView;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 515
    iget-object v0, p0, Lcom/kms/KisShieldView;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kms/KisShieldView;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 516
    iget-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/kms/KisShieldView;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 518
    iget v0, p0, Lcom/kms/KisShieldView;->y:I

    add-int/lit8 v0, v0, 0x19

    if-ge v0, v4, :cond_1

    .line 519
    iget v0, p0, Lcom/kms/KisShieldView;->y:I

    add-int/lit8 v0, v0, 0x19

    iput v0, p0, Lcom/kms/KisShieldView;->y:I

    .line 520
    iget-object v0, p0, Lcom/kms/KisShieldView;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kms/KisShieldView;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    :goto_1
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/kms/KisShieldView;->j:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 523
    :cond_1
    iput v4, p0, Lcom/kms/KisShieldView;->y:I

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/KisShieldView;->x:Z

    .line 525
    iget-object v0, p0, Lcom/kms/KisShieldView;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kms/KisShieldView;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/kms/KisShieldView;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static synthetic a(Lcom/kms/KisShieldView;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->r:Z

    return v0
.end method

.method public static synthetic a(Lcom/kms/KisShieldView;Z)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/KisShieldView;->s:Z

    return v0
.end method

.method public static synthetic b(Lcom/kms/KisShieldView;F)F
    .locals 1

    .prologue
    .line 29
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/kms/KisShieldView;->E:F

    return v0
.end method

.method public static synthetic b(Lcom/kms/KisShieldView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/KisShieldView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/KisShieldView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/KisShieldView;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/KisShieldView;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kms/KisShieldView;->e()V

    return-void
.end method

.method public static synthetic d(Lcom/kms/KisShieldView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/KisShieldView;->v:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 212
    invoke-virtual {p0}, Lcom/kms/KisShieldView;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iput-boolean v0, p0, Lcom/kms/KisShieldView;->s:Z

    .line 214
    iget-object v1, p0, Lcom/kms/KisShieldView;->l:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/kms/KisShieldView;->v:Landroid/graphics/Bitmap;

    .line 215
    iput v2, p0, Lcom/kms/KisShieldView;->D:F

    .line 216
    iput v2, p0, Lcom/kms/KisShieldView;->E:F

    .line 217
    invoke-direct {p0}, Lcom/kms/KisShieldView;->f()V

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic d(Lcom/kms/KisShieldView;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->x:Z

    return v0
.end method

.method public static synthetic e(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kms/KisShieldView;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kms/KisShieldView;->x:Z

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/kms/KisShieldView;->h:Lkb;

    if-nez v0, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/kms/KisShieldView;->f()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/kms/KisShieldView;->h:Lkb;

    invoke-interface {v0}, Lkb;->a()V

    goto :goto_0
.end method

.method public static synthetic f(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kms/KisShieldView;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    sget-object v0, Lcom/kms/KisShieldView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating shield with state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kms/KisShieldView;->g:Lcom/kms/KisShieldView$ShieldState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/kms/KisShieldView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 346
    invoke-virtual {p0}, Lcom/kms/KisShieldView;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    sget-object v0, Lka;->a:[I

    iget-object v2, p0, Lcom/kms/KisShieldView;->g:Lcom/kms/KisShieldView$ShieldState;

    invoke-virtual {v2}, Lcom/kms/KisShieldView$ShieldState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 350
    :pswitch_0
    iget v0, p0, Lcom/kms/KisShieldView;->G:I

    .line 363
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/kms/KisShieldView;->a(Landroid/content/res/Resources;I)V

    .line 365
    iget-object v0, p0, Lcom/kms/KisShieldView;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/kms/KisShieldView;->v:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kms/KisShieldView;->l:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/kms/KisShieldView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    :cond_0
    iput-object v3, p0, Lcom/kms/KisShieldView;->l:Landroid/graphics/Bitmap;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/kms/KisShieldView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/kms/KisShieldView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 374
    iput-object v3, p0, Lcom/kms/KisShieldView;->m:Landroid/graphics/Bitmap;

    .line 386
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/kms/KisShieldView;->invalidate(Landroid/graphics/Rect;)V

    .line 387
    return-void

    .line 353
    :pswitch_1
    iget v0, p0, Lcom/kms/KisShieldView;->H:I

    goto :goto_0

    .line 356
    :pswitch_2
    iget v0, p0, Lcom/kms/KisShieldView;->I:I

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/kms/KisShieldView;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 379
    iget v0, p0, Lcom/kms/KisShieldView;->K:I

    invoke-static {v1, v0}, Lkg;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/KisShieldView;->l:Landroid/graphics/Bitmap;

    .line 380
    iget v0, p0, Lcom/kms/KisShieldView;->L:I

    invoke-static {v1, v0}, Lkg;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/KisShieldView;->m:Landroid/graphics/Bitmap;

    .line 382
    iget v0, p0, Lcom/kms/KisShieldView;->J:I

    invoke-direct {p0, v1, v0}, Lcom/kms/KisShieldView;->a(Landroid/content/res/Resources;I)V

    goto :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private g()V
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 466
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->n:Landroid/graphics/Paint;

    .line 467
    iget-object v0, p0, Lcom/kms/KisShieldView;->n:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 468
    iget-object v0, p0, Lcom/kms/KisShieldView;->n:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 469
    iget-object v0, p0, Lcom/kms/KisShieldView;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 470
    iget-object v0, p0, Lcom/kms/KisShieldView;->n:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    return-void
.end method

.method public static synthetic g(Lcom/kms/KisShieldView;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->s:Z

    return v0
.end method

.method public static synthetic h(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kms/KisShieldView;->v:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x32

    .line 495
    invoke-virtual {p0}, Lcom/kms/KisShieldView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/kms/KisShieldView;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget v0, p0, Lcom/kms/KisShieldView;->D:F

    iget v1, p0, Lcom/kms/KisShieldView;->F:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kms/KisShieldView;->D:F

    .line 497
    iget-object v0, p0, Lcom/kms/KisShieldView;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kms/KisShieldView;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->r:Z

    if-eqz v0, :cond_0

    .line 500
    iget v0, p0, Lcom/kms/KisShieldView;->E:F

    iput v0, p0, Lcom/kms/KisShieldView;->D:F

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/KisShieldView;->r:Z

    .line 502
    iget-object v0, p0, Lcom/kms/KisShieldView;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kms/KisShieldView;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 534
    iget v0, p0, Lcom/kms/KisShieldView;->F:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kms/KisShieldView;->E:F

    iget v1, p0, Lcom/kms/KisShieldView;->D:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kms/KisShieldView;->F:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic i(Lcom/kms/KisShieldView;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kms/KisShieldView;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/kms/KisShieldView;->a:Ljava/lang/String;

    const-string v1, "Action cleared"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/KisShieldView;->h:Lkb;

    .line 145
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kms/KisShieldView;->x:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    sget-object v0, Lcom/kms/KisShieldView;->a:Ljava/lang/String;

    const-string v1, "Set progress action set"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lke;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lke;-><init>(Lcom/kms/KisShieldView;FZ)V

    iput-object v0, p0, Lcom/kms/KisShieldView;->h:Lkb;

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/kms/KisShieldView;->d()Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/kms/KisShieldView;->D:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/kms/KisShieldView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kms/KisShieldView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 542
    iget-object v0, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 543
    invoke-direct {p0, p1}, Lcom/kms/KisShieldView;->a(Landroid/graphics/Canvas;)V

    .line 586
    :goto_0
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->q:Z

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/kms/KisShieldView;->h()V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kms/KisShieldView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kms/KisShieldView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 591
    iget-object v0, p0, Lcom/kms/KisShieldView;->i:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 604
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 605
    return-void

    .line 546
    :cond_1
    iget v0, p0, Lcom/kms/KisShieldView;->N:I

    iget v1, p0, Lcom/kms/KisShieldView;->M:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 547
    iget v1, p0, Lcom/kms/KisShieldView;->D:F

    sub-float v1, v4, v1

    div-float/2addr v1, v4

    .line 548
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 550
    iget-object v2, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 551
    iget-object v2, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget v3, p0, Lcom/kms/KisShieldView;->N:I

    sub-int v1, v3, v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 553
    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 554
    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 555
    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/kms/KisShieldView;->A:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 556
    invoke-direct {p0, p1}, Lcom/kms/KisShieldView;->a(Landroid/graphics/Canvas;)V

    .line 558
    iget-object v1, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 559
    iget-object v1, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 560
    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 561
    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 562
    iget-object v1, p0, Lcom/kms/KisShieldView;->l:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 564
    iget v1, p0, Lcom/kms/KisShieldView;->D:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/kms/KisShieldView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/kms/KisShieldView;->A:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 566
    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 567
    iget-object v1, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kms/KisShieldView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 568
    iget-object v1, p0, Lcom/kms/KisShieldView;->m:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/kms/KisShieldView;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 571
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/kms/KisShieldView;->D:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 573
    iget-object v2, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    .line 574
    iget v3, p0, Lcom/kms/KisShieldView;->z:F

    mul-float/2addr v2, v3

    .line 575
    iget-object v3, p0, Lcom/kms/KisShieldView;->n:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 576
    iget-object v2, p0, Lcom/kms/KisShieldView;->n:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/kms/KisShieldView;->f:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 578
    iget-object v2, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/kms/KisShieldView;->M:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/kms/KisShieldView;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/kms/KisShieldView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 476
    if-eqz p1, :cond_0

    .line 477
    sub-int v0, p5, p3

    int-to-float v0, v0

    iget v1, p0, Lcom/kms/KisShieldView;->z:F

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 478
    sub-int v0, p4, p2

    .line 479
    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 481
    :goto_0
    iget-object v2, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    add-int/2addr v1, v0

    invoke-virtual {v2, v0, p3, v1, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 484
    iget-object v0, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kms/KisShieldView;->B:F

    iget-object v2, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kms/KisShieldView;->M:I

    .line 485
    iget-object v0, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kms/KisShieldView;->C:F

    iget-object v2, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kms/KisShieldView;->N:I

    .line 487
    iget-object v0, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kms/KisShieldView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kms/KisShieldView;->A:F

    .line 488
    iget-object v0, p0, Lcom/kms/KisShieldView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 491
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 492
    return-void

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 619
    check-cast p1, Lkc;

    .line 620
    invoke-virtual {p1}, Lkc;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 622
    invoke-static {p1}, Lkc;->a(Lkc;)Lcom/kms/KisShieldView$ShieldState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kms/KisShieldView;->setShieldState(Lcom/kms/KisShieldView$ShieldState;)V

    .line 623
    invoke-static {p1}, Lkc;->b(Lkc;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 624
    invoke-static {p1}, Lkc;->b(Lkc;)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/KisShieldView;->setProgress(FZ)V

    .line 626
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 609
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 610
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 611
    new-instance v1, Lkc;

    invoke-direct {v1, v0}, Lkc;-><init>(Landroid/os/Parcelable;)V

    .line 612
    iget v0, p0, Lcom/kms/KisShieldView;->D:F

    invoke-static {v1, v0}, Lkc;->a(Lkc;F)F

    .line 613
    iget-object v0, p0, Lcom/kms/KisShieldView;->g:Lcom/kms/KisShieldView$ShieldState;

    invoke-static {v1, v0}, Lkc;->a(Lkc;Lcom/kms/KisShieldView$ShieldState;)Lcom/kms/KisShieldView$ShieldState;

    .line 614
    return-object v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 199
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 201
    iget-object v2, p0, Lcom/kms/KisShieldView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setProgress(F)V
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->q:Z

    invoke-virtual {p0, p1, v0}, Lcom/kms/KisShieldView;->setProgress(FZ)V

    .line 140
    return-void
.end method

.method public final setProgress(FZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 151
    :cond_1
    iget v0, p0, Lcom/kms/KisShieldView;->E:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 152
    iput v2, p0, Lcom/kms/KisShieldView;->F:F

    .line 154
    invoke-direct {p0}, Lcom/kms/KisShieldView;->h()V

    .line 155
    invoke-virtual {p0}, Lcom/kms/KisShieldView;->b()V

    .line 182
    :cond_2
    :goto_0
    return-void

    .line 158
    :cond_3
    iget v0, p0, Lcom/kms/KisShieldView;->E:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 159
    iput p1, p0, Lcom/kms/KisShieldView;->E:F

    .line 160
    if-eqz p2, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/kms/KisShieldView;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    iput v2, p0, Lcom/kms/KisShieldView;->D:F

    .line 165
    :cond_4
    iget v0, p0, Lcom/kms/KisShieldView;->E:F

    iget v1, p0, Lcom/kms/KisShieldView;->D:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kms/KisShieldView;->F:F

    .line 167
    invoke-direct {p0}, Lcom/kms/KisShieldView;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    iput p1, p0, Lcom/kms/KisShieldView;->D:F

    .line 169
    iput v2, p0, Lcom/kms/KisShieldView;->F:F

    .line 170
    invoke-direct {p0}, Lcom/kms/KisShieldView;->h()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/KisShieldView;->r:Z

    .line 180
    :goto_1
    invoke-direct {p0}, Lcom/kms/KisShieldView;->f()V

    goto :goto_0

    .line 173
    :cond_5
    iget v0, p0, Lcom/kms/KisShieldView;->D:F

    iget v1, p0, Lcom/kms/KisShieldView;->F:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kms/KisShieldView;->D:F

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/KisShieldView;->r:Z

    goto :goto_1

    .line 177
    :cond_6
    iput p1, p0, Lcom/kms/KisShieldView;->D:F

    .line 178
    iput v2, p0, Lcom/kms/KisShieldView;->F:F

    goto :goto_1
.end method

.method public final setShieldState(Lcom/kms/KisShieldView$ShieldState;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kms/KisShieldView;->g:Lcom/kms/KisShieldView$ShieldState;

    if-eq v0, p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/kms/KisShieldView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/kms/KisShieldView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New shield state set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/kms/KisShieldView;->g:Lcom/kms/KisShieldView$ShieldState;

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->r:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/kms/KisShieldView;->x:Z

    if-eqz v0, :cond_3

    .line 123
    :cond_2
    sget-object v0, Lcom/kms/KisShieldView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set shield action set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lkf;

    invoke-direct {v0, p0, p1}, Lkf;-><init>(Lcom/kms/KisShieldView;Lcom/kms/KisShieldView$ShieldState;)V

    iput-object v0, p0, Lcom/kms/KisShieldView;->h:Lkb;

    goto :goto_0

    .line 128
    :cond_3
    sget-object v0, Lcom/kms/KisShieldView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New shield state set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/kms/KisShieldView;->g:Lcom/kms/KisShieldView$ShieldState;

    .line 131
    invoke-direct {p0}, Lcom/kms/KisShieldView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/kms/KisShieldView;->f()V

    goto :goto_0
.end method

.method public final setSmoothAnimation(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-boolean v0, p0, Lcom/kms/KisShieldView;->q:Z

    if-ne p1, v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-boolean p1, p0, Lcom/kms/KisShieldView;->q:Z

    .line 242
    if-eqz p1, :cond_1

    .line 243
    new-instance v0, LjY;

    invoke-direct {v0, p0}, LjY;-><init>(Lcom/kms/KisShieldView;)V

    iput-object v0, p0, Lcom/kms/KisShieldView;->o:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kms/KisShieldView;->p:Landroid/os/Handler;

    goto :goto_0

    .line 257
    :cond_1
    iput-object v1, p0, Lcom/kms/KisShieldView;->o:Ljava/lang/Runnable;

    .line 258
    iput-object v1, p0, Lcom/kms/KisShieldView;->p:Landroid/os/Handler;

    goto :goto_0
.end method
