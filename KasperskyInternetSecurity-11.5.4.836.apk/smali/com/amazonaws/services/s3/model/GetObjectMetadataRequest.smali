.class public Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectMetadataRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->setBucketName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->setKey(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->setVersionId(Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->bucketName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->key:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->setBucketName(Ljava/lang/String;)V

    .line 148
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->setKey(Ljava/lang/String;)V

    .line 192
    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->setVersionId(Ljava/lang/String;)V

    .line 245
    return-object p0
.end method
