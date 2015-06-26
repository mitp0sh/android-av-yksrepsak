.class public Lcom/kaspersky/kts/gui/controls/FlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object v0, Lng;->FlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->b:I

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    iget v0, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getChildCount()I

    move-result v5

    .line 43
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getPaddingLeft()I

    move-result v1

    .line 44
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getPaddingTop()I

    move-result v3

    .line 45
    sub-int v6, p4, p2

    .line 49
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    add-int/2addr v0, v1

    :goto_0
    move v4, v2

    move v1, v0

    move v0, v2

    .line 53
    :goto_1
    if-ge v4, v5, :cond_0

    .line 54
    invoke-virtual {p0, v4}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 55
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v8, 0x8

    if-eq v2, v8, :cond_3

    .line 56
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    if-le v2, v6, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getPaddingLeft()I

    move-result v2

    .line 62
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 63
    iget-object v8, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 64
    add-int/2addr v0, v2

    move v9, v1

    move v1, v0

    move v0, v9

    .line 66
    :goto_2
    iget v2, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->a:I

    add-int/2addr v2, v3

    move v9, v2

    move v2, v1

    move v1, v0

    move v0, v9

    .line 69
    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 70
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v0

    .line 71
    invoke-virtual {v7, v2, v0, v3, v8}, Landroid/view/View;->layout(IIII)V

    move v2, v3

    .line 53
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v1

    move v1, v2

    goto :goto_1

    .line 74
    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    move v2, v1

    move v1, v0

    move v0, v3

    goto :goto_3

    :cond_3
    move v2, v1

    move v1, v0

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 14

    .prologue
    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 79
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 80
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 81
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getChildCount()I

    move-result v8

    .line 83
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getPaddingLeft()I

    move-result v5

    .line 84
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getPaddingTop()I

    move-result v2

    .line 85
    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getPaddingRight()I

    move-result v3

    sub-int v9, v0, v3

    .line 86
    sub-int v0, v1, v2

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v1, 0x0

    .line 91
    const/high16 v0, -0x80000000

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 94
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v2

    move v2, v5

    :goto_0
    if-ge v6, v8, :cond_4

    .line 106
    invoke-virtual {p0, v6}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_7

    .line 108
    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/View;->measure(II)V

    .line 111
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 112
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 113
    add-int/2addr v2, v11

    .line 115
    if-le v3, v5, :cond_3

    .line 117
    :goto_1
    if-le v2, v9, :cond_2

    .line 118
    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    sub-int v0, v9, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v0, 0x0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->getPaddingLeft()I

    move-result v2

    .line 123
    add-int/2addr v1, v3

    .line 127
    :cond_2
    add-int/2addr v0, v11

    move v13, v3

    move v3, v2

    move v2, v1

    move v1, v13

    .line 105
    :goto_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v13

    goto :goto_0

    :cond_3
    move v3, v5

    .line 115
    goto :goto_1

    .line 131
    :cond_4
    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 132
    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->c:Ljava/util/ArrayList;

    sub-int v0, v9, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_5
    sparse-switch v7, :sswitch_data_0

    :cond_6
    move v0, v4

    .line 148
    :goto_3
    iput v3, p0, Lcom/kaspersky/kts/gui/controls/FlowLayout;->a:I

    .line 150
    invoke-virtual {p0, v9, v0}, Lcom/kaspersky/kts/gui/controls/FlowLayout;->setMeasuredDimension(II)V

    .line 151
    return-void

    .line 137
    :sswitch_0
    add-int v0, v1, v3

    .line 138
    goto :goto_3

    .line 140
    :sswitch_1
    add-int v0, v1, v3

    .line 141
    if-ge v0, v4, :cond_6

    goto :goto_3

    :cond_7
    move v13, v3

    move v3, v2

    move v2, v1

    move v1, v13

    goto :goto_2

    .line 135
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
