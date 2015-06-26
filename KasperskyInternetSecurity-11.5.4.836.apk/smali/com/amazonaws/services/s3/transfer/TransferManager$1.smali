.class Lcom/amazonaws/services/s3/transfer/TransferManager$1;
.super Ljava/lang/Object;
.source "TransferManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/s3/transfer/TransferManager;->download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/s3/transfer/TransferManager;

.field final synthetic val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

.field final synthetic val$startDownloadLock:Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/transfer/TransferManager;Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->this$0:Lcom/amazonaws/services/s3/transfer/TransferManager;

    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$startDownloadLock:Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;

    iput-object p3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    iput-object p4, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    iput-object p5, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 495
    :try_start_0
    iget-object v4, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$startDownloadLock:Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 496
    :try_start_1
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$startDownloadLock:Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;

    # getter for: Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;->downloadReady:Z
    invoke-static {v3}, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;->access$100(Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 498
    :try_start_2
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$startDownloadLock:Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    :try_start_4
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    sget-object v4, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->InProgress:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 505
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->this$0:Lcom/amazonaws/services/s3/transfer/TransferManager;

    # getter for: Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;
    invoke-static {v3}, Lcom/amazonaws/services/s3/transfer/TransferManager;->access$200(Lcom/amazonaws/services/s3/transfer/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-interface {v3, v4}, Lcom/amazonaws/services/s3/AmazonS3;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v2

    .line 507
    .local v2, "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setS3Object(Lcom/amazonaws/services/s3/model/S3Object;)V

    .line 509
    if-nez v2, :cond_2

    .line 510
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    sget-object v4, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 511
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    new-instance v4, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;

    iget-object v5, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;Ljava/util/concurrent/Future;)V

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V

    .line 512
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 524
    :goto_0
    return-object v3

    .line 499
    .end local v2    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Couldn\'t wait for setting future into the monitor"

    invoke-direct {v3, v5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 503
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 525
    :catch_1
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-eq v3, v4, :cond_1

    .line 528
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    sget-object v4, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Failed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 530
    :cond_1
    throw v0

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    :cond_2
    const/4 v1, 0x1

    .line 519
    .local v1, "performIntegrityCheck":Z
    :try_start_7
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 520
    :cond_3
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->this$0:Lcom/amazonaws/services/s3/transfer/TransferManager;

    # getter for: Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;
    invoke-static {v3}, Lcom/amazonaws/services/s3/transfer/TransferManager;->access$200(Lcom/amazonaws/services/s3/transfer/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v3

    instance-of v3, v3, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    .line 522
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$file:Ljava/io/File;

    invoke-static {v2, v3, v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->downloadObjectToFile(Lcom/amazonaws/services/s3/model/S3Object;Ljava/io/File;Z)V

    .line 523
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    sget-object v4, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 524
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v3

    goto :goto_0
.end method
