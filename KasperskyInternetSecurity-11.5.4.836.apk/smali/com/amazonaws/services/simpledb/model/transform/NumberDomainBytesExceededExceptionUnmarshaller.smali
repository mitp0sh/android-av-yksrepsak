.class public Lcom/amazonaws/services/simpledb/model/transform/NumberDomainBytesExceededExceptionUnmarshaller;
.super Lcom/amazonaws/transform/LegacyErrorUnmarshaller;
.source "NumberDomainBytesExceededExceptionUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/amazonaws/services/simpledb/model/NumberDomainBytesExceededException;

    invoke-direct {p0, v0}, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    .line 29
    return-void
.end method


# virtual methods
.method public unmarshall(Lorg/w3c/dom/Node;)Lcom/amazonaws/AmazonServiceException;
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainBytesExceededExceptionUnmarshaller;->parseErrorCode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "errorCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "NumberDomainBytesExceeded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 38
    :cond_1
    invoke-super {p0, p1}, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpledb/model/NumberDomainBytesExceededException;

    .line 40
    .local v0, "e":Lcom/amazonaws/services/simpledb/model/NumberDomainBytesExceededException;
    const-string v2, "BoxUsage"

    invoke-virtual {p0, v2}, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainBytesExceededExceptionUnmarshaller;->getErrorPropertyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/amazonaws/util/XpathUtils;->asFloat(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/simpledb/model/NumberDomainBytesExceededException;->setBoxUsage(Ljava/lang/Float;)V

    goto :goto_0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainBytesExceededExceptionUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method
