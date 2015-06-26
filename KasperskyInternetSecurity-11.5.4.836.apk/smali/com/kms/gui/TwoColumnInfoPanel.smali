.class public Lcom/kms/gui/TwoColumnInfoPanel;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildCount()I

    move-result v3

    .line 90
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingTop()I

    move-result v0

    add-int v1, p3, v0

    .line 92
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 94
    rem-int/lit8 v4, v2, 0x2

    .line 95
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingLeft()I

    move-result v0

    iget v5, p0, Lcom/kms/gui/TwoColumnInfoPanel;->a:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v0

    .line 96
    if-nez v4, :cond_0

    iget v0, p0, Lcom/kms/gui/TwoColumnInfoPanel;->a:I

    add-int/2addr v0, v5

    .line 97
    :goto_1
    invoke-virtual {p0, v2}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 98
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v5, v1, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 99
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 101
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 92
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, p4

    .line 96
    goto :goto_1

    .line 104
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildCount()I

    move-result v5

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 36
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingRight()I

    move-result v1

    sub-int v7, v0, v1

    .line 37
    div-int/lit8 v2, v7, 0x2

    move v3, v4

    move v1, v4

    .line 42
    :goto_0
    if-ge v3, v5, :cond_1

    .line 45
    invoke-virtual {p0, v3}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 46
    instance-of v8, v0, Landroid/widget/TextView;

    if-nez v8, :cond_0

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only TextView childs are allowed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 53
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v8

    .line 54
    if-le v0, v1, :cond_6

    .line 42
    :goto_1
    add-int/lit8 v1, v3, 0x2

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 61
    :cond_1
    if-le v1, v2, :cond_2

    move v1, v2

    .line 65
    :cond_2
    iput v1, p0, Lcom/kms/gui/TwoColumnInfoPanel;->a:I

    move v3, v4

    move v2, v4

    .line 68
    :goto_2
    if-ge v3, v5, :cond_4

    .line 70
    invoke-virtual {p0, v3}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 71
    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_3

    move v0, v1

    .line 72
    :goto_3
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 73
    const/4 v10, -0x2

    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 74
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    invoke-virtual {p0, v8, v9, v10}, Lcom/kms/gui/TwoColumnInfoPanel;->measureChild(Landroid/view/View;II)V

    .line 76
    rem-int/lit8 v0, v3, 0x2

    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    .line 78
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 68
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 71
    :cond_3
    sub-int v0, v7, v1

    goto :goto_3

    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 82
    invoke-virtual {p0, v6, v0}, Lcom/kms/gui/TwoColumnInfoPanel;->setMeasuredDimension(II)V

    .line 83
    return-void

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_1
.end method
