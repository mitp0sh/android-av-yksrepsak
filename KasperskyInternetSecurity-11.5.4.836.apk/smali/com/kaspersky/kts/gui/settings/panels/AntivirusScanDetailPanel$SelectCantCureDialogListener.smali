.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;B)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 410
    if-ltz p2, :cond_0

    .line 412
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I

    .line 416
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 417
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 418
    invoke-virtual {v0}, Lsf;->g_()V

    .line 419
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->getCleanMode(I)Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;)V

    .line 420
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;ILjava/lang/String;)V

    .line 421
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
