.class public Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;
.super Ljava/lang/Object;
.source "UploadPartRequestFactory.java"


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private offset:J

.field private final optimalPartSize:J

.field private partNumber:I

.field private final putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

.field private remainingBytes:J

.field private final uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/PutObjectRequest;Ljava/lang/String;J)V
    .locals 2
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "uploadId"    # Ljava/lang/String;
    .param p3, "optimalPartSize"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->partNumber:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->offset:J

    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 45
    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->uploadId:Ljava/lang/String;

    .line 46
    iput-wide p3, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->optimalPartSize:J

    .line 47
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->bucketName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->key:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->file:Ljava/io/File;

    .line 50
    invoke-static {p1}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->remainingBytes:J

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized getNextUploadPartRequest()Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 58
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->optimalPartSize:J

    iget-wide v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->remainingBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 59
    .local v4, "partSize":J
    iget-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->remainingBytes:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-gtz v0, :cond_0

    const/4 v6, 0x1

    .line 61
    .local v6, "isLastPart":Z
    :goto_0
    const/4 v7, 0x0

    .line 62
    .local v7, "request":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v8

    new-instance v0, Lcom/amazonaws/services/s3/internal/InputSubstream;

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    invoke-virtual {v8, v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->partNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->partNumber:I

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v7

    .line 81
    :goto_1
    iget-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->offset:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->offset:J

    .line 82
    iget-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->remainingBytes:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->remainingBytes:J

    .line 84
    invoke-virtual {v7, v6}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setLastPart(Z)V

    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-object v7

    .line 59
    .end local v6    # "isLastPart":Z
    .end local v7    # "request":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 71
    .restart local v6    # "isLastPart":Z
    .restart local v7    # "request":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->offset:J

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withFileOffset(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->partNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->partNumber:I

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 58
    .end local v4    # "partSize":J
    .end local v6    # "isLastPart":Z
    .end local v7    # "request":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasMoreRequests()Z
    .locals 4

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartRequestFactory;->remainingBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
