.class final Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;B)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 416
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->b(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;)Landroid/widget/ViewAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 419
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-static {v1, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;I)V

    .line 423
    :cond_0
    return-void

    .line 416
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
