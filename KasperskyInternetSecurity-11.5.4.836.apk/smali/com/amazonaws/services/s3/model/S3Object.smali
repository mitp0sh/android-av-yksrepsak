.class public Lcom/amazonaws/services/s3/model/S3Object;
.super Ljava/lang/Object;
.source "S3Object.java"


# static fields
.field private static final serialVersionUID:J = -0x28044102c61f29cdL


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

.field private redirectLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    return-object v0
.end method

.method public getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    .locals 0
    .param p1, "objectContent"    # Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 104
    return-void
.end method

.method public setObjectContent(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "objectContent"    # Ljava/io/InputStream;

    .prologue
    .line 115
    new-instance v1, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 117
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 77
    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->redirectLocation:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Object [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<Unknown>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    goto :goto_0
.end method
