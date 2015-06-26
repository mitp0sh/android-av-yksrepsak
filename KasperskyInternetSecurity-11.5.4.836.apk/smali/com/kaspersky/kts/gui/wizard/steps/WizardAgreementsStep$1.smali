.class Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/app/ProgressDialog;

.field private synthetic b:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$1;->b:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    iput-object p2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$1;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 88
    .line 90
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v1

    const-string v2, "licensing.privacy_agreement_url"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lwy;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Ll;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 93
    :try_start_0
    invoke-static {v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$1;->b:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-static {v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setUrl(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$1;->b:Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$1;->a:Landroid/app/ProgressDialog;

    invoke-static {v2, v3, v0, v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;Landroid/app/ProgressDialog;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 95
    goto :goto_0
.end method
