.class public final Lcd;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;


# direct methods
.method private constructor <init>(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcd;->a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kaspersky/components/views/sidebar/SideBarLayout;B)V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcd;-><init>(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 683
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 648
    sget-object v0, Lcc;->a:[I

    iget-object v2, p0, Lcd;->a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)LbZ;

    move-result-object v2

    invoke-virtual {v2}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 660
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sliding view position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcd;->a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)LbZ;

    move-result-object v2

    invoke-virtual {v2}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 663
    :goto_0
    iget-object v2, p0, Lcd;->a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    iget-object v0, p0, Lcd;->a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    move-result-object v0

    sget-object v2, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->InTransition:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-ne v0, v2, :cond_0

    .line 666
    iget-object v0, p0, Lcd;->a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Lcg;

    move-result-object v0

    float-to-int v2, p3

    invoke-virtual {v0, v2}, Lcg;->a(I)V

    :cond_0
    move v0, v1

    .line 676
    :goto_1
    return v0

    .line 657
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    move p3, p4

    .line 658
    goto :goto_0

    .line 671
    :cond_1
    iget-object v2, p0, Lcd;->a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Lcg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcg;->a(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p0, Lcd;->a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)V

    .line 673
    iget-object v0, p0, Lcd;->a:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Lcg;

    move-result-object v0

    float-to-int v2, p3

    invoke-virtual {v0, v2}, Lcg;->a(I)V

    move v0, v1

    .line 674
    goto :goto_1

    .line 676
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
