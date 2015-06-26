.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 71
    packed-switch p1, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->c:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->p()V

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 34
    packed-switch p1, :pswitch_data_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported screen configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 46
    :goto_0
    const v0, 0x7f0b020f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->a:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0b020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<b>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->a:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {}, Lqq;->a()Z

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->c:Landroid/content/Context;

    const v4, 0x7f0702ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-object v1

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 42
    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->c:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->a(IILandroid/content/Intent;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lqy;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method
