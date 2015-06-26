.class public Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v0, Lng;->BoundedLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-direct {p0, v1}, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->a(I)V

    .line 29
    return-void
.end method

.method private a(I)V
    .locals 11

    .prologue
    const/4 v4, -0x1

    .line 32
    if-gtz p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 39
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 40
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_2

    .line 41
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v2, v1

    .line 42
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v0, v0

    .line 49
    :goto_1
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 50
    invoke-static {v5, v6}, Lfb;->a(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 54
    iget v5, v6, Landroid/graphics/Point;->x:I

    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v7, v5

    div-double/2addr v7, v2

    int-to-double v9, p1

    cmpl-double v5, v7, v9

    if-lez v5, :cond_3

    .line 55
    int-to-double v7, p1

    mul-double/2addr v2, v7

    double-to-int v2, v2

    .line 57
    :goto_2
    iget v3, v6, Landroid/graphics/Point;->x:I

    iget v5, v6, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v5, v0

    int-to-double v7, p1

    cmpl-double v3, v5, v7

    if-lez v3, :cond_1

    .line 58
    int-to-double v3, p1

    mul-double/2addr v0, v3

    double-to-int v4, v0

    .line 61
    :cond_1
    sget-object v0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;->ApplyWidthOnly:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    invoke-virtual {p0, v2, v4, v0}, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->setBounds(IILcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;)V

    goto :goto_0

    .line 45
    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v2, v1

    .line 46
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v0, v0

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 83
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 86
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 87
    iget v1, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->b:I

    .line 88
    iget v0, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->a:I

    .line 95
    :goto_0
    iget-object v4, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->c:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    sget-object v5, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;->ApplyBoth:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->c:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    sget-object v5, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;->ApplyWidthOnly:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    if-ne v4, v5, :cond_1

    :cond_0
    if-lez v1, :cond_1

    if-ge v1, v2, :cond_1

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 99
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->c:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    sget-object v2, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;->ApplyBoth:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->c:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    sget-object v2, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;->ApplyHeightOnly:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    if-ne v1, v2, :cond_3

    :cond_2
    if-lez v0, :cond_3

    if-ge v0, v3, :cond_3

    .line 103
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 104
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 106
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 107
    return-void

    .line 91
    :cond_4
    iget v1, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->a:I

    .line 92
    iget v0, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->b:I

    goto :goto_0
.end method

.method public setBounds(IILcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->a:I

    .line 67
    iput p2, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->b:I

    .line 68
    iput-object p3, p0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->c:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    .line 69
    return-void
.end method
