.class Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfJ;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;)Lsm;

    move-result-object v0

    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
