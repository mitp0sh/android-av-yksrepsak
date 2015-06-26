.class Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Exception;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Landroid/app/ProgressDialog;

.field private synthetic e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    iput-object p2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->a:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->d:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 125
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->a:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->s()Z

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->b(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lgm;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    iget-object v3, v3, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    const v4, 0x7f07048d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lgm;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->b(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lgm;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    iget-object v3, v3, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    const v4, 0x7f070207

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v6}, Lgm;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->b(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setAgreements(Ljava/util/ArrayList;)V

    .line 130
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 135
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;->e:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->n()V

    goto :goto_0
.end method
