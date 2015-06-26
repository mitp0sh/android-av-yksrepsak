.class final Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;
.super Ljava/lang/Object;
.source "TransferManager.java"

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/transfer/TransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultipleFileTransferStateChangeListener"
.end annotation


# instance fields
.field private final allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

.field private final multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;)V
    .locals 0
    .param p1, "allTransfersQueuedLock"    # Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;
    .param p2, "multipleFileDownload"    # Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    .line 659
    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    .line 660
    return-void
.end method


# virtual methods
.method public transferStateChanged(Lcom/amazonaws/services/s3/transfer/Transfer;Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V
    .locals 4
    .param p1, "upload"    # Lcom/amazonaws/services/s3/transfer/Transfer;
    .param p2, "state"    # Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    .prologue
    .line 668
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    monitor-enter v2

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    # getter for: Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->allQueued:Z
    invoke-static {v1}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->access$400(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 671
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 678
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    monitor-enter v2

    .line 679
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v1

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 680
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 695
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Couldn\'t wait for all downloads to be queued"

    invoke-direct {v1, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 687
    :cond_2
    :try_start_5
    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->InProgress:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-ne p2, v1, :cond_3

    .line 688
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v1, p2}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 694
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 689
    :cond_3
    :try_start_6
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->getMonitor()Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->isDone()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 690
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->collateFinalState()V

    goto :goto_1

    .line 692
    :cond_4
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    sget-object v3, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->InProgress:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method
