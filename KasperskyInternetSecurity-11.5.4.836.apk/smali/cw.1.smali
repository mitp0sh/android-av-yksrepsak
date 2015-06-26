.class public final Lcw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Hashtable;

.field private synthetic b:Lcom/kaspersky/components/webfilter/ProxySettings;


# direct methods
.method public constructor <init>(Lcom/kaspersky/components/webfilter/ProxySettings;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcw;->b:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-direct {p0}, Lcw;->b()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcw;->a:Ljava/util/Hashtable;

    .line 111
    return-void
.end method

.method private b()Ljava/util/Hashtable;
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcw;->c()Ljava/io/File;

    move-result-object v0

    .line 116
    invoke-static {v0}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 117
    if-eqz v0, :cond_0

    const-string v1, "wifi_http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    if-nez v1, :cond_1

    .line 118
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 120
    :cond_1
    return-object v0
.end method

.method private declared-synchronized c()Ljava/io/File;
    .locals 3

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcw;->b:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Lcom/kaspersky/components/webfilter/ProxySettings;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/io/File;

    const-string v2, "wfapnbak"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcw;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    .line 149
    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->EMPTY:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcw;
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcw;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-object p0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)Lcw;
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    invoke-direct {v0, p2, p3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcw;->a(Ljava/lang/String;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcw;->c()Ljava/io/File;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcw;->a:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Ly;->a(Ljava/io/File;Ljava/io/Serializable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcw;
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcw;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-object p0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
