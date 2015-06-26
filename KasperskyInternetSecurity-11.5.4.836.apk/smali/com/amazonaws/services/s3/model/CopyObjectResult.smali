.class public Lcom/amazonaws/services/s3/model/CopyObjectResult;
.super Ljava/lang/Object;
.source "CopyObjectResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private etag:Ljava/lang/String;

.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private lastModifiedDate:Ljava/util/Date;

.field private serverSideEncryption:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTimeRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->lastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->serverSideEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->etag:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "expirationTime"    # Ljava/util/Date;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTime:Ljava/util/Date;

    .line 163
    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationTimeRuleId"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTimeRuleId:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastModifiedDate"    # Ljava/util/Date;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->lastModifiedDate:Ljava/util/Date;

    .line 104
    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSideEncryption"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->serverSideEncryption:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->versionId:Ljava/lang/String;

    .line 129
    return-void
.end method
