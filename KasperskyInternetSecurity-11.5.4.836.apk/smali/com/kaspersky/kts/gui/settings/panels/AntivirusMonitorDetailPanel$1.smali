.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfJ;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 102
    const/16 v1, 0xc

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
