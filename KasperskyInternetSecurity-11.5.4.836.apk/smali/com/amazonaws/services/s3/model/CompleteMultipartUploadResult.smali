.class public Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
.super Ljava/lang/Object;
.source "CompleteMultipartUploadResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private serverSideEncryption:Ljava/lang/String;

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
    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->expirationTimeRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->serverSideEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->bucketName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "expirationTime"    # Ljava/util/Date;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->expirationTime:Ljava/util/Date;

    .line 190
    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationTimeRuleId"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->expirationTimeRuleId:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->key:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->location:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSideEncryption"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->serverSideEncryption:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->versionId:Ljava/lang/String;

    .line 155
    return-void
.end method
