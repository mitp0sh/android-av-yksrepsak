.class public Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AbortMultipartUploadRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->key:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->key:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->key:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    .line 152
    return-object p0
.end method
