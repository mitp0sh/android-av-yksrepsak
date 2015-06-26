.class public Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;
.super Ljava/lang/Object;
.source "BatchGetItemResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private responses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/BatchResponse;",
            ">;"
        }
    .end annotation
.end field

.field private unprocessedKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 187
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 197
    :cond_0
    :goto_0
    return v3

    .line 188
    :cond_1
    if-eqz p1, :cond_0

    .line 190
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 191
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;

    .line 193
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getResponses()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getResponses()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getResponses()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getResponses()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getResponses()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getUnprocessedKeys()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getUnprocessedKeys()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getUnprocessedKeys()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getUnprocessedKeys()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getUnprocessedKeys()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 197
    goto :goto_0

    :cond_4
    move v1, v3

    .line 193
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 195
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
            "Lcom/amazonaws/services/dynamodb/model/BatchResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->responses:Ljava/util/Map;

    return-object v0
.end method

.method public getUnprocessedKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->unprocessedKeys:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 177
    const/16 v1, 0x1f

    .line 178
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 180
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getResponses()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 181
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getUnprocessedKeys()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 182
    return v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getResponses()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getUnprocessedKeys()Ljava/util/Map;

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
            "Lcom/amazonaws/services/dynamodb/model/BatchResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/BatchResponse;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->responses:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public setUnprocessedKeys(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "unprocessedKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->unprocessedKeys:Ljava/util/Map;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getResponses()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getResponses()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getUnprocessedKeys()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnprocessedKeys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->getUnprocessedKeys()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withResponses(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/BatchResponse;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/BatchResponse;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->setResponses(Ljava/util/Map;)V

    .line 74
    return-object p0
.end method

.method public withUnprocessedKeys(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "unprocessedKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;->setUnprocessedKeys(Ljava/util/Map;)V

    .line 154
    return-object p0
.end method
