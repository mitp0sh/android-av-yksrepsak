.class public abstract LdY;
.super Leh;
.source "SourceFile"


# instance fields
.field private final a:Ldj;


# direct methods
.method protected constructor <init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Ldj;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Leh;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V

    .line 14
    iput-object p2, p0, LdY;->a:Ldj;

    .line 15
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0}, LdY;->n()Len;

    move-result-object v1

    invoke-virtual {v1}, Len;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0}, LdY;->q()V

    .line 34
    invoke-static {}, LqO;->a()Z

    move-result v0

    .line 36
    :cond_0
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, v2}, LdY;->a(Z)V

    .line 38
    invoke-virtual {p0}, LdY;->b()V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LdY;->a(I)V

    .line 42
    invoke-virtual {p0}, LdY;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LdY;->a:Ldj;

    invoke-interface {v0}, Ldj;->a()V

    .line 19
    return-void
.end method

.method public final j()Ldj;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, LdY;->a:Ldj;

    return-object v0
.end method
