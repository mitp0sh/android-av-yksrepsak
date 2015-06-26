.class public Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;
.super Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
.source "UploadImpl.java"

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/Upload;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "transferProgressInternalState"    # Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;
    .param p3, "progressListenerChain"    # Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;
    .param p4, "listener"    # Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public waitForUploadResult()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "result":Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 55
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 56
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    check-cast v2, Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .restart local v2    # "result":Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    goto :goto_0

    .line 59
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "result":Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V

    .line 61
    const/4 v2, 0x0

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_1
    return-object v2
.end method
