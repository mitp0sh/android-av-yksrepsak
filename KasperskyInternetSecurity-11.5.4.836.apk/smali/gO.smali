.class final LgO;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:LgN;


# direct methods
.method constructor <init>(LgN;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput-object p1, p0, LgO;->a:LgN;

    .line 23
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, LgO;->a:LgN;

    invoke-virtual {v1, v0}, LgN;->a(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, LgO;->a:LgN;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, LgO;->a:LgN;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
