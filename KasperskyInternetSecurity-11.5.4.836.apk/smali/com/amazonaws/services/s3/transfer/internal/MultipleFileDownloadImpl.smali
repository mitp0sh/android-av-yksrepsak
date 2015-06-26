.class public Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;
.super Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;
.source "MultipleFileDownloadImpl.java"

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/MultipleFileDownload;


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final keyPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "transferProgress"    # Lcom/amazonaws/services/s3/transfer/TransferProgress;
    .param p3, "progressListenerChain"    # Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;
    .param p4, "keyPrefix"    # Ljava/lang/String;
    .param p5, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/transfer/TransferProgress;",
            "Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/amazonaws/services/s3/transfer/Download;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p6, "downloads":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/amazonaws/services/s3/transfer/Download;>;"
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/util/Collection;)V

    .line 41
    iput-object p4, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->keyPrefix:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->bucketName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->subTransfers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/transfer/Transfer;

    .line 86
    .local v0, "fileDownload":Lcom/amazonaws/services/s3/transfer/Transfer;
    check-cast v0, Lcom/amazonaws/services/s3/transfer/Download;

    .end local v0    # "fileDownload":Lcom/amazonaws/services/s3/transfer/Transfer;
    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/Download;->abort()V

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->keyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->waitForCompletion()V

    goto :goto_0
.end method
