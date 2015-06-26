.class public Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 108
    instance-of v0, p1, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 71
    new-instance v0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getChildCount()I

    move-result v2

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 82
    invoke-virtual {p0, v1}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;

    .line 89
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;->a:I

    add-int/2addr v4, v5

    .line 90
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getPaddingTop()I

    move-result v5

    iget v0, v0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;->b:I

    add-int/2addr v0, v5

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 80
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getChildCount()I

    move-result v4

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->measureChildren(II)V

    move v3, v0

    move v1, v0

    move v2, v0

    .line 38
    :goto_0
    if-ge v3, v4, :cond_0

    .line 40
    invoke-virtual {p0, v3}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_1

    .line 46
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;

    .line 49
    iget v6, v0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;->a:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 50
    iget v0, v0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;->b:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    .line 52
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 53
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 38
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 58
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 60
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 61
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 63
    invoke-static {v0, p1}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout;->setMeasuredDimension(II)V

    .line 65
    return-void

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1
.end method
