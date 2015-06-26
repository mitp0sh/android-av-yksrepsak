.class public Lcom/amazonaws/services/s3/model/PutObjectResult;
.super Ljava/lang/Object;
.source "PutObjectResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private eTag:Ljava/lang/String;

.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private serverSideEncryption:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->expirationTimeRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->serverSideEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->eTag:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "expirationTime"    # Ljava/util/Date;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->expirationTime:Ljava/util/Date;

    .line 137
    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationTimeRuleId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->expirationTimeRuleId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSideEncryption"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->serverSideEncryption:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->versionId:Ljava/lang/String;

    .line 78
    return-void
.end method
