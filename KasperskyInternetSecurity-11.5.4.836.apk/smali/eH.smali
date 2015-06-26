.class public LeH;
.super Len;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

.field protected final b:LaU;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/ucp/UcpAction;LaU;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Len;-><init>()V

    .line 16
    iput-object p1, p0, LeH;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    .line 17
    iput-object p2, p0, LeH;->b:LaU;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lee;)V
    .locals 3

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-interface {p1}, Lee;->d()I

    move-result v0

    .line 27
    invoke-interface {p1}, Lee;->c()Ljava/lang/String;

    move-result-object v1

    .line 29
    if-nez v0, :cond_2

    .line 30
    iget-object v0, p0, LeH;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v0

    .line 31
    sget-object v2, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetDeviceLocation:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    if-ne v0, v2, :cond_1

    .line 32
    check-cast p1, LeB;

    .line 33
    iget-object v0, p0, LeH;->b:LaU;

    invoke-virtual {p1}, LeB;->a()Lcom/kaspersky/components/ucp/PositionInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LaU;->reportGpsCommandResult(Ljava/lang/String;Lcom/kaspersky/components/ucp/PositionInfo;)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, LeH;->b:LaU;

    invoke-interface {v0, v1}, LaU;->reportCommandSucced(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0, p1}, LeH;->b(Lee;)V

    goto :goto_0
.end method

.method protected final b(Lee;)V
    .locals 4

    .prologue
    .line 43
    check-cast p1, LeE;

    .line 44
    iget-object v0, p0, LeH;->b:LaU;

    invoke-virtual {p1}, LeE;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LeE;->e()Lcom/kaspersky/components/ucp/UcpCommandError;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    .line 45
    return-void
.end method
