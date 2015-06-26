.class public final Lcom/kms/settings/KisSettingTabsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"


# instance fields
.field private a:LbW;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kms/settings/KisSettingTabsFragment;->a:LbW;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/kms/settings/KisSettingTabsFragment;->a:LbW;

    invoke-virtual {v0, p1}, LbW;->b(Landroid/os/Bundle;)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f03004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/kms/settings/KisSettingTabsFragment;->a:LbW;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kms/settings/KisSettingTabsFragment;->a:LbW;

    invoke-virtual {v0, p1}, LbW;->a(Landroid/os/Bundle;)V

    .line 74
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    sget-object v0, Lcom/kaspersky/components/views/ScreenSize;->Large:Lcom/kaspersky/components/views/ScreenSize;

    invoke-virtual {p0}, Lcom/kms/settings/KisSettingTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/views/ScreenSize;->isAtLeast(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {}, Lwh;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwd;

    .line 60
    new-instance v4, Lwf;

    invoke-direct {v4, v0, v1}, Lwf;-><init>(Lwd;Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, LbW;

    invoke-virtual {p0}, Lcom/kms/settings/KisSettingTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, LbW;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kms/settings/KisSettingTabsFragment;->a:LbW;

    .line 63
    iget-object v0, p0, Lcom/kms/settings/KisSettingTabsFragment;->a:LbW;

    invoke-static {p0, v0}, LbS;->a(Landroid/support/v4/app/ListFragment;LbS;)V

    .line 65
    invoke-direct {p0, p2}, Lcom/kms/settings/KisSettingTabsFragment;->a(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
