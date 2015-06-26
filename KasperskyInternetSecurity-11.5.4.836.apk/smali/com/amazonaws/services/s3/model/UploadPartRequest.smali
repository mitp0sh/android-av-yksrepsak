.class public Lcom/amazonaws/services/s3/model/UploadPartRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "UploadPartRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private fileOffset:J

.field private inputStream:Ljava/io/InputStream;

.field private isLastPart:Z

.field private key:Ljava/lang/String;

.field private md5Digest:Ljava/lang/String;

.field private partNumber:I

.field private partSize:J

.field private progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileOffset()J
    .locals 2

    .prologue
    .line 418
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->fileOffset:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5Digest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    return v0
.end method

.method public getPartSize()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isLastPart()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->file:Ljava/io/File;

    .line 387
    return-void
.end method

.method public setFileOffset(J)V
    .locals 0
    .param p1, "fileOffset"    # J

    .prologue
    .line 432
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->fileOffset:J

    .line 433
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    .line 101
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setLastPart(Z)V
    .locals 0
    .param p1, "isLastPart"    # Z

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart:Z

    .line 511
    return-void
.end method

.method public setMd5Digest(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5Digest"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    .line 263
    return-void
.end method

.method public setPartSize(J)V
    .locals 0
    .param p1, "partSize"    # J

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    .line 302
    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    .line 463
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    .line 405
    return-object p0
.end method

.method public withFileOffset(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "fileOffset"    # J

    .prologue
    .line 450
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    .line 451
    return-object p0
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 124
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public withLastPart(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "isLastPart"    # Z

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setLastPart(Z)V

    .line 527
    return-object p0
.end method

.method public withMD5Digest(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "md5Digest"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    .line 363
    return-object p0
.end method

.method public withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    .line 282
    return-object p0
.end method

.method public withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "partSize"    # J

    .prologue
    .line 315
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    .line 316
    return-object p0
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 488
    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    .line 235
    return-object p0
.end method
