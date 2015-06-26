.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0b020e

    .line 32
    packed-switch p1, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported screen configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;

    invoke-direct {v2, p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;)V

    .line 42
    const v0, 0x7f0b022b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0b022c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f0b020d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 46
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c()Ljava/io/Serializable;

    move-result-object v0

    .line 49
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;->c:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;->c()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-object v1

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;->g(I)V

    goto :goto_0

    .line 64
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;->g(I)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x7f0b022b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
