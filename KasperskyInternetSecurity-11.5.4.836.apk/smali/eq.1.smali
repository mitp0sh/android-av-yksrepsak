.class public final Leq;
.super Lel;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/CommandItem;)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/CommandItem;->getActionInfo()Lcom/kaspersky/kts/antitheft/ActionInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lel;-><init>(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    .line 19
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/CommandItem;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leq;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lee;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Leq;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v1

    .line 40
    sget-object v0, Les;->a:[I

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t expect!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    new-instance v0, Ldw;

    iget-object v1, p0, Leq;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Ldw;-><init>(ILjava/lang/String;)V

    .line 45
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, LeJ;

    iget-object v2, p0, Leq;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, LeJ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)Lee;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ler;

    iget-object v1, p0, Leq;->b:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Ler;-><init>(Leq;ILjava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/location/Location;)Lee;
    .locals 3

    .prologue
    .line 34
    new-instance v0, LdF;

    const/4 v1, 0x0

    iget-object v2, p0, Leq;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, LdF;-><init>(ILjava/lang/String;Landroid/location/Location;)V

    return-object v0
.end method

.method public final a([BI)Lee;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, LdS;

    iget-object v2, p0, Leq;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0, p2}, LdS;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method
