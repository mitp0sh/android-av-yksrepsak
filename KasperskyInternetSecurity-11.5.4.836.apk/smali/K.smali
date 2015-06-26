.class final LK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LH;


# direct methods
.method private constructor <init>(LH;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, LK;->a:LH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LH;B)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, LK;-><init>(LH;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, LK;->a:LH;

    invoke-static {v0}, LH;->a(LH;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Ipm_updater_wake_lock"

    invoke-static {v0, v1}, LbB;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 195
    :try_start_0
    iget-object v0, p0, LK;->a:LH;

    invoke-static {v0}, LH;->e(LH;)Lcom/kaspersky/components/ipm/IpmServiceImpl;

    move-result-object v0

    iget-object v2, p0, LK;->a:LH;

    invoke-static {v2}, LH;->d(LH;)LR;

    move-result-object v2

    invoke-interface {v2}, LR;->a()Lcom/kaspersky/components/ipm/Request;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kaspersky/components/ipm/IpmServiceImpl;->a(Lcom/kaspersky/components/ipm/Request;)[Lcom/kaspersky/components/ipm/ContentReference;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    iget-object v2, p0, LK;->a:LH;

    invoke-static {v2}, LH;->f(LH;)LO;

    move-result-object v2

    invoke-virtual {v2, v0}, LO;->a([Lcom/kaspersky/components/ipm/ContentReference;)V

    .line 200
    :cond_0
    iget-object v0, p0, LK;->a:LH;

    invoke-static {v0}, LH;->g(LH;)LF;

    .line 201
    iget-object v0, p0, LK;->a:LH;

    invoke-static {v0}, LH;->i(LH;)Lv;

    move-result-object v0

    iget-object v2, p0, LK;->a:LH;

    invoke-static {v2}, LH;->h(LH;)I

    move-result v2

    invoke-interface {v0, v2}, Lv;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    invoke-static {v1}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 217
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 205
    :try_start_1
    iget-object v0, p0, LK;->a:LH;

    invoke-static {v0}, LH;->j(LH;)Lu;

    move-result-object v0

    invoke-interface {v0}, Lu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, LK;->a:LH;

    invoke-static {v0}, LH;->i(LH;)Lv;

    move-result-object v0

    iget-object v2, p0, LK;->a:LH;

    invoke-static {v2}, LH;->h(LH;)I

    move-result v2

    invoke-interface {v0, v2}, Lv;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    :goto_1
    invoke-static {v1}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    goto :goto_0

    .line 208
    :cond_1
    :try_start_2
    iget-object v0, p0, LK;->a:LH;

    invoke-static {v0}, LH;->i(LH;)Lv;

    move-result-object v0

    iget-object v2, p0, LK;->a:LH;

    invoke-static {v2}, LH;->h(LH;)I

    move-result v2

    invoke-interface {v0, v2}, Lv;->b(I)V

    .line 211
    iget-object v0, p0, LK;->a:LH;

    invoke-static {v0}, LH;->b(LH;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 212
    :try_start_3
    iget-object v0, p0, LK;->a:LH;

    invoke-static {v0}, LH;->b(LH;)Ljava/util/Set;

    move-result-object v0

    iget-object v3, p0, LK;->a:LH;

    invoke-static {v3}, LH;->k(LH;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    :catchall_1
    move-exception v0

    invoke-static {v1}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    throw v0
.end method
