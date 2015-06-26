.class public Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;
.super Ljava/lang/Object;
.source "UploadCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/amazonaws/services/s3/transfer/model/UploadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

.field private final futures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation
.end field

.field private multipartUploadId:Ljava/lang/String;

.field private final progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

.field private final putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private final upload:Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/transfer/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;)V
    .locals 1
    .param p1, "transferManager"    # Lcom/amazonaws/services/s3/transfer/TransferManager;
    .param p2, "threadPool"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "upload"    # Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;
    .param p4, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p5, "progressListenerChain"    # Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->futures:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 59
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->getConfiguration()Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    .line 61
    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 62
    iput-object p4, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 63
    iput-object p5, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    .line 64
    iput-object p3, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->upload:Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    .line 65
    return-void
.end method

.method private fireProgressEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    if-nez v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    .line 233
    .local v0, "event":Lcom/amazonaws/services/s3/model/ProgressEvent;
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->setEventCode(I)V

    .line 234
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    goto :goto_0
.end method

.method private getOptimalPartSize(Z)J
    .locals 8
    .param p1, "isUsingEncryption"    # Z

    .prologue
    const-wide/16 v6, 0x20

    .line 152
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->calculateOptimalPartSize(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;)J

    move-result-wide v0

    .line 153
    .local v0, "optimalPartSize":J
    if-eqz p1, :cond_0

    rem-long v2, v0, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 155
    rem-long v2, v0, v6

    sub-long v2, v0, v2

    add-long v0, v2, v6

    .line 157
    :cond_0
    sget-object v2, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated optimal part size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 158
    return-wide v0
.end method

.method private initiateMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;
    .locals 5
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .prologue
    .line 214
    new-instance v2, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 219
    .local v0, "initiateMultipartUploadRequest":Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v2, v0}, Lcom/amazonaws/services/s3/AmazonS3;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "uploadId":Ljava/lang/String;
    sget-object v2, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initiated new multipart upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 227
    return-object v1
.end method

.method private uploadInOneChunk()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 4

    .prologue
    .line 97
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-interface {v2, v3}, Lcom/amazonaws/services/s3/AmazonS3;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    .line 99
    .local v0, "putObjectResult":Lcom/amazonaws/services/s3/model/PutObjectResult;
    new-instance v1, Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;-><init>()V

    .line 100
    .local v1, "uploadResult":Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setBucketName(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setKey(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setETag(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setVersionId(Ljava/lang/String;)V

    .line 104
    return-object v1
.end method

.method private uploadInParts()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v8, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "bucketName":Ljava/lang/String;
    iget-object v8, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    instance-of v3, v8, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    .line 117
    .local v3, "isUsingEncryption":Z
    invoke-direct {p0, v3}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->getOptimalPartSize(Z)J

    move-result-wide v5

    .line 119
    .local v5, "optimalPartSize":J
    iget-object v8, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {p0, v8}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    .line 122
    :try_start_0
    new-instance v7, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;

    iget-object v8, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v9, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;-><init>(Lcom/amazonaws/services/s3/model/PutObjectRequest;Ljava/lang/String;J)V

    .line 124
    .local v7, "requestFactory":Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;
    iget-object v8, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-static {v8, v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->isUploadParallelizable(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 125
    invoke-direct {p0, v7}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->uploadPartsInParallel(Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    const/4 v8, 0x0

    .line 140
    iget-object v9, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 141
    :try_start_1
    iget-object v9, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-object v8

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to cleanly close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-direct {p0, v7}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->uploadPartsInSeries(Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;)Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 140
    iget-object v9, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 141
    :try_start_3
    iget-object v9, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 142
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to cleanly close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "requestFactory":Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;
    :catch_2
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v8, 0x4

    :try_start_4
    invoke-direct {p0, v8}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->fireProgressEvent(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    :try_start_5
    iget-object v8, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v9, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    iget-object v10, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v9, v0, v4, v10}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    :goto_1
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 141
    :try_start_7
    iget-object v9, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 143
    :cond_2
    :goto_2
    throw v8

    .line 135
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 136
    .local v2, "e2":Ljava/lang/Exception;
    :try_start_8
    sget-object v8, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to abort multipart upload, you may need to manually remove uploaded parts: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 142
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to cleanly close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private uploadPartsInParallel(Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;)V
    .locals 5
    .param p1, "requestFactory"    # Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;

    .prologue
    .line 202
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->hasMoreRequests()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "TransferManager has been shutdown"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->getNextUploadPartRequest()Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    .line 205
    .local v0, "request":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->futures:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/amazonaws/services/s3/transfer/internal/UploadPartCallable;

    iget-object v4, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-direct {v3, v4, v0}, Lcom/amazonaws/services/s3/transfer/internal/UploadPartCallable;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/services/s3/model/UploadPartRequest;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v0    # "request":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    :cond_1
    return-void
.end method

.method private uploadPartsInSeries(Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;)Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 10
    .param p1, "requestFactory"    # Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;

    .prologue
    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/PartETag;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->hasMoreRequests()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    iget-object v5, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/concurrent/CancellationException;

    const-string v6, "TransferManager has been shutdown"

    invoke-direct {v5, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->getNextUploadPartRequest()Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    .line 173
    .local v3, "uploadPartRequest":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 174
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 176
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->mark(I)V

    .line 181
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v5, v3}, Lcom/amazonaws/services/s3/AmazonS3;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartETag()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->mark(I)V

    goto :goto_1

    .line 184
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "uploadPartRequest":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    :cond_3
    iget-object v5, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v6, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    iget-object v7, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v2}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v5, v6}, Lcom/amazonaws/services/s3/AmazonS3;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 188
    .local v0, "completeMultipartUploadResult":Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->fireProgressEvent(I)V

    .line 190
    new-instance v4, Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;-><init>()V

    .line 191
    .local v4, "uploadResult":Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setBucketName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setKey(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getETag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setETag(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getVersionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setVersionId(Ljava/lang/String;)V

    .line 195
    return-object v4
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->upload:Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->InProgress:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 85
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->isMultipartUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->fireProgressEvent(I)V

    .line 87
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->uploadInParts()Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->uploadInOneChunk()Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->call()Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

.method getFutures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->futures:Ljava/util/List;

    return-object v0
.end method

.method getMultipartUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isMultipartUpload()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->shouldUseMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;)Z

    move-result v0

    return v0
.end method
