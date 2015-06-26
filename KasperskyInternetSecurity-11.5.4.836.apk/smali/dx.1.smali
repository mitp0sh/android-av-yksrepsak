.class public final Ldx;
.super Leh;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->BlockDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-direct {p0, v0}, Leh;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ldx;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Ldx;->q()V

    .line 25
    invoke-static {}, LqO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Ldx;->p()V

    .line 30
    :goto_0
    invoke-virtual {p0}, Ldx;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ldx;->a(I)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    invoke-interface {v0}, Lde;->c()Z

    move-result v0

    return v0
.end method

.method protected final d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ldx;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
