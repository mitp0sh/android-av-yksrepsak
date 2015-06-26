.class public Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;
.super Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:LeP;

.field private b:LeK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    .line 112
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b()Lfn;

    move-result-object v0

    invoke-virtual {v0}, Lfn;->f()Lfj;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lfj;->d(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public final a(LeK;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->b:LeK;

    .line 84
    return-void
.end method

.method public final a(LeP;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    .line 79
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    invoke-interface {v0, p1, p2, p3}, LeP;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    invoke-interface {v0, p1}, LeP;->a(Landroid/view/Menu;)V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 108
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->b:LeK;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->b:LeK;

    invoke-interface {v0}, LeK;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    invoke-interface {v0}, LeP;->e()V

    .line 26
    :cond_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onPause()V

    .line 27
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    invoke-interface {v0}, LeP;->d()V

    .line 36
    :cond_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onResume()V

    .line 37
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    invoke-interface {v0}, LeP;->b()V

    .line 46
    :cond_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onStart()V

    .line 47
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    invoke-interface {v0}, LeP;->c()V

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onStop()V

    .line 57
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a:LeP;

    invoke-interface {v0, p1}, LeP;->a(Z)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onWindowFocusChanged(Z)V

    .line 74
    return-void
.end method
