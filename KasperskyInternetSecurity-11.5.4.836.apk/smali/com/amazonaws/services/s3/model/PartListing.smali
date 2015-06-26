.class public Lcom/amazonaws/services/s3/model/PartListing;
.super Ljava/lang/Object;
.source "PartListing.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private initiator:Lcom/amazonaws/services/s3/model/Owner;

.field private isTruncated:Z

.field private key:Ljava/lang/String;

.field private maxParts:Ljava/lang/Integer;

.field private nextPartNumberMarker:Ljava/lang/Integer;

.field private owner:Lcom/amazonaws/services/s3/model/Owner;

.field private partNumberMarker:Ljava/lang/Integer;

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;"
        }
    .end annotation
.end field

.field private storageClass:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitiator()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->initiator:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxParts()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->maxParts:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextPartNumberMarker()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->nextPartNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getPartNumberMarker()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->partNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->parts:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->parts:Ljava/util/List;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->bucketName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setInitiator(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0
    .param p1, "initiator"    # Lcom/amazonaws/services/s3/model/Owner;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->initiator:Lcom/amazonaws/services/s3/model/Owner;

    .line 190
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->key:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setMaxParts(I)V
    .locals 1
    .param p1, "maxParts"    # I

    .prologue
    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->maxParts:Ljava/lang/Integer;

    .line 284
    return-void
.end method

.method public setNextPartNumberMarker(I)V
    .locals 1
    .param p1, "nextPartNumberMarker"    # I

    .prologue
    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->nextPartNumberMarker:Ljava/lang/Integer;

    .line 261
    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0
    .param p1, "owner"    # Lcom/amazonaws/services/s3/model/Owner;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 169
    return-void
.end method

.method public setPartNumberMarker(I)V
    .locals 1
    .param p1, "partNumberMarker"    # I

    .prologue
    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->partNumberMarker:Ljava/lang/Integer;

    .line 237
    return-void
.end method

.method public setParts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/PartSummary;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->parts:Ljava/util/List;

    .line 327
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->storageClass:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0
    .param p1, "isTruncated"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->isTruncated:Z

    .line 307
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->uploadId:Ljava/lang/String;

    .line 148
    return-void
.end method
