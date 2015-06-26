.class public Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CompleteMultipartUploadRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private partETags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "uploadId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p4, "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/PartETag;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPartETags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPartETags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/PartETag;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    .line 197
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public withPartETags(Ljava/util/Collection;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/s3/model/UploadPartResult;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "uploadPartResultsCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/s3/model/UploadPartResult;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/UploadPartResult;

    .line 246
    .local v1, "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    new-instance v3, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartNumber()I

    move-result v4

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    .end local v1    # "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    :cond_0
    return-object p0
.end method

.method public withPartETags(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/PartETag;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->setPartETags(Ljava/util/List;)V

    .line 212
    return-object p0
.end method

.method public varargs withPartETags([Lcom/amazonaws/services/s3/model/UploadPartResult;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 8
    .param p1, "uploadPartResults"    # [Lcom/amazonaws/services/s3/model/UploadPartResult;

    .prologue
    .line 227
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/s3/model/UploadPartResult;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 228
    .local v3, "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    iget-object v4, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    new-instance v5, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartNumber()I

    move-result v6

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v3    # "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    :cond_0
    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    .line 173
    return-object p0
.end method
