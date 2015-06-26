.class public Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;
.super Ljava/lang/Object;
.source "RequestXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToXmlByteArray(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)[B
    .locals 3
    .param p0, "restoreObjectRequest"    # Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 78
    .local v0, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v1, "RestoreRequest"

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 79
    const-string v1, "Days"

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getExpirationInDays()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 80
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 82
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static convertToXmlByteArray(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/PartETag;>;"
    new-instance v2, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 40
    .local v2, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v3, "CompleteMultipartUpload"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 41
    if-eqz p0, :cond_0

    .line 42
    new-instance v3, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;-><init>()V

    invoke-static {p0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/PartETag;

    .line 51
    .local v1, "partEtag":Lcom/amazonaws/services/s3/model/PartETag;
    const-string v3, "Part"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 52
    const-string v3, "PartNumber"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartETag;->getPartNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 53
    const-string v3, "ETag"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartETag;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 54
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 57
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "partEtag":Lcom/amazonaws/services/s3/model/PartETag;
    :cond_0
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 59
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v3

    return-object v3
.end method
