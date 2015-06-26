.class final LnW;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:LnX;

.field private synthetic c:LnT;


# direct methods
.method public constructor <init>(LnT;Landroid/os/Handler;LnX;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, LnW;->c:LnT;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    iput-object p2, p0, LnW;->a:Landroid/os/Handler;

    .line 114
    iput-object p3, p0, LnW;->b:LnX;

    .line 115
    return-void
.end method

.method private a(Landroid/os/Handler;I)V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    const-string v2, "total"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 122
    iget-object v1, p0, LnW;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 127
    iget-object v0, p0, LnW;->c:LnT;

    invoke-static {v0}, LnT;->f(LnT;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, LnW;->c:LnT;

    invoke-static {v0}, LnT;->f(LnT;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, LnW;->c:LnT;

    invoke-static {v0}, LnT;->f(LnT;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    if-eq v0, v2, :cond_3

    iget-object v1, p0, LnW;->c:LnT;

    invoke-static {v1}, LnT;->c(LnT;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 140
    iget-object v0, p0, LnW;->b:LnX;

    invoke-interface {v0}, LnX;->b()I

    move-result v0

    .line 141
    iget-object v1, p0, LnW;->c:LnT;

    invoke-static {v1}, LnT;->c(LnT;)I

    move-result v1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    .line 143
    :cond_1
    iget-object v1, p0, LnW;->b:LnX;

    invoke-interface {v1}, LnX;->c()V

    .line 145
    :cond_2
    iget-object v1, p0, LnW;->a:Landroid/os/Handler;

    invoke-direct {p0, v1, v0}, LnW;->a(Landroid/os/Handler;I)V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 147
    :cond_3
    return-void
.end method
