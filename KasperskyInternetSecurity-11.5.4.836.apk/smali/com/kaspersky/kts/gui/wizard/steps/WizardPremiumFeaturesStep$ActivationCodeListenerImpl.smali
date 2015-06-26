.class final Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lut;


# instance fields
.field final synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;B)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d_()Landroid/app/Activity;

    move-result-object v0

    .line 430
    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 433
    :cond_0
    new-instance v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl$1;

    invoke-direct {v1, p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl$1;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
