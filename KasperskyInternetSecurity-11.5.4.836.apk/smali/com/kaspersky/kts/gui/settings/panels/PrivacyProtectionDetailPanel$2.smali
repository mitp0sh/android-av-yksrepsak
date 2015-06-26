.class Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel$2;
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
    .line 77
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel$2;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
