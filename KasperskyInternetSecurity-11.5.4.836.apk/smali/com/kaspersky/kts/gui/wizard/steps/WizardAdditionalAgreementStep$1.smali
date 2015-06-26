.class Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f0b020c
        :pswitch_0
    .end packed-switch
.end method
