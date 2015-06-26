.class final enum Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$3;
.super Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;-><init>(Ljava/lang/String;IILcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$1;)V

    return-void
.end method


# virtual methods
.method public final layoutMainView(Landroid/view/View;IIILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->layoutMainViewShrunk(Landroid/view/View;III)V

    .line 34
    return-void
.end method

.method public final transformMainViewCanvas(Landroid/graphics/Canvas;ILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;Lca;)V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p3, p1, p2, p4}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->transformMainViewCanvasShrunk(Landroid/graphics/Canvas;ILca;)V

    .line 39
    return-void
.end method
