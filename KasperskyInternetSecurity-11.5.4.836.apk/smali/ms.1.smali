.class final Lms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmr;
.implements Lmy;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lcom/kms/antivirus/AvSynchronizedQueue;

.field private c:Z

.field private final d:Lmz;

.field private e:I


# direct methods
.method protected constructor <init>(Lcom/kms/antivirus/AvSynchronizedQueue;Lmz;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lms;->a:Ljava/util/HashMap;

    .line 23
    iput-object p2, p0, Lms;->d:Lmz;

    .line 24
    iput-object p1, p0, Lms;->b:Lcom/kms/antivirus/AvSynchronizedQueue;

    .line 25
    invoke-direct {p0}, Lms;->e()V

    .line 26
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kavsdk/shared/SdkUtils;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    new-instance v3, Lcom/kms/antivirus/AvDownloadsFolderMonitor;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/kms/antivirus/AvDownloadsFolderMonitor;-><init>(Lmr;Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lms;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v3}, Lcom/kms/antivirus/AvDownloadsFolderMonitor;->startWatching()V

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lms;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AvDownloadsFolderMonitor;

    .line 42
    invoke-virtual {v0}, Lcom/kms/antivirus/AvDownloadsFolderMonitor;->stopWatching()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lms;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 45
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lms;->e:I

    .line 74
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lms;->b:Lcom/kms/antivirus/AvSynchronizedQueue;

    new-instance v1, Lmt;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p0}, Lmt;-><init>(Ljava/lang/String;ILmy;)V

    invoke-virtual {v0, v1}, Lcom/kms/antivirus/AvSynchronizedQueue;->add(Lmt;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lms;->c:Z

    .line 53
    iget-object v1, p0, Lms;->d:Lmz;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lms;->d:Lmz;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lms;->d:Lmz;

    monitor-enter v1

    .line 61
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lms;->c:Z

    .line 62
    :goto_0
    iget-boolean v0, p0, Lms;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 64
    :try_start_1
    iget-object v0, p0, Lms;->d:Lmz;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0

    .line 69
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lms;->e:I

    return v0
.end method
