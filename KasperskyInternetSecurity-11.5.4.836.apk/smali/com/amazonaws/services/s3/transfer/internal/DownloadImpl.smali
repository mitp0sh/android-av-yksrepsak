.class public Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;
.super Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
.source "DownloadImpl.java"

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/Download;


# instance fields
.field s3Object:Lcom/amazonaws/services/s3/model/S3Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "transferProgress"    # Lcom/amazonaws/services/s3/transfer/TransferProgress;
    .param p3, "progressListenerChain"    # Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;
    .param p4, "s3Object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p5, "listener"    # Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V

    .line 31
    iput-object p4, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    .line 73
    :cond_0
    sget-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setS3Object(Lcom/amazonaws/services/s3/model/S3Object;)V
    .locals 1
    .param p1, "s3Object"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
