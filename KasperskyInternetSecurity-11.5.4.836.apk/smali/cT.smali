.class public final LcT;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/kaspersky/kts/antitheft/KisAtCommandType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {p0, v0}, LcT;->a(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, LcT;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    return-object v0
.end method

.method public final b()Lcom/kaspersky/kts/antitheft/KisAtCommandType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandDisabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {p0, v0}, LcT;->a(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, LcT;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    return-object v0
.end method
