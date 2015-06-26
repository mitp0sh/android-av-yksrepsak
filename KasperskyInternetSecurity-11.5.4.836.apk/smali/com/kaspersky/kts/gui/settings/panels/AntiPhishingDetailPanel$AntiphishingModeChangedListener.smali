.class final Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;B)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)V

    return-void
.end method

.method private a(LkJ;)V
    .locals 2

    .prologue
    .line 260
    sget-object v1, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$2;->a:[I

    invoke-virtual {p1}, LkJ;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antiphishing/AntiPhishingBusEventType;

    invoke-virtual {v0}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 256
    check-cast p1, LkJ;

    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;->a(LkJ;)V

    return-void
.end method
