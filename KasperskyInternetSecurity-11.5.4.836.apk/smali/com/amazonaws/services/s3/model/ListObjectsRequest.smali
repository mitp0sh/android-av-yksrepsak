.class public Lcom/amazonaws/services/s3/model/ListObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListObjectsRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private marker:Ljava/lang/String;

.field private maxKeys:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "marker"    # Ljava/lang/String;
    .param p4, "delimiter"    # Ljava/lang/String;
    .param p5, "maxKeys"    # Ljava/lang/Integer;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    .line 142
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->bucketName:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->marker:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setMaxKeys(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxKeys"    # Ljava/lang/Integer;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    .line 393
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 189
    return-object p0
.end method

.method public withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    .line 361
    return-object p0
.end method

.method public withMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0
    .param p1, "marker"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    .line 296
    return-object p0
.end method

.method public withMaxKeys(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0
    .param p1, "maxKeys"    # Ljava/lang/Integer;

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    .line 413
    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    .line 239
    return-object p0
.end method
