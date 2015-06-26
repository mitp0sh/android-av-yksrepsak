.class public Lcom/amazonaws/services/s3/model/ObjectListing;
.super Ljava/lang/Object;
.source "ObjectListing.java"


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

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private objectSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->objectSummaries:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->bucketName:Ljava/lang/String;

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
    .line 138
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->maxKeys:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->objectSummaries:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->bucketName:Ljava/lang/String;

    .line 206
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
    .line 150
    .local p1, "commonPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    .line 151
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->delimiter:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->marker:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setMaxKeys(I)V
    .locals 0
    .param p1, "maxKeys"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->maxKeys:I

    .line 290
    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextMarker"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->nextMarker:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->prefix:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0
    .param p1, "isTruncated"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated:Z

    .line 349
    return-void
.end method
