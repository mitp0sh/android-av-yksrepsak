.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 21
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    const v1, 0x7f0b020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->c:Landroid/content/Context;

    invoke-static {v1}, Lqy;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->c()V

    .line 38
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    const v2, 0x7f0b0210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    const v1, 0x7f020132

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0702aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    const v1, 0x7f0b0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 54
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    const v2, 0x7f0b0036

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    const v2, 0x7f020133

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported screen configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    const v1, 0x7f0b020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->b()V

    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->a:Landroid/view/View;

    return-object v0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->b()V

    .line 31
    invoke-super {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->g()V

    .line 32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->p()V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->c:Landroid/content/Context;

    const v2, 0x7f0702ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :pswitch_1
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->c:Landroid/content/Context;

    invoke-static {v0}, Lqy;->e(Landroid/content/Context;)Z

    .line 96
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;->p()V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b020f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method
