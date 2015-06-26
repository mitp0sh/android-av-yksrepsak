.class public final Lcom/kaspersky/kts/gui/controls/Space;
.super Landroid/view/View;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kaspersky/kts/gui/controls/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kaspersky/kts/gui/controls/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/Space;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/Space;->setVisibility(I)V

    .line 14
    :cond_0
    return-void
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 29
    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 33
    sparse-switch v1, :sswitch_data_0

    .line 44
    :goto_0
    :sswitch_0
    return p0

    .line 38
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 41
    goto :goto_0

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/kaspersky/kts/gui/controls/Space;->a(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/Space;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/kaspersky/kts/gui/controls/Space;->a(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/controls/Space;->setMeasuredDimension(II)V

    .line 52
    return-void
.end method
