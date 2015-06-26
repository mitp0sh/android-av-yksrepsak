.class Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 437
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;

    iget-object v0, v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->t()V

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;

    iget-object v0, v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->p()V

    .line 441
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;

    iget-object v0, v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;

    iget-object v1, v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    iget-object v1, v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;Landroid/app/Activity;I)V

    goto :goto_0
.end method
