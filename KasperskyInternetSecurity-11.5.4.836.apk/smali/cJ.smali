.class public final LcJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LcK;


# instance fields
.field private final a:Lcom/kaspersky/components/webfilter/ProxySettings;

.field private final b:LcC;

.field private final c:Ljava/util/Set;

.field private final d:Landroid/net/wifi/WifiManager;

.field private final e:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/content/Context;)Lcom/kaspersky/components/webfilter/ProxySettings;

    move-result-object v0

    iput-object v0, p0, LcJ;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LcJ;->c:Ljava/util/Set;

    .line 30
    new-instance v0, LcC;

    invoke-direct {v0, p0}, LcC;-><init>(LcK;)V

    iput-object v0, p0, LcJ;->b:LcC;

    .line 31
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, LcJ;->d:Landroid/net/wifi/WifiManager;

    .line 32
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, LcJ;->e:Landroid/net/ConnectivityManager;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/kaspersky/components/webfilter/Request;Ljava/io/OutputStream;)I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x2

    .line 88
    iget-object v1, p0, LcJ;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcL;

    .line 90
    invoke-interface {v0, p1, p2}, LcL;->a(Lcom/kaspersky/components/webfilter/Request;Ljava/io/OutputStream;)I

    move-result v0

    .line 91
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 94
    :cond_1
    return v0
.end method

.method public final a(LcL;)V
    .locals 1

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, LcJ;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, LcJ;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    iget-object v1, p0, LcJ;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-virtual {v1}, Lcom/kaspersky/components/webfilter/ProxySettings;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LcJ;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, LcJ;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-virtual {v1}, Lcom/kaspersky/components/webfilter/ProxySettings;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, LcJ;->b:LcC;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, LcJ;->b:LcC;

    invoke-virtual {v0}, LcC;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, LcJ;->b:LcC;

    invoke-virtual {v0}, LcC;->start()V

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(LcL;)V
    .locals 1

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, LcJ;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, LcJ;->b:LcC;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, LcJ;->b:LcC;

    invoke-virtual {v0}, LcC;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, LcJ;->b:LcC;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, LcC;->a(Z)V

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, LcJ;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-virtual {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, LcJ;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-static {}, Lcom/kaspersky/components/webfilter/ProxySettings;->c()I

    move-result v0

    return v0
.end method
