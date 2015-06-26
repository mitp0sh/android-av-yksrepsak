.class public Lcom/amazonaws/services/s3/model/ListPartsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListPartsRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private maxParts:Ljava/lang/Integer;

.field private partNumberMarker:Ljava/lang/Integer;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->bucketName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->key:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxParts()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->maxParts:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPartNumberMarker()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->partNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->bucketName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->key:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setMaxParts(I)V
    .locals 1
    .param p1, "maxParts"    # I

    .prologue
    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->maxParts:Ljava/lang/Integer;

    .line 196
    return-void
.end method

.method public setPartNumberMarker(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "partNumberMarker"    # Ljava/lang/Integer;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->partNumberMarker:Ljava/lang/Integer;

    .line 235
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->bucketName:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->key:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public withMaxParts(I)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 1
    .param p1, "maxParts"    # I

    .prologue
    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->maxParts:Ljava/lang/Integer;

    .line 211
    return-object p0
.end method

.method public withPartNumberMarker(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 0
    .param p1, "partNumberMarker"    # Ljava/lang/Integer;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->partNumberMarker:Ljava/lang/Integer;

    .line 250
    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    .line 172
    return-object p0
.end method
