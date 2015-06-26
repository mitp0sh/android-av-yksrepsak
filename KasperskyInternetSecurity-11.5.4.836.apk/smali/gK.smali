.class final LgK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private b:LgN;

.field private c:LgO;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LgK;->a:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-boolean v0, p0, LgK;->d:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-direct {p0}, LgK;->b()Landroid/content/Context;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, LgK;->c:LgO;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    :cond_0
    iget-object v0, p0, LgK;->b:LgN;

    invoke-virtual {v0}, LgN;->a()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, LgK;->d:Z

    .line 53
    iput-object v2, p0, LgK;->b:LgN;

    .line 54
    iput-object v2, p0, LgK;->c:LgO;

    .line 57
    :cond_1
    return-void
.end method

.method private b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, LgK;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method final a(LgL;LgM;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, LgK;->a()V

    .line 25
    invoke-direct {p0}, LgK;->b()Landroid/content/Context;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    new-instance v1, LgN;

    invoke-direct {v1, v0, p1, p2}, LgN;-><init>(Landroid/content/Context;LgL;LgM;)V

    iput-object v1, p0, LgK;->b:LgN;

    .line 28
    iget-object v1, p0, LgK;->b:LgN;

    invoke-virtual {v1}, LgN;->start()V

    .line 30
    new-instance v1, LgO;

    iget-object v2, p0, LgK;->b:LgN;

    invoke-direct {v1, v2}, LgO;-><init>(LgN;)V

    iput-object v1, p0, LgK;->c:LgO;

    .line 32
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, LgK;->c:LgO;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, LgK;->d:Z

    .line 39
    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, LgK;->b:LgN;

    invoke-virtual {v0, p1}, LgN;->a(Z)V

    .line 74
    return-void
.end method

.method final b(Z)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, LgK;->b:LgN;

    invoke-virtual {v0, p1}, LgN;->b(Z)V

    .line 78
    return-void
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 62
    :try_start_0
    invoke-direct {p0}, LgK;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
