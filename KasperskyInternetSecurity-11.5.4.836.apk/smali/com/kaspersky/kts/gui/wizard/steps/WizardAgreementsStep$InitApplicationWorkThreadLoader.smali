.class Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$InitApplicationWorkThreadLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LnX;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$InitApplicationWorkThreadLoader;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;B)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$InitApplicationWorkThreadLoader;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$InitApplicationWorkThreadLoader;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    iget-object v0, v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->e:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->d()V

    .line 222
    const/16 v0, 0x64

    return v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lkr;->b()V

    .line 232
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$InitApplicationWorkThreadLoader;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->p()V

    .line 233
    return-void
.end method
