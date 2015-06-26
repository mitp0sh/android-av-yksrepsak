.class final LgN;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements LgF;
.implements LgG;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lgz;

.field private final c:LgE;

.field private final d:Ljava/lang/ref/WeakReference;

.field private final e:Ljava/lang/ref/WeakReference;

.field private volatile f:Z

.field private volatile g:Z

.field private final h:Ljava/util/Queue;

.field private volatile i:Z

.field private j:Z


# direct methods
.method constructor <init>(Landroid/content/Context;LgL;LgM;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    iput-boolean v1, p0, LgN;->f:Z

    .line 35
    iput-boolean v1, p0, LgN;->g:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, LgN;->h:Ljava/util/Queue;

    .line 41
    iput-boolean v1, p0, LgN;->j:Z

    .line 44
    iput-object p1, p0, LgN;->a:Landroid/content/Context;

    .line 46
    invoke-static {}, LgA;->a()Lgz;

    move-result-object v0

    iput-object v0, p0, LgN;->b:Lgz;

    .line 47
    iget-object v0, p0, LgN;->b:Lgz;

    invoke-interface {v0}, Lgz;->a()LgE;

    move-result-object v0

    iput-object v0, p0, LgN;->c:LgE;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LgN;->d:Ljava/lang/ref/WeakReference;

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LgN;->e:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, LgN;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LgL;

    .line 156
    if-eqz v0, :cond_2

    .line 157
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v0, v2}, LgL;->a(Ljava/lang/String;)Z

    move-result v0

    .line 160
    :goto_0
    if-nez v0, :cond_0

    .line 161
    iput-boolean v1, p0, LgN;->j:Z

    .line 162
    iget-object v0, p0, LgN;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    .line 163
    :goto_1
    iget-object v0, p0, LgN;->c:LgE;

    const/4 v2, 0x2

    iget-boolean v7, p0, LgN;->f:Z

    iget-boolean v8, p0, LgN;->g:Z

    move-object v1, p1

    move-object v3, p0

    move v6, v5

    invoke-interface/range {v0 .. v8}, LgE;->a(Landroid/content/pm/ApplicationInfo;ILgF;LgG;ZZZZ)V

    .line 165
    iget-boolean v0, p0, LgN;->j:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, LgN;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LgL;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v0, v1}, LgL;->b(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void

    :cond_1
    move-object v4, p0

    .line 162
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(IILgH;Lcom/kavsdk/antivirus/ThreatType;)I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 99
    const/4 v2, 0x0

    .line 100
    iget-boolean v0, p0, LgN;->i:Z

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, LgN;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LgL;

    .line 103
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v2

    .line 123
    :goto_0
    return v0

    .line 111
    :pswitch_0
    const/4 v3, 0x1

    iput-boolean v3, p0, LgN;->j:Z

    .line 112
    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, LgL;->a(LgH;Lcom/kavsdk/antivirus/ThreatType;)Z

    move v0, v1

    .line 114
    goto :goto_0

    :cond_1
    move v0, v1

    .line 120
    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method final a()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, LgN;->i:Z

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(LgH;Lcom/kavsdk/antivirus/SuspiciousThreatType;)V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, LgN;->i:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, LgN;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 135
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, LgN;->i:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, LgN;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, LgN;->f:Z

    .line 180
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, LgN;->g:Z

    .line 184
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 57
    .line 58
    :cond_0
    :goto_0
    iget-boolean v0, p0, LgN;->i:Z

    if-nez v0, :cond_2

    .line 60
    :goto_1
    iget-boolean v0, p0, LgN;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LgN;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 63
    :try_start_0
    iget-object v1, p0, LgN;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, LgN;->a(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    goto :goto_1

    .line 71
    :cond_1
    iget-boolean v0, p0, LgN;->i:Z

    if-nez v0, :cond_0

    .line 73
    monitor-enter p0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    .line 82
    :cond_2
    return-void
.end method
