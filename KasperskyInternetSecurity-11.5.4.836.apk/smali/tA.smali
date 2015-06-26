.class public final LtA;
.super Ltx;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ltf;LsY;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Ltx;-><init>(Ltf;LsY;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, LtA;->d:Z

    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, LtG;

    invoke-direct {v0}, LtG;-><init>()V

    .line 24
    invoke-virtual {v0}, LtG;->d()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, LtG;->a()Ljava/lang/String;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v3, "{\"TicketHeader\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v2, "/activationservice/activationservice.svc/refreshlicense"

    invoke-virtual {p0, v1, v2, v0}, LtA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v0

    .line 39
    const-string v1, "lisence_latest_synchronization_key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsu;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    invoke-virtual {v0}, Lsu;->b()V

    goto :goto_0
.end method
