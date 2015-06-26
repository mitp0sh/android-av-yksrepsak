.class public final Lcom/kms/issues/KisIssuesActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private final a:LjN;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 25
    new-instance v0, LjN;

    const v1, 0x7f030036

    invoke-direct {v0, p0, v1}, LjN;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/kms/issues/KisIssuesActivity;->a:LjN;

    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    iget-object v0, p0, Lcom/kms/issues/KisIssuesActivity;->a:LjN;

    invoke-virtual {v0, p1, p2}, LjN;->a(II)V

    .line 65
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, LpP;->a()LpP;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LpP;->a(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/kms/issues/KisIssuesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/kms/issues/KisIssuesActivity;->finish()V

    .line 72
    const v0, 0x7f040005

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/kms/issues/KisIssuesActivity;->overridePendingTransition(II)V

    .line 74
    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/kms/issues/KisIssuesActivity;->a:LjN;

    invoke-virtual {v0}, LjN;->a()V

    .line 39
    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kms/issues/KisIssuesActivity;->a:LjN;

    invoke-virtual {v0}, LjN;->g()V

    .line 91
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 92
    return-void
.end method

.method protected final onPause()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kms/issues/KisIssuesActivity;->a:LjN;

    invoke-virtual {v0}, LjN;->e()V

    .line 79
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 80
    return-void
.end method

.method protected final onResume()V
    .locals 6

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 50
    iget-object v0, p0, Lcom/kms/issues/KisIssuesActivity;->a:LjN;

    invoke-virtual {v0}, LjN;->d()V

    .line 52
    invoke-static {p0}, Lkh;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/kms/issues/KisIssuesActivity;->finish()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/kms/issues/KisIssuesActivity;->a:LjN;

    const v1, 0x7f0b0028

    const-class v2, Lcom/kms/issues/KisIssuesFragment;

    const-string v3, "issues"

    const/4 v4, 0x0

    const-class v5, Lcom/kms/issues/KisIssuesFragment;

    invoke-static {v5}, Lne;->a(Ljava/lang/Class;)LsF;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, LjN;->a(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;LsF;)Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method protected final onStart()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 44
    iget-object v0, p0, Lcom/kms/issues/KisIssuesActivity;->a:LjN;

    invoke-virtual {v0}, LjN;->c()V

    .line 45
    return-void
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kms/issues/KisIssuesActivity;->a:LjN;

    invoke-virtual {v0}, LjN;->f()V

    .line 85
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 86
    return-void
.end method
