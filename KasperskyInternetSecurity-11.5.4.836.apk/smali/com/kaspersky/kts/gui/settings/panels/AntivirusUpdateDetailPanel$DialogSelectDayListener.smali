.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectDayListener;
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
    .line 317
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectDayListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;B)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectDayListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 324
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectDayListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectDayListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;I)V

    .line 328
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectDayListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectDayListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;ILjava/lang/String;)V

    .line 329
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 331
    :cond_0
    return-void
.end method
