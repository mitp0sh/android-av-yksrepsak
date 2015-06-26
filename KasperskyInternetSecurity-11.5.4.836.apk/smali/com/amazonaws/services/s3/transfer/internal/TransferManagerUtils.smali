.class public Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;
.super Ljava/lang/Object;
.source "TransferManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateOptimalPartSize(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;)J
    .locals 6
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "configuration"    # Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v4

    long-to-double v0, v4

    .line 108
    .local v0, "contentLength":D
    const-wide v4, 0x40c3880000000000L    # 10000.0

    div-double v2, v0, v4

    .line 110
    .local v2, "optimalPartSize":D
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 111
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;->getMinimumUploadPartSize()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-long v4, v4

    return-wide v4
.end method

.method public static createDefaultExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils$1;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils$1;-><init>()V

    .line 47
    .local v0, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v1
.end method

.method public static getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J
    .locals 5
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v0

    .line 83
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 91
    :goto_0
    return-wide v1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v1

    goto :goto_0

    .line 91
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;
    .locals 1
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUploadParallelizable(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Z
    .locals 2
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "isUsingEncryption"    # Z

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldUseMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;)Z
    .locals 4
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "configuration"    # Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    .prologue
    .line 128
    invoke-static {p0}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v0

    .line 129
    .local v0, "contentLength":J
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;->getMultipartUploadThreshold()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
