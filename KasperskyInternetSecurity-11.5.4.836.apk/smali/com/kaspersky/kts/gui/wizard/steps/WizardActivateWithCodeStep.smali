.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lod;


# instance fields
.field private f:Landroid/view/View;

.field private g:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 45
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->f:Landroid/view/View;

    const v1, 0x7f0b01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 150
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->a(Z)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, LoK;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lkr;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->d(I)V

    .line 81
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->a(Z)V

    .line 82
    return-void

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    sget-object v0, Lcom/kms/licensing/ActivationType;->InputCodeByHand:Lcom/kms/licensing/ActivationType;

    invoke-static {v0}, LsQ;->a(Lcom/kms/licensing/ActivationType;)V

    .line 77
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->a:LkA;

    invoke-static {v0, p1, p2}, Lkr;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->a(Z)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->g:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    invoke-virtual {v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0b0099

    .line 118
    packed-switch p1, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported screen configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    const v1, 0x7f0b01c8

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    iput-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->g:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    .line 130
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->c:Landroid/content/Context;

    const v3, 0x7f0702de

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->c:Landroid/content/Context;

    const v6, 0x7f07002e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v0, 0x7f0b01f5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->g:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    invoke-virtual {v0, p0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->setOnCodeEnteredListener(Lod;)V

    .line 139
    iput-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->f:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->f:Landroid/view/View;

    return-object v0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lsz;->b()Z

    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 112
    :cond_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->g()V

    .line 113
    return-void
.end method

.method public final k(I)V
    .locals 1

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->a(Z)V

    .line 162
    return-void

    .line 157
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->e(I)V

    .line 158
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->g:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    invoke-virtual {v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->b()V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x26e
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 88
    :sswitch_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->p()V

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->b(Z)V

    goto :goto_0

    .line 92
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const-string v1, "com.kspersky.kts.gui.wizard.stepnumber"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v1, "com_kms_extra_info"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0099 -> :sswitch_1
        0x7f0b01f5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lsj;->f()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lqz;->c()V

    .line 66
    :goto_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->p()V

    .line 67
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lqz;->d()V

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
