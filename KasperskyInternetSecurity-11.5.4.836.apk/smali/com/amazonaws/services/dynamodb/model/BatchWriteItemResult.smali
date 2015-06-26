.class public Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
.super Ljava/lang/Object;
.source "BatchWriteItemResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private responses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;",
            ">;"
        }
    .end annotation
.end field

.field private unprocessedItems:Ljava/util/Map;
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 185
    :cond_0
    :goto_0
    return v3

    .line 176
    :cond_1
    if-eqz p1, :cond_0

    .line 178
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 179
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;

    .line 181
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getResponses()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getResponses()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getResponses()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getResponses()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getResponses()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getUnprocessedItems()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getUnprocessedItems()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getUnprocessedItems()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getUnprocessedItems()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getUnprocessedItems()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 185
    goto :goto_0

    :cond_4
    move v1, v3

    .line 181
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 183
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getResponses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->responses:Ljava/util/Map;

    return-object v0
.end method

.method public getUnprocessedItems()Ljava/util/Map;
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
    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->unprocessedItems:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 165
    const/16 v1, 0x1f

    .line 166
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 168
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getResponses()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 169
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getUnprocessedItems()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 170
    return v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getResponses()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getUnprocessedItems()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setResponses(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->responses:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public setUnprocessedItems(Ljava/util/Map;)V
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
    .line 120
    .local p1, "unprocessedItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/WriteRequest;>;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->unprocessedItems:Ljava/util/Map;

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getResponses()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getResponses()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getUnprocessedItems()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnprocessedItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->getUnprocessedItems()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withResponses(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->setResponses(Ljava/util/Map;)V

    .line 86
    return-object p0
.end method

.method public withUnprocessedItems(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
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
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "unprocessedItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/WriteRequest;>;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->setUnprocessedItems(Ljava/util/Map;)V

    .line 142
    return-object p0
.end method
