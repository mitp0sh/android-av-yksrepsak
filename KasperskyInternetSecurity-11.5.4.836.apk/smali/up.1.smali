.class public final Lup;
.super LtF;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Luq;

    invoke-direct {v0, p1}, Luq;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, LtF;-><init>(Ltf;)V

    .line 35
    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lup;->d:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lty;

    iget-object v1, p0, Lup;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v1

    const-string v2, "licensing.activation_2_host"

    invoke-interface {v1, v2}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LjJ;->p()Ll;

    move-result-object v2

    const-string v3, "licensing.simulate_activation_2_url"

    invoke-interface {v2, v3}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lty;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lup;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected final a(LtB;LtB;J)Z
    .locals 3

    .prologue
    .line 49
    invoke-interface {p2}, LtB;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    new-instance v1, LaE;

    invoke-direct {v1, v0}, LaE;-><init>(Lorg/json/JSONObject;)V

    .line 52
    new-instance v0, Lsw;

    iget-object v2, p0, Lup;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Lsw;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v2, v1, LaE;->e:LaF;

    iget v2, v2, LaF;->a:I

    invoke-virtual {v0, v2}, Lsw;->a(I)V

    .line 54
    iget-wide v1, v1, LaE;->d:J

    invoke-virtual {v0, v1, v2}, Lsw;->a(J)V

    .line 56
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Lsk;->a(Lsw;)V

    .line 58
    invoke-virtual {v1}, Lsk;->g_()V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
