.class final enum Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$4;
.super Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;-><init>(Ljava/lang/String;IILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$1;)V

    return-void
.end method


# virtual methods
.method public final getOpenedSlidingViewOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final layoutMainViewPushed(Landroid/view/View;III)V
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    neg-int v1, p4

    sub-int v2, p3, p4

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 167
    return-void
.end method

.method public final layoutMainViewShrunk(Landroid/view/View;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    sub-int v0, p3, p4

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/view/View;->layout(IIII)V

    .line 172
    return-void
.end method

.method public final layoutSlidingView(Landroid/view/View;III)V
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x0

    sub-int v1, p3, p4

    sub-int v2, p3, p4

    invoke-virtual {p0, p1}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition$4;->getOpenedSlidingViewOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 162
    return-void
.end method

.method public final toScreenOffset(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    return v0
.end method

.method public final toSliderDelta(I)I
    .locals 0

    .prologue
    .line 181
    return p1
.end method

.method public final transformMainViewCanvasPushed(Landroid/graphics/Canvas;I)V
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    return-void
.end method

.method public final transformMainViewCanvasShrunk(Landroid/graphics/Canvas;ILca;)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p3, v0, p2}, Lca;->a(II)V

    .line 192
    return-void
.end method

.method public final transformSlidingViewCanvas(Landroid/graphics/Canvas;ILandroid/view/View;)V
    .locals 6

    .prologue
    .line 196
    const/4 v1, 0x0

    int-to-float v2, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 197
    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    return-void
.end method
