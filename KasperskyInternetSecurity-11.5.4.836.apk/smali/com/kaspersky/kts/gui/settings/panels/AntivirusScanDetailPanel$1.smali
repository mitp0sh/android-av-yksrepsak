.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfJ;


# instance fields
.field private synthetic a:LfJ;

.field private synthetic b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;LfJ;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$1;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    iput-object p2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$1;->a:LfJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$1;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$1;->a:LfJ;

    invoke-interface {v0}, LfJ;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
