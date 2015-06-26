.class Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl$1;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->m()Ljava/util/List;

    move-result-object v0

    .line 414
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl$1;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;

    iget-object v0, v0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;I)V

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl$1;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;

    iget-object v0, v0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;)Lcom/kms/gui/controls/ProgressButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/ProgressButton;->setClickable(Z)V

    .line 420
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl$1;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;

    iget-object v0, v0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->f()V

    goto :goto_0
.end method
