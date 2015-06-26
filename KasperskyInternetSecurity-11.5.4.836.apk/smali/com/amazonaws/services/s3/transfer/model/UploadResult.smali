.class public Lcom/amazonaws/services/s3/transfer/model/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->bucketName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->eTag:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->key:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->versionId:Ljava/lang/String;

    .line 124
    return-void
.end method
