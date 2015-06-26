.class public Lcom/amazonaws/services/s3/model/ListVersionsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListVersionsRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private maxResults:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "keyMarker"    # Ljava/lang/String;
    .param p4, "versionIdMarker"    # Ljava/lang/String;
    .param p5, "delimiter"    # Ljava/lang/String;
    .param p6, "maxResults"    # Ljava/lang/Integer;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 182
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setBucketName(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setPrefix(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setKeyMarker(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setVersionIdMarker(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p5}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setDelimiter(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setMaxResults(Ljava/lang/Integer;)V

    .line 188
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->maxResults:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->versionIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->bucketName:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->delimiter:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyMarker"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->keyMarker:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setMaxResults(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxResults"    # Ljava/lang/Integer;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->maxResults:Ljava/lang/Integer;

    .line 512
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->prefix:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setVersionIdMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionIdMarker"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->versionIdMarker:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setBucketName(Ljava/lang/String;)V

    .line 234
    return-object p0
.end method

.method public withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setDelimiter(Ljava/lang/String;)V

    .line 480
    return-object p0
.end method

.method public withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0
    .param p1, "keyMarker"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setKeyMarker(Ljava/lang/String;)V

    .line 349
    return-object p0
.end method

.method public withMaxResults(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0
    .param p1, "maxResults"    # Ljava/lang/Integer;

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setMaxResults(Ljava/lang/Integer;)V

    .line 532
    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setPrefix(Ljava/lang/String;)V

    .line 286
    return-object p0
.end method

.method public withVersionIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0
    .param p1, "versionIdMarker"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setVersionIdMarker(Ljava/lang/String;)V

    .line 412
    return-object p0
.end method
