.class public Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/drawable/BitmapDrawable;

.field private final c:Landroid/graphics/drawable/BitmapDrawable;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iput-object v1, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->b:Landroid/graphics/drawable/BitmapDrawable;

    .line 32
    iput-object v1, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->c:Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->a:I

    .line 58
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 37
    invoke-static {}, Lqq;->a()Z

    .line 38
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 43
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Lfd;->a(II)I

    move-result v0

    .line 45
    if-eq v0, v3, :cond_1

    if-nez v0, :cond_2

    .line 47
    :cond_1
    const v0, 0x7f02003d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->b:Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    const v0, 0x7f02003f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->c:Landroid/graphics/drawable/BitmapDrawable;

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->e:I

    .line 55
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->d:I

    .line 56
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->e:I

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->a:I

    goto :goto_0

    .line 50
    :cond_2
    const v0, 0x7f02003c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->b:Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    const v0, 0x7f02003e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->c:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->a:I

    iget v3, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->f:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 87
    if-gtz v0, :cond_2

    move v0, v1

    .line 90
    :cond_2
    :goto_0
    iget v2, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->f:I

    if-ge v1, v2, :cond_0

    .line 91
    iget v2, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->g:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    iget v3, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->a:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_3
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 76
    iget v1, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->setMeasuredDimension(II)V

    .line 77
    return-void
.end method

.method public setCurrentStep(I)V
    .locals 1

    .prologue
    .line 67
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->f:I

    if-gt p1, v0, :cond_0

    .line 68
    iput p1, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->g:I

    .line 69
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->invalidate()V

    .line 71
    :cond_0
    return-void
.end method

.method public setStepsCount(I)V
    .locals 0

    .prologue
    .line 61
    if-ltz p1, :cond_0

    .line 62
    iput p1, p0, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->f:I

    .line 64
    :cond_0
    return-void
.end method
