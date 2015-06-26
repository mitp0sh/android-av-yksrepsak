.class final LP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN;


# instance fields
.field private synthetic a:LO;


# direct methods
.method constructor <init>(LO;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, LP;->a:LO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    .line 406
    iget-object v0, p0, LP;->a:LO;

    invoke-static {v0}, LO;->a(LO;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 407
    :try_start_0
    iget-object v0, p0, LP;->a:LO;

    invoke-static {v0}, LO;->b(LO;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    monitor-exit v3

    .line 433
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, LP;->a:LO;

    invoke-static {v0}, LO;->b(LO;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 412
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/IpmMessageState;

    .line 414
    iget-object v5, p0, LP;->a:LO;

    invoke-static {v5}, LO;->c(LO;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/IpmMessageState;->getNewsId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/ContentReference;

    .line 415
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getMessageId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    .line 416
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 417
    const-wide/16 v4, -0x2

    invoke-virtual {v0, v4, v5}, Lcom/kaspersky/components/ipm/ContentReference;->setMessageId(J)V

    move v0, v1

    .line 423
    :goto_1
    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, LP;->a:LO;

    invoke-static {v0}, LO;->d(LO;)LB;

    move-result-object v0

    iget-object v4, p0, LP;->a:LO;

    invoke-static {v4}, LO;->b(LO;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v0, v4}, LB;->a(Ljava/util/SortedMap;)V

    .line 428
    iget-object v0, p0, LP;->a:LO;

    invoke-static {v0}, LO;->d(LO;)LB;

    move-result-object v0

    iget-object v4, p0, LP;->a:LO;

    invoke-static {v4}, LO;->c(LO;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, LB;->a(Ljava/util/Collection;)V

    .line 430
    :cond_2
    iget-object v0, p0, LP;->a:LO;

    invoke-static {v0}, LO;->b(LO;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 431
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    iget-object v1, p0, LP;->a:LO;

    invoke-static {v1, v0}, LO;->a(LO;Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 430
    goto :goto_2

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
