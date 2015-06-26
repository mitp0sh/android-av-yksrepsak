.class public final Ltw;
.super Ltx;
.source "SourceFile"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltf;LsQ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ltx;-><init>(Ltf;LsY;)V

    .line 21
    invoke-static {p3}, Lcom/kms/kmsshared/Utils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw;->g:Ljava/lang/String;

    .line 22
    invoke-static {p4}, Lcom/kms/kmsshared/Utils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw;->h:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lty;

    iget-object v1, p0, Ltw;->g:Ljava/lang/String;

    iget-object v2, p0, Ltw;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v1

    const-string v2, "licensing.activation_2_host"

    invoke-interface {v1, v2}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LjJ;->p()Ll;

    move-result-object v2

    const-string v3, "licensing.activation_2_url"

    invoke-interface {v2, v3}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lty;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Ltw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v0

    .line 34
    const-string v1, "lisence_creation_date_key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsu;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    invoke-virtual {v0}, Lsu;->b()V

    .line 37
    return-void
.end method
