.class public final Lfn;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements LeK;
.implements LeP;


# instance fields
.field private a:Lfj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(I)Lfn;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lfn;

    invoke-direct {v0}, Lfn;-><init>()V

    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v2, "index"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v0, v1}, Lfn;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-static {}, Lfj;->r()V

    .line 83
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0, p1}, Lfj;->d(Z)V

    .line 133
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0}, Lfj;->a()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-static {}, Lfj;->n()V

    .line 152
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0}, Lfj;->o()V

    .line 161
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0}, Lfj;->g()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lfn;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c()V

    .line 114
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0}, Lfj;->m()V

    .line 124
    :cond_0
    return-void
.end method

.method public final f()Lfj;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfn;->a:Lfj;

    return-object v0
.end method

.method public final g()I
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lfn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0, p1}, Lfj;->c(I)V

    .line 168
    :cond_0
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lfn;->a:Lfj;

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0, p1}, Lfj;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 69
    :cond_0
    if-eqz v0, :cond_1

    .line 73
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0, p1, p2, p3}, Lfj;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 58
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 59
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lfn;->g()I

    move-result v0

    invoke-static {p1, v0, p0}, Lfg;->a(Landroid/view/LayoutInflater;ILandroid/support/v4/app/Fragment;)Lfj;

    move-result-object v0

    iput-object v0, p0, Lfn;->a:Lfj;

    .line 102
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0}, Lfj;->j()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 41
    iget-object v0, p0, Lfn;->a:Lfj;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lfn;->a:Lfj;

    invoke-virtual {v0, p1}, Lfj;->a(Z)V

    .line 44
    :cond_0
    return-void
.end method
