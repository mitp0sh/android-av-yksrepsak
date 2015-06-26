.class Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 195
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->p()V

    .line 196
    return-void
.end method
