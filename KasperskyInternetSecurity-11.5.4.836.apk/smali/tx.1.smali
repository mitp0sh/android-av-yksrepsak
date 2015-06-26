.class public abstract Ltx;
.super LtF;
.source "SourceFile"


# instance fields
.field protected d:Z

.field private g:LsY;


# direct methods
.method public constructor <init>(Ltf;LsY;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, LtF;-><init>(Ltf;)V

    .line 28
    iput-object p2, p0, Ltx;->g:LsY;

    .line 29
    iput-object p1, p0, Ltx;->b:Ltf;

    .line 30
    invoke-static {}, Lkr;->a()Lgp;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lgp;

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(LtB;LtB;J)Z
    .locals 8

    .prologue
    .line 35
    new-instance v0, LaD;

    invoke-interface {p1}, LtB;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p2}, LtB;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LaD;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 38
    invoke-interface {p2}, LtB;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LaD;->a()LaN;

    move-result-object v2

    iget-object v2, v2, LaN;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 39
    new-instance v6, Ltv;

    invoke-direct {v6, v0}, Ltv;-><init>(LaD;)V

    .line 40
    invoke-virtual {v6}, Ltv;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ltv;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {v6}, Ltv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3ef

    .line 44
    :goto_0
    iget-object v1, p0, Ltx;->b:Ltf;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Ltf;->a(IILjava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 87
    :goto_1
    return v0

    .line 41
    :cond_0
    const v0, 0xdead

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v6}, Ltv;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    .line 48
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 52
    iget-object v0, p0, Ltx;->b:Ltf;

    const/4 v1, 0x1

    const/16 v2, 0x26e

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltf;->a(IILjava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    goto :goto_1

    .line 57
    :cond_2
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v7

    .line 58
    iget-object v0, p0, Ltx;->e:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {v7}, Lsk;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltx;->e:Ljava/lang/String;

    .line 62
    :cond_3
    new-instance v0, LtG;

    invoke-direct {v0}, LtG;-><init>()V

    iget-object v3, p0, Ltx;->e:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, LtG;->a(LtB;LtB;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 63
    iget-boolean v0, p0, Ltx;->d:Z

    if-nez v0, :cond_6

    .line 64
    invoke-virtual {v7}, Lsk;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 65
    iget-object v0, p0, Ltx;->g:LsY;

    invoke-interface {v0}, LsY;->b()V

    .line 66
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lsk;->a(I)V

    .line 68
    :cond_4
    iget-object v0, p0, Ltx;->g:LsY;

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->c()I

    move-result v0

    .line 69
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v7, v0}, Lsk;->a(Z)V

    .line 72
    :cond_6
    new-instance v0, Ltu;

    invoke-direct {v0, v6}, Ltu;-><init>(Ltv;)V

    .line 73
    iget-object v1, p0, Ltx;->b:Ltf;

    const/4 v2, 0x1

    new-instance v3, Ltc;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v0}, Ltc;-><init>(ZILjava/lang/String;LsX;)V

    invoke-interface {v1, v2, v3}, Ltf;->a(ILtc;)V

    .line 77
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v0

    .line 79
    const-string v1, "lisence_latest_update_key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsu;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    invoke-virtual {v0}, Lsu;->b()V

    .line 85
    const-string v0, ""

    invoke-virtual {v7, v0}, Lsk;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v7}, Lsk;->g_()V

    .line 87
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 69
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 89
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 92
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 104
    iget-object v1, p0, Ltx;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsk;->a(Ljava/lang/String;)V

    .line 105
    return-void
.end method
