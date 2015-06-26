.class Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfJ;


# instance fields
.field private a:LfN;

.field private b:I

.field private synthetic c:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;I)V
    .locals 2

    .prologue
    .line 245
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;->c:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, LfN;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LfN;-><init>(I)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;->a:LfN;

    .line 247
    iput p2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;->b:I

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;IB)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;->a:LfN;

    invoke-virtual {v2}, LfN;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    :goto_0
    return v1

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;->c:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)LkZ;

    move-result-object v2

    invoke-interface {v2}, LkZ;->a()I

    move-result v2

    .line 258
    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;->b:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    move v1, v0

    .line 271
    goto :goto_0

    .line 260
    :pswitch_0
    if-eqz v2, :cond_2

    if-ne v2, v0, :cond_1

    :cond_2
    move v0, v1

    .line 261
    goto :goto_1

    .line 265
    :pswitch_1
    if-eqz v2, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_3
    move v0, v1

    .line 266
    goto :goto_1

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
