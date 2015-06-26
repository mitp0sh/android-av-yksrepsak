.class public final LnS;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 580
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LnS;->a:Ljava/lang/Object;

    .line 581
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LnS;->b:Ljava/lang/Object;

    .line 585
    iput-object p1, p0, LnS;->c:Ljava/lang/ref/WeakReference;

    .line 586
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, LnS;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, LnS;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 598
    iget-object v1, p0, LnS;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, LnS;->a:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, LnS;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/SelectFolderActivity;

    .line 607
    if-nez v0, :cond_1

    .line 628
    :cond_0
    :goto_1
    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 610
    :cond_1
    invoke-virtual {v0}, Lcom/kms/gui/SelectFolderActivity;->j()Z

    move-result v2

    if-nez v2, :cond_2

    .line 611
    invoke-virtual {v0}, Lcom/kms/gui/SelectFolderActivity;->g()V

    .line 612
    const/4 v0, 0x1

    move v1, v0

    .line 616
    :cond_2
    if-eqz v1, :cond_3

    .line 617
    iget-object v2, p0, LnS;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 619
    :try_start_2
    iget-object v0, p0, LnS;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 621
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 624
    :cond_3
    iget-object v0, p0, LnS;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/SelectFolderActivity;

    .line 625
    if-eqz v0, :cond_0

    .line 626
    invoke-static {v0, v1}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Z)V

    goto :goto_1

    .line 621
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method
