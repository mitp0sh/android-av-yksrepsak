.class public Lcom/kaspersky/components/views/Switch;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field private static final s:[I


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:Landroid/view/VelocityTracker;

.field private j:I

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private final r:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/views/Switch;->s:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kaspersky/components/views/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f01006e

    invoke-direct {p0, p1, p2, v0}, Lcom/kaspersky/components/views/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/components/views/Switch;->i:Landroid/view/VelocityTracker;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    .line 119
    sget-object v0, Lng;->Switch:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    .line 124
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kaspersky/components/views/Switch;->c:I

    .line 125
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kaspersky/components/views/Switch;->d:I

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/kaspersky/components/views/Switch;->f:I

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/views/Switch;->j:I

    .line 132
    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/views/Switch;->n:I

    .line 135
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->refreshDrawableState()V

    .line 136
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/views/Switch;->setChecked(Z)V

    .line 137
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 353
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 354
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 355
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 356
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 357
    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/kaspersky/components/views/Switch;->setChecked(Z)V

    .line 397
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 400
    iget v0, p0, Lcom/kaspersky/components/views/Switch;->k:F

    invoke-direct {p0}, Lcom/kaspersky/components/views/Switch;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FF)Z
    .locals 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 280
    iget v0, p0, Lcom/kaspersky/components/views/Switch;->p:I

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->f:I

    sub-int/2addr v0, v1

    .line 281
    iget v1, p0, Lcom/kaspersky/components/views/Switch;->o:I

    iget v2, p0, Lcom/kaspersky/components/views/Switch;->k:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kaspersky/components/views/Switch;->f:I

    sub-int/2addr v1, v2

    .line 282
    iget v2, p0, Lcom/kaspersky/components/views/Switch;->n:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/kaspersky/components/views/Switch;->f:I

    add-int/2addr v2, v3

    .line 283
    iget v3, p0, Lcom/kaspersky/components/views/Switch;->q:I

    iget v4, p0, Lcom/kaspersky/components/views/Switch;->f:I

    add-int/2addr v3, v4

    .line 284
    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    int-to-float v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    int-to-float v0, v3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()I
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 507
    :goto_0
    return v0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 505
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 506
    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 507
    iget v1, p0, Lcom/kaspersky/components/views/Switch;->l:I

    iget v2, p0, Lcom/kaspersky/components/views/Switch;->d:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/kaspersky/components/views/Switch;->n:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 369
    :goto_0
    invoke-direct {p0, p1}, Lcom/kaspersky/components/views/Switch;->a(Landroid/view/MotionEvent;)V

    .line 371
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->isChecked()Z

    move-result v3

    .line 372
    if-eqz v0, :cond_0

    .line 373
    iget v0, p0, Lcom/kaspersky/components/views/Switch;->e:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v1, v3

    .line 389
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/kaspersky/components/views/Switch;->a(Z)V

    .line 390
    return-void

    :cond_2
    move v0, v2

    .line 367
    goto :goto_0

    .line 375
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->i:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 376
    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 377
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/kaspersky/components/views/Switch;->j:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 378
    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    move v1, v2

    goto :goto_1

    .line 380
    :cond_3
    invoke-direct {p0}, Lcom/kaspersky/components/views/Switch;->a()Z

    move-result v1

    goto :goto_1

    .line 384
    :pswitch_1
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 385
    :goto_2
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->performClick()Z

    goto :goto_1

    :cond_4
    move v1, v2

    .line 384
    goto :goto_2

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 404
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/kaspersky/components/views/Switch;->b()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/kaspersky/components/views/Switch;->k:F

    .line 405
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 521
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 523
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getDrawableState()[I

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->invalidate()V

    .line 535
    return-void
.end method

.method public getCompoundPaddingBottom()I
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingBottom()I

    move-result v0

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 482
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .prologue
    .line 487
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 2

    .prologue
    .line 492
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 512
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 513
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    sget-object v1, Lcom/kaspersky/components/views/Switch;->s:[I

    invoke-static {v0, v1}, Lcom/kaspersky/components/views/Switch;->mergeDrawableStates([I[I)[I

    .line 516
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 449
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 452
    iget v0, p0, Lcom/kaspersky/components/views/Switch;->o:I

    .line 453
    iget v1, p0, Lcom/kaspersky/components/views/Switch;->p:I

    .line 454
    iget v2, p0, Lcom/kaspersky/components/views/Switch;->o:I

    iget v3, p0, Lcom/kaspersky/components/views/Switch;->l:I

    add-int/2addr v2, v3

    .line 455
    iget v3, p0, Lcom/kaspersky/components/views/Switch;->q:I

    .line 457
    iget-object v4, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 458
    iget-object v4, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 462
    iget-object v4, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 463
    iget-object v4, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    .line 464
    iget-object v4, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    .line 465
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 467
    iget-object v2, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 468
    iget v2, p0, Lcom/kaspersky/components/views/Switch;->k:F

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 469
    iget-object v4, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    add-int/2addr v0, v2

    iget v2, p0, Lcom/kaspersky/components/views/Switch;->d:I

    add-int/2addr v0, v2

    .line 470
    iget v2, p0, Lcom/kaspersky/components/views/Switch;->n:I

    add-int/2addr v2, v0

    .line 471
    iget v4, p0, Lcom/kaspersky/components/views/Switch;->d:I

    add-int/2addr v1, v4

    .line 472
    iget v4, p0, Lcom/kaspersky/components/views/Switch;->d:I

    sub-int/2addr v3, v4

    .line 474
    iget-object v4, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 475
    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 477
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 478
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 416
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 418
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kaspersky/components/views/Switch;->b(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getPaddingLeft()I

    move-result v2

    .line 422
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_0

    .line 427
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getPaddingTop()I

    move-result v1

    .line 428
    iget v0, p0, Lcom/kaspersky/components/views/Switch;->m:I

    add-int/2addr v0, v1

    .line 442
    :goto_0
    iput v2, p0, Lcom/kaspersky/components/views/Switch;->o:I

    .line 443
    iput v1, p0, Lcom/kaspersky/components/views/Switch;->p:I

    .line 444
    iput v0, p0, Lcom/kaspersky/components/views/Switch;->q:I

    .line 445
    return-void

    .line 432
    :sswitch_0
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->m:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 433
    iget v0, p0, Lcom/kaspersky/components/views/Switch;->m:I

    add-int/2addr v0, v1

    .line 434
    goto :goto_0

    .line 437
    :sswitch_1
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 438
    iget v1, p0, Lcom/kaspersky/components/views/Switch;->m:I

    sub-int v1, v0, v1

    goto :goto_0

    .line 422
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 266
    iget v0, p0, Lcom/kaspersky/components/views/Switch;->c:I

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 267
    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/kaspersky/components/views/Switch;->d:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 269
    iput v0, p0, Lcom/kaspersky/components/views/Switch;->l:I

    .line 270
    iput v1, p0, Lcom/kaspersky/components/views/Switch;->m:I

    .line 272
    iget v0, p0, Lcom/kaspersky/components/views/Switch;->l:I

    iget v1, p0, Lcom/kaspersky/components/views/Switch;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/components/views/Switch;->setMeasuredDimension(II)V

    .line 273
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 550
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 544
    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 289
    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 291
    packed-switch v1, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 293
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 295
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/kaspersky/components/views/Switch;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    iput v0, p0, Lcom/kaspersky/components/views/Switch;->e:I

    .line 297
    iput v1, p0, Lcom/kaspersky/components/views/Switch;->g:F

    .line 298
    iput v2, p0, Lcom/kaspersky/components/views/Switch;->h:F

    goto :goto_1

    .line 304
    :pswitch_2
    iget v1, p0, Lcom/kaspersky/components/views/Switch;->e:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 310
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 312
    iget v3, p0, Lcom/kaspersky/components/views/Switch;->g:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/kaspersky/components/views/Switch;->f:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/kaspersky/components/views/Switch;->h:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/kaspersky/components/views/Switch;->f:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 313
    :cond_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/kaspersky/components/views/Switch;->e:I

    .line 314
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 315
    iput v1, p0, Lcom/kaspersky/components/views/Switch;->g:F

    .line 316
    iput v2, p0, Lcom/kaspersky/components/views/Switch;->h:F

    goto :goto_1

    .line 323
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 324
    iget v2, p0, Lcom/kaspersky/components/views/Switch;->g:F

    sub-float v2, v1, v2

    .line 325
    const/4 v3, 0x0

    iget v4, p0, Lcom/kaspersky/components/views/Switch;->k:F

    add-float/2addr v2, v4

    invoke-direct {p0}, Lcom/kaspersky/components/views/Switch;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 326
    iget v3, p0, Lcom/kaspersky/components/views/Switch;->k:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 327
    iput v2, p0, Lcom/kaspersky/components/views/Switch;->k:F

    .line 328
    iput v1, p0, Lcom/kaspersky/components/views/Switch;->g:F

    .line 329
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->invalidate()V

    goto :goto_1

    .line 339
    :pswitch_5
    iget v1, p0, Lcom/kaspersky/components/views/Switch;->e:I

    if-eqz v1, :cond_3

    .line 340
    invoke-direct {p0, p1}, Lcom/kaspersky/components/views/Switch;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 343
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/kaspersky/components/views/Switch;->e:I

    .line 344
    iget-object v1, p0, Lcom/kaspersky/components/views/Switch;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 304
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kaspersky/components/views/Switch;->b(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->invalidate()V

    .line 412
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/kaspersky/components/views/Switch;->c:I

    .line 175
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->requestLayout()V

    .line 176
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/kaspersky/components/views/Switch;->d:I

    .line 151
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->requestLayout()V

    .line 152
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->requestLayout()V

    .line 238
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/views/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    .line 201
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->requestLayout()V

    .line 202
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/kaspersky/components/views/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/views/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 539
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/components/views/Switch;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
