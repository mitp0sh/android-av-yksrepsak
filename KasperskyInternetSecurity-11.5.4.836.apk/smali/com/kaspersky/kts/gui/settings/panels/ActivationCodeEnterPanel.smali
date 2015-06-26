.class public Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;
.super Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;
.source "SourceFile"

# interfaces
.implements Lod;


# instance fields
.field private i:Landroid/view/View;

.field private j:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterOldCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    if-ne p1, v0, :cond_1

    .line 114
    :cond_0
    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->i:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_1
    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->i:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/kms/licensing/ActivationType;->InputCodeByHand:Lcom/kms/licensing/ActivationType;

    invoke-static {v0}, LsQ;->a(Lcom/kms/licensing/ActivationType;)V

    .line 89
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->h()V

    .line 90
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    new-instance v1, LkA;

    invoke-direct {v1, p0}, LkA;-><init>(Lkz;)V

    invoke-interface {v0, p1, p2, v1}, LsY;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 91
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->j:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    invoke-virtual {v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->a()Z

    move-result v0

    goto :goto_0
.end method

.method protected final e()Landroid/view/View;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->h:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->h:Landroid/view/View;

    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->i:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->j:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    .line 49
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->j:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    invoke-virtual {v0, p0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->setOnCodeEnteredListener(Lod;)V

    .line 52
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->h:Landroid/view/View;

    return-object v0
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->f_()V

    .line 66
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->j(I)V

    .line 67
    return-void
.end method

.method public final k(I)V
    .locals 1

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return-void

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->j:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    invoke-virtual {v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->b()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x26e
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x22

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->onClick(Landroid/view/View;)V

    .line 78
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->d_()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, LkA;

    invoke-direct {v2, p0}, LkA;-><init>(Lkz;)V

    invoke-static {v0, v1, v2}, Lkq;->a(Landroid/content/Context;Landroid/app/Activity;LkA;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x7f0b0082
        :pswitch_0
    .end packed-switch
.end method

.method protected final s()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->i:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;->i:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    goto :goto_0
.end method
