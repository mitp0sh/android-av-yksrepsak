.class public final Ldw;
.super Lek;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lek;-><init>(ILjava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Alarm:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
