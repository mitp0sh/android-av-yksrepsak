.class public final Lcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;


# direct methods
.method public constructor <init>(Lcom/kaspersky/components/views/sidebar/SideBarLayout;Z)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    iput-boolean p2, p0, Lcb;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 542
    iget-boolean v0, p0, Lcb;->a:Z

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Opened:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-static {v0, v1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Lcom/kaspersky/components/views/sidebar/SideBarLayout;Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;)Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 544
    iget-object v0, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)LbZ;

    move-result-object v0

    invoke-virtual {v0}, LbZ;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->b(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 554
    :cond_0
    :goto_0
    iget-object v0, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->c(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Lca;

    move-result-object v0

    invoke-virtual {v0}, Lca;->a()V

    .line 556
    iget-object v0, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)LbY;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)LbY;

    move-result-object v0

    iget-boolean v1, p0, Lcb;->a:Z

    invoke-interface {v0, v1}, LbY;->a(Z)V

    .line 559
    :cond_1
    return-void

    .line 548
    :cond_2
    iget-object v0, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-static {v0, v1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Lcom/kaspersky/components/views/sidebar/SideBarLayout;Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;)Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 549
    iget-object v0, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)LbZ;

    move-result-object v0

    invoke-virtual {v0}, LbZ;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcb;->b:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-static {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->b(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
