.class public Lcom/amazonaws/services/s3/model/S3ObjectSummary;
.super Ljava/lang/Object;
.source "S3ObjectSummary.java"


# instance fields
.field protected bucketName:Ljava/lang/String;

.field protected eTag:Ljava/lang/String;

.field protected key:Ljava/lang/String;

.field protected lastModified:Ljava/util/Date;

.field protected owner:Lcom/amazonaws/services/s3/model/Owner;

.field protected size:J

.field protected storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->size:J

    return-wide v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->bucketName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->eTag:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->key:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastModified"    # Ljava/util/Date;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->lastModified:Ljava/util/Date;

    .line 175
    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0
    .param p1, "owner"    # Lcom/amazonaws/services/s3/model/Owner;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 203
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->size:J

    .line 148
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->storageClass:Ljava/lang/String;

    .line 226
    return-void
.end method
