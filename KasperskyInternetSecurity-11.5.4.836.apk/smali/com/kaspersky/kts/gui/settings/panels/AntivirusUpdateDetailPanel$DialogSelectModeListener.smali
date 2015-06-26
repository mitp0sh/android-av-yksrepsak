.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;B)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 298
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    if-nez p2, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b(IZ)V

    .line 307
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    const/4 v3, 0x3

    if-eq p2, v4, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v3, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b(IZ)V

    .line 308
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;I)V

    .line 309
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;ILjava/lang/String;)V

    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 312
    invoke-static {p2}, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->getMode(I)Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->b(Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 306
    goto :goto_1
.end method
