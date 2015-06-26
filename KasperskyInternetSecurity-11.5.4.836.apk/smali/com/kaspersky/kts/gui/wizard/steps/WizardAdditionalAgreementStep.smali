.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private f:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->a:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method private a(Landroid/app/ProgressDialog;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 132
    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {p3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$3;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;Ljava/lang/Exception;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->c()V

    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;Landroid/app/ProgressDialog;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->a(Landroid/app/ProgressDialog;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->c:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->c:Landroid/content/Context;

    const v3, 0x7f07048c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;Ljava/lang/String;ZLandroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$2;->start()V

    .line 128
    return-void
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->f:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lwy;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, LjJ;->k()Lww;

    move-result-object v0

    invoke-interface {v0}, Lww;->c()V

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->p()V

    .line 94
    return-void

    .line 91
    :cond_0
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    invoke-interface {v0}, Lde;->l()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->g:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0300b3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 50
    const v0, 0x7f0b020b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->f:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    .line 51
    const v0, 0x7f0b020c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->g:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->g:Landroid/widget/Button;

    new-instance v4, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$1;

    invoke-direct {v4, p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$1;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v4, "licensing.privacy_agreement_url"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lwy;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v0, v4, v5}, Ll;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->a(Ljava/lang/String;Z)V

    .line 79
    return-object v3

    .line 74
    :cond_0
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v4, "licensing.antitheft_wm_agreement_url"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-interface {v0, v4, v5}, Ll;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
