.class public LhN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LhN;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(LhP;)LhJ;
    .locals 5

    .prologue
    .line 23
    const/4 v2, 0x0

    .line 24
    iget-object v3, p0, LhN;->a:Ljava/util/HashMap;

    monitor-enter v3

    .line 25
    :try_start_0
    iget-object v0, p0, LhN;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhP;

    invoke-virtual {v1, p1}, LhP;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhJ;

    .line 32
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public a(LhJ;)LhP;
    .locals 2

    .prologue
    .line 17
    iget-object v1, p0, LhN;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v0, p0, LhN;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhP;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, LhN;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, LhN;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(LhJ;LhP;)V
    .locals 2

    .prologue
    .line 11
    iget-object v1, p0, LhN;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, p0, LhN;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(LhJ;)V
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, LhN;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, LhN;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(LhP;)V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, LhN;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, LhN;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, LhN;->a(LhP;)LhJ;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
