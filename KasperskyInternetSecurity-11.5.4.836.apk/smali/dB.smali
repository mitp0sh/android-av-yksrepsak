.class final LdB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp;


# instance fields
.field final synthetic a:LdA;

.field private b:Z


# direct methods
.method constructor <init>(LdA;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, LdB;->a:LdA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->a(LdA;)Lcom/kaspersky/kts/antitheft/find/FindState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/find/FindState;->increaseAttempts()V

    .line 110
    iget-object v0, p0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->b(LdA;)LdI;

    move-result-object v0

    iget-object v1, p0, LdB;->a:LdA;

    invoke-static {v1}, LdA;->a(LdA;)Lcom/kaspersky/kts/antitheft/find/FindState;

    move-result-object v1

    invoke-interface {v0, v1}, LdI;->a(Lcom/kaspersky/kts/antitheft/find/FindState;)V

    .line 113
    iget-object v0, p0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->d(LdA;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, LdC;

    invoke-direct {v1, p0}, LdC;-><init>(LdB;)V

    const-wide/32 v2, 0x493e0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 119
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, LdB;->b:Z

    .line 144
    iget-object v0, p0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->g(LdA;)Lo;

    move-result-object v0

    invoke-interface {v0, p1}, Lo;->a(Landroid/location/Location;)V

    .line 145
    iget-object v0, p0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->h(LdA;)V

    .line 146
    iget-object v0, p0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->c(LdA;)Ln;

    move-result-object v0

    invoke-interface {v0}, Ln;->a()V

    .line 147
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 123
    iget-boolean v0, p0, LdB;->b:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->a(LdA;)Lcom/kaspersky/kts/antitheft/find/FindState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/find/FindState;->getAttempts()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v0, p0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->d(LdA;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, LdD;

    invoke-direct {v1, p0}, LdD;-><init>(LdB;)V

    const-wide/32 v2, 0x124f80

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->f(LdA;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LdB;->a:LdA;

    invoke-static {v1}, LdA;->e(LdA;)LdE;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    iget-object v0, p0, LdB;->a:LdA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LdA;->a(Z)V

    .line 139
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, LdB;->a:LdA;

    const-string v1, "Cannot get current location. Number of attempts were exceeded."

    invoke-static {v0, v1}, LdA;->a(LdA;Ljava/lang/String;)V

    goto :goto_0
.end method
