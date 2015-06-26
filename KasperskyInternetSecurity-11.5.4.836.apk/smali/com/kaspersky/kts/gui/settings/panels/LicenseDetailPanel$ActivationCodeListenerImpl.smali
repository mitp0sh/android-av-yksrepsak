.class final Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lut;


# instance fields
.field final synthetic a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;B)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;-><init>(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->d_()Landroid/app/Activity;

    move-result-object v0

    .line 406
    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl$1;

    invoke-direct {v1, p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
