.class public abstract Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;
.super Lfj;
.source "SourceFile"

# interfaces
.implements Lkz;


# instance fields
.field protected h:Landroid/view/View;

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 29
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->f:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->a()Lay;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Lay;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->i:Z

    .line 31
    invoke-interface {v0}, Lay;->b()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->j:I

    .line 32
    return-void
.end method


# virtual methods
.method public a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->d_()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, LoK;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 50
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->d(I)V

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->c:Landroid/content/Context;

    const-class v2, Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string v1, "renewal.form.content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Lfj;->b(Z)V

    .line 64
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->s()V

    .line 67
    :cond_0
    return-void
.end method

.method public final d_()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final e_()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public f_()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->e:Landroid/support/v4/app/Fragment;

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->i:Z

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->j:I

    invoke-static {v0, v1, v2, v3}, Lkr;->a(Landroid/support/v4/app/Fragment;IZI)V

    .line 45
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f060080

    return v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->c:Landroid/content/Context;

    const v1, 0x7f070125

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i(I)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public k(I)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
