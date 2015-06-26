.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;
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
    .line 432
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;B)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I

    .line 445
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(IZ)V

    .line 446
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v4}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    :goto_2
    invoke-virtual {v0, v3, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(IZ)V

    .line 448
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 449
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 450
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;Lsf;)V

    .line 452
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->getMode(I)Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;)V

    .line 454
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->g(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;ILjava/lang/String;)V

    .line 455
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 445
    goto :goto_1

    :cond_3
    move v1, v2

    .line 446
    goto :goto_2
.end method
