.class Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Exception;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/app/ProgressDialog;

.field private synthetic d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;Ljava/lang/Exception;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    iput-object p2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->a:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->c:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->a:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->s()Z

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->c(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lgm;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    iget-object v3, v3, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->c:Landroid/content/Context;

    const v4, 0x7f07048d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lgm;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->b(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->c(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setAgreements(Ljava/util/ArrayList;)V

    .line 143
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->d(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->n()V

    goto :goto_0
.end method
