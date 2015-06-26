.class public Lcom/amazonaws/services/s3/model/MultipartUpload;
.super Ljava/lang/Object;
.source "MultipartUpload.java"


# instance fields
.field private initiated:Ljava/util/Date;

.field private initiator:Lcom/amazonaws/services/s3/model/Owner;

.field private key:Ljava/lang/String;

.field private owner:Lcom/amazonaws/services/s3/model/Owner;

.field private storageClass:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitiated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->initiated:Ljava/util/Date;

    return-object v0
.end method

.method public getInitiator()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->initiator:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setInitiated(Ljava/util/Date;)V
    .locals 0
    .param p1, "initiated"    # Ljava/util/Date;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->initiated:Ljava/util/Date;

    .line 172
    return-void
.end method

.method public setInitiator(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0
    .param p1, "initiator"    # Lcom/amazonaws/services/s3/model/Owner;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->initiator:Lcom/amazonaws/services/s3/model/Owner;

    .line 130
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->key:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0
    .param p1, "owner"    # Lcom/amazonaws/services/s3/model/Owner;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 111
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->storageClass:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->uploadId:Ljava/lang/String;

    .line 92
    return-void
.end method
