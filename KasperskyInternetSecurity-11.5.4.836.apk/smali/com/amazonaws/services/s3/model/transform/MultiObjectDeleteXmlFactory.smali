.class public Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;
.super Ljava/lang/Object;
.source "MultiObjectDeleteXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeKeyVersion(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;)V
    .locals 2
    .param p1, "xml"    # Lcom/amazonaws/services/s3/internal/XmlWriter;
    .param p2, "keyVersion"    # Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;

    .prologue
    .line 53
    const-string v0, "Object"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 54
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 55
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "VersionId"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 59
    return-void
.end method


# virtual methods
.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)[B
    .locals 5
    .param p1, "rq"    # Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v2, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 38
    .local v2, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v3, "Delete"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getQuiet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-string v3, "Quiet"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;

    .line 44
    .local v1, "keyVersion":Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;
    invoke-direct {p0, v2, v1}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;->writeKeyVersion(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;)V

    goto :goto_0

    .line 47
    .end local v1    # "keyVersion":Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;
    :cond_1
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 49
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v3

    return-object v3
.end method
