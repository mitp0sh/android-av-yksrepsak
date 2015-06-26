.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;B)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 495
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->k(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->l(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 506
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I

    .line 498
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0, p3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I

    .line 499
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->k(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->l(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 501
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v2

    .line 502
    const/4 v3, 0x4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 503
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;Lsf;)V

    .line 505
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->m(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;ILjava/lang/String;)V

    goto :goto_0
.end method
