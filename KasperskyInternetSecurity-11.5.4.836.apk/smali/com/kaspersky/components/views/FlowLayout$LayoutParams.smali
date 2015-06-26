.class public Lcom/kaspersky/components/views/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 452
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 396
    iput v1, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a:I

    .line 401
    iput v1, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->b:I

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->c:Z

    .line 453
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 427
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 396
    iput v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a:I

    .line 401
    iput v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->b:I

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->c:Z

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 429
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 456
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iput v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a:I

    .line 401
    iput v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->b:I

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->c:Z

    .line 457
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 432
    sget-object v1, Lng;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 434
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 435
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 434
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :pswitch_0
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 447
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 440
    :pswitch_1
    const/4 v2, 0x2

    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->b:I

    goto :goto_1

    .line 443
    :pswitch_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 447
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 448
    return-void

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->d:I

    return v0
.end method

.method static synthetic c(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->e:I

    return v0
.end method

.method static synthetic d(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->b:I

    return v0
.end method

.method static synthetic e(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a:I

    return v0
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    .prologue
    .line 468
    iput p1, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->d:I

    .line 469
    iput p2, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->e:I

    .line 470
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 460
    iget v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 464
    iget v0, p0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
