.class public Lcom/amazonaws/services/s3/model/UploadPartResult;
.super Ljava/lang/Object;
.source "UploadPartResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private eTag:Ljava/lang/String;

.field private partNumber:I

.field private serverSideEncryption:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartETag()Lcom/amazonaws/services/s3/model/PartETag;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/amazonaws/services/s3/model/PartETag;

    iget v1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->partNumber:I

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->eTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->partNumber:I

    return v0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->serverSideEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->eTag:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->partNumber:I

    .line 51
    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSideEncryption"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->serverSideEncryption:Ljava/lang/String;

    .line 101
    return-void
.end method
