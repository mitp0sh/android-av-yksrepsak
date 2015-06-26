.class public Lcom/amazonaws/services/s3/model/VersionListing;
.super Ljava/lang/Object;
.source "VersionListing.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private isTruncated:Z

.field private keyMarker:Ljava/lang/String;

.field private maxKeys:I

.field private nextKeyMarker:Ljava/lang/String;

.field private nextVersionIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;

.field private versionSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->maxKeys:I

    return v0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->nextKeyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextVersionIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->nextVersionIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->versionIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->versionSummaries:Ljava/util/List;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->bucketName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setCommonPrefixes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "commonPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->commonPrefixes:Ljava/util/List;

    .line 170
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->delimiter:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyMarker"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->keyMarker:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setMaxKeys(I)V
    .locals 0
    .param p1, "maxKeys"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->maxKeys:I

    .line 298
    return-void
.end method

.method public setNextKeyMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->nextKeyMarker:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setNextVersionIdMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->nextVersionIdMarker:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->prefix:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0
    .param p1, "isTruncated"    # Z

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->isTruncated:Z

    .line 419
    return-void
.end method

.method public setVersionIdMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionIdMarker"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->versionIdMarker:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setVersionSummaries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "versionSummaries":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/S3VersionSummary;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->versionSummaries:Ljava/util/List;

    .line 126
    return-void
.end method