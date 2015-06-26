.class public final LnP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/kms/gui/SelectFolderActivity;)V
    .locals 1

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LnP;->a:Ljava/lang/ref/WeakReference;

    .line 525
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 529
    new-instance v4, LnS;

    iget-object v0, p0, LnP;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, LnS;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 531
    iget-object v0, p0, LnP;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/SelectFolderActivity;

    .line 532
    if-nez v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {v0, v2}, Lcom/kms/gui/SelectFolderActivity;->a(Z)V

    .line 538
    invoke-virtual {v4}, LnS;->start()V

    .line 541
    invoke-virtual {v0}, Lcom/kms/gui/SelectFolderActivity;->k()Ljava/lang/String;

    move-result-object v5

    .line 542
    invoke-virtual {v0}, Lcom/kms/gui/SelectFolderActivity;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 544
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 550
    :goto_1
    if-eqz v1, :cond_3

    .line 551
    const/4 v1, 0x0

    invoke-static {}, Lcom/kms/gui/SelectFolderActivity;->f()Z

    move-result v6

    invoke-static {v0, v5, v1, v6}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 558
    :goto_2
    iget-object v0, p0, LnP;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/SelectFolderActivity;

    .line 559
    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {v0, v3}, Lcom/kms/gui/SelectFolderActivity;->a(Z)V

    .line 565
    :cond_2
    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4}, LnS;->a()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v4}, LnS;->b()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 566
    array-length v3, v1

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_4

    aget-object v2, v1, v0

    .line 567
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 569
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 553
    :cond_3
    invoke-virtual {v0}, Lcom/kms/gui/SelectFolderActivity;->e()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/kms/gui/SelectFolderActivity;->f()Z

    move-result v6

    invoke-static {v0, v5, v1, v6}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_2

    .line 569
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 571
    :cond_4
    :try_start_3
    invoke-virtual {v4}, LnS;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method
