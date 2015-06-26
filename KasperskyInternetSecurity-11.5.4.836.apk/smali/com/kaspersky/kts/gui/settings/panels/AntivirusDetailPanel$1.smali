.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfJ;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 142
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->h()Lcom/kms/antivirus/MonitorMode;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
