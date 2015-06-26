.class public Lcom/amazonaws/services/s3/model/CopyPartResult;
.super Ljava/lang/Object;
.source "CopyPartResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModifiedDate:Ljava/util/Date;

.field private partNumber:I

.field private serverSideEncryption:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->lastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->partNumber:I

    return v0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->serverSideEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->etag:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastModifiedDate"    # Ljava/util/Date;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->lastModifiedDate:Ljava/util/Date;

    .line 111
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->partNumber:I

    .line 63
    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSideEncryption"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->serverSideEncryption:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->versionId:Ljava/lang/String;

    .line 136
    return-void
.end method
