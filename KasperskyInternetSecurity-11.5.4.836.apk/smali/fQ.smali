.class public final LfQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/WizardActivity;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/wizard/WizardActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, LfQ;->a:Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, LfQ;->a:Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Lcom/kaspersky/kts/gui/wizard/WizardActivity;)LeP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, LfQ;->a:Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Lcom/kaspersky/kts/gui/wizard/WizardActivity;)LeP;

    move-result-object v0

    invoke-interface {v0}, LeP;->c()V

    .line 171
    :cond_0
    iget-object v0, p0, LfQ;->a:Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->finish()V

    .line 172
    return-void
.end method
