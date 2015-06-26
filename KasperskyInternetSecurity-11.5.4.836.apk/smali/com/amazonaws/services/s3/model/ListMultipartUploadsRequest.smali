.class public Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListMultipartUploadsRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private maxUploads:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;

.field private uploadIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->bucketName:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUploads()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->bucketName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->delimiter:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyMarker"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setMaxUploads(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxUploads"    # Ljava/lang/Integer;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    .line 147
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->prefix:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setUploadIdMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadIdMarker"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->bucketName:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->setDelimiter(Ljava/lang/String;)V

    .line 334
    return-object p0
.end method

.method public withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .locals 0
    .param p1, "keyMarker"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public withMaxUploads(I)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .locals 1
    .param p1, "maxUploadsInt"    # I

    .prologue
    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    .line 161
    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->setPrefix(Ljava/lang/String;)V

    .line 379
    return-object p0
.end method

.method public withUploadIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .locals 0
    .param p1, "uploadIdMarker"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    .line 275
    return-object p0
.end method
