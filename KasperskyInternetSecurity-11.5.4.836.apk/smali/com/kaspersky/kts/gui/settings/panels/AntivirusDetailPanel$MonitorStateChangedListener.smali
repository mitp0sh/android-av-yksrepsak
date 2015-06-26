.class final Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;B)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;)V

    return-void
.end method

.method private a(Lme;)V
    .locals 2

    .prologue
    .line 405
    sget-object v1, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$3;->a:[I

    invoke-virtual {p1}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 407
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    invoke-virtual {p1}, Lme;->l()Lcom/kms/antivirus/MonitorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/antivirus/MonitorMode;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->k(I)V

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 401
    check-cast p1, Lme;

    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;->a(Lme;)V

    return-void
.end method
