.class Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Z

.field private synthetic c:Landroid/app/ProgressDialog;

.field private synthetic d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;Ljava/lang/String;ZLandroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    iput-object p2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->b:Z

    iput-object p4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->c:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 102
    .line 104
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->a:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    .line 107
    :try_start_0
    iget-boolean v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->b:Z

    if-eqz v3, :cond_2

    .line 108
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->a:Ljava/lang/String;

    invoke-static {v2}, Lvv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2}, LbC;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "www.kaspersky.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "redirect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    :cond_0
    const v0, 0x7f0600bb

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    iget-object v3, v3, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/kms/kmsshared/Utils;->a(ILandroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 113
    const/4 v0, 0x1

    move v4, v0

    move-object v0, v3

    move-object v3, v2

    move v2, v4

    .line 117
    :goto_0
    if-nez v2, :cond_1

    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->b(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 125
    :goto_1
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->d:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->c:Landroid/app/ProgressDialog;

    invoke-static {v2, v3, v0, v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;Landroid/app/ProgressDialog;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 126
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_2
    move-object v3, v2

    move v2, v0

    move-object v0, v1

    goto :goto_0
.end method
