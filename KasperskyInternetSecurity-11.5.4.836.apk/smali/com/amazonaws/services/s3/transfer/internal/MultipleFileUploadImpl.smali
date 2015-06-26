.class public Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;
.super Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;
.source "MultipleFileUploadImpl.java"

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;


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
            "Lcom/amazonaws/services/s3/transfer/Upload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p6, "subTransfers":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/amazonaws/services/s3/transfer/Upload;>;"
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/util/Collection;)V

    .line 38
    iput-object p4, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;->keyPrefix:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;->bucketName:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;->keyPrefix:Ljava/lang/String;

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
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->waitForCompletion()V

    goto :goto_0
.end method
