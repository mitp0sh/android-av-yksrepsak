.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectTimeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;B)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectTimeListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-static {v0, p2, p3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;II)V

    .line 341
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectTimeListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;ILjava/lang/String;)V

    .line 342
    return-void
.end method
