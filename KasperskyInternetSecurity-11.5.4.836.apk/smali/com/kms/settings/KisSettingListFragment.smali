.class public final Lcom/kms/settings/KisSettingListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements LvS;


# instance fields
.field private a:LvU;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lwd;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kms/settings/KisSettingListFragment;->a:LvU;

    invoke-virtual {v0}, LvU;->b()Lwd;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, LvU;

    invoke-direct {v0, p0}, LvU;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/kms/settings/KisSettingListFragment;->a:LvU;

    .line 38
    iget-object v0, p0, Lcom/kms/settings/KisSettingListFragment;->a:LvU;

    invoke-virtual {v0}, LvU;->a()V

    .line 39
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kms/settings/KisSettingListFragment;->a:LvU;

    invoke-virtual {v0, p1, p2}, LvU;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/kms/settings/KisSettingListFragment;->a:LvU;

    invoke-virtual {v0, p1, p2}, LvU;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    return-void
.end method
