.class public Lcom/amazonaws/services/s3/model/MultipartUploadListing;
.super Ljava/lang/Object;
.source "MultipartUploadListing.java"


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

.field private maxUploads:I

.field private multipartUploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field

.field private nextKeyMarker:Ljava/lang/String;

.field private nextUploadIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private uploadIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

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
    .line 310
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUploads()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->maxUploads:I

    return v0
.end method

.method public getMultipartUploads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    return-object v0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUploadIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

    .line 113
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
    .line 322
    .local p1, "commonPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    .line 323
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyMarker"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setMaxUploads(I)V
    .locals 0
    .param p1, "maxUploads"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->maxUploads:I

    .line 234
    return-void
.end method

.method public setMultipartUploads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "multipartUploads":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/MultipartUpload;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    .line 277
    return-void
.end method

.method public setNextKeyMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextKeyMarker"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setNextUploadIdMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextUploadIdMarker"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0
    .param p1, "isTruncated"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->isTruncated:Z

    .line 257
    return-void
.end method

.method public setUploadIdMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadIdMarker"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    .line 162
    return-void
.end method
