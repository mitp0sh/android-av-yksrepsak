.class final enum Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$3;
.super Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;-><init>(Ljava/lang/String;IILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$1;)V

    return-void
.end method


# virtual methods
.method public final getOpenedSlidingViewOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final layoutMainViewPushed(Landroid/view/View;III)V
    .locals 3

    .prologue
    .line 118
    neg-int v0, p4

    const/4 v1, 0x0

    sub-int v2, p2, p4

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/view/View;->layout(IIII)V

    .line 119
    return-void
.end method

.method public final layoutMainViewShrunk(Landroid/view/View;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    sub-int v0, p2, p4

    invoke-virtual {p1, v1, v1, v0, p3}, Landroid/view/View;->layout(IIII)V

    .line 124
    return-void
.end method

.method public final layoutSlidingView(Landroid/view/View;III)V
    .locals 4

    .prologue
    .line 113
    sub-int v0, p2, p4

    const/4 v1, 0x0

    sub-int v2, p2, p4

    invoke-virtual {p0, p1}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$3;->getOpenedSlidingViewOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/view/View;->layout(IIII)V

    .line 114
    return-void
.end method

.method public final toScreenOffset(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    return v0
.end method

.method public final toSliderDelta(I)I
    .locals 0

    .prologue
    .line 133
    return p1
.end method

.method public final transformMainViewCanvasPushed(Landroid/graphics/Canvas;I)V
    .locals 2

    .prologue
    .line 138
    neg-int v0, p2

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    return-void
.end method

.method public final transformMainViewCanvasShrunk(Landroid/graphics/Canvas;ILca;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lca;->a(II)V

    .line 144
    return-void
.end method

.method public final transformSlidingViewCanvas(Landroid/graphics/Canvas;ILandroid/view/View;)V
    .locals 6

    .prologue
    .line 148
    int-to-float v1, p2

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 149
    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p2

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    return-void
.end method
