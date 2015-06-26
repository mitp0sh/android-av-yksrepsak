.class final enum Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$2;
.super Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;-><init>(Ljava/lang/String;IILcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$1;)V

    return-void
.end method


# virtual methods
.method public final layoutMainView(Landroid/view/View;IIILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->layoutMainViewPushed(Landroid/view/View;III)V

    .line 22
    return-void
.end method

.method public final transformMainViewCanvas(Landroid/graphics/Canvas;ILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;Lca;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p3, p1, p2}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->transformMainViewCanvasPushed(Landroid/graphics/Canvas;I)V

    .line 27
    return-void
.end method
