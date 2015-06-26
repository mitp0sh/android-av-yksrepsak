.class final enum Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$1;
.super Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;-><init>(Ljava/lang/String;IILcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$1;)V

    return-void
.end method


# virtual methods
.method public final layoutMainView(Landroid/view/View;IIILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 11
    return-void
.end method

.method public final transformMainViewCanvas(Landroid/graphics/Canvas;ILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;Lca;)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method
