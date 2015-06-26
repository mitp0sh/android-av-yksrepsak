.class public Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
.super Ljava/lang/Object;
.source "InitiateMultipartUploadResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private serverSideEncryption:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->serverSideEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->bucketName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->key:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSideEncryption"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->serverSideEncryption:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->uploadId:Ljava/lang/String;

    .line 99
    return-void
.end method
