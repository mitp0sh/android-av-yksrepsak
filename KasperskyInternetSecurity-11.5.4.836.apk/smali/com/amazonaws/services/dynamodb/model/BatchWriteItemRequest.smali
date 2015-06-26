.class public Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "BatchWriteItemRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private requestItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/WriteRequest;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 127
    :cond_0
    :goto_0
    return v3

    .line 120
    :cond_1
    if-eqz p1, :cond_0

    .line 122
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;

    .line 125
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 127
    goto :goto_0

    :cond_3
    move v1, v3

    .line 125
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getRequestItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/WriteRequest;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 110
    const/16 v1, 0x1f

    .line 111
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 113
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 114
    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setRequestItems(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/WriteRequest;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "requestItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/WriteRequest;>;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withRequestItems(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/WriteRequest;",
            ">;>;)",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "requestItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/WriteRequest;>;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->setRequestItems(Ljava/util/Map;)V

    .line 88
    return-object p0
.end method
