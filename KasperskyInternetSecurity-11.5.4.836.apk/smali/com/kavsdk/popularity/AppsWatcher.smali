.class public Lcom/kavsdk/popularity/AppsWatcher;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:LiH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kavsdk/popularity/AppsWatcher;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LiH;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/popularity/AppsWatcher;->b:Ljava/util/concurrent/ExecutorService;

    .line 21
    iput-object p1, p0, Lcom/kavsdk/popularity/AppsWatcher;->c:LiH;

    .line 22
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kavsdk/popularity/AppsWatcher;->c:LiH;

    invoke-interface {v2}, LiH;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 29
    sget-object v2, Lcom/kavsdk/popularity/AppsWatcher;->a:Ljava/lang/String;

    const-string v3, "Time since the first start of SDK is %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lht;->a()Lht;

    move-result-object v2

    invoke-virtual {v2}, Lht;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 33
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/kavsdk/popularity/AppsWatcher;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lhx;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kavsdk/popularity/AppsWatcher;->c:LiH;

    invoke-direct {v2, v3, v4, v0}, Lhx;-><init>(Landroid/content/Context;LiH;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/kavsdk/popularity/AppsWatcher;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, LhA;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, LhA;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
