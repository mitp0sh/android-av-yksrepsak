.class final enum Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType$2;
.super Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;-><init>(Ljava/lang/String;ILcom/kaspersky/kts/antitheft/AntiThiefBusEventType$1;)V

    return-void
.end method


# virtual methods
.method protected final checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 46
    instance-of v0, p1, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Command type should be provided for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType$2;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    return-void
.end method
