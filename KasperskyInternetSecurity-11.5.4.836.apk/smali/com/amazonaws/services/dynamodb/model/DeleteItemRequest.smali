.class public Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteItemRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private expected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private key:Lcom/amazonaws/services/dynamodb/model/Key;

.field private returnValues:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 103
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 527
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 541
    :cond_0
    :goto_0
    return v3

    .line 528
    :cond_1
    if-eqz p1, :cond_0

    .line 530
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 531
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;

    .line 533
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 541
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 533
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 535
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 537
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 539
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getExpected()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->expected:Ljava/util/Map;

    return-object v0
.end method

.method public getKey()Lcom/amazonaws/services/dynamodb/model/Key;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    return-object v0
.end method

.method public getReturnValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 515
    const/16 v1, 0x1f

    .line 516
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 518
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 519
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 520
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 521
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 522
    return v0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/Key;->hashCode()I

    move-result v2

    goto :goto_1

    .line 520
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 521
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setExpected(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "expected":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->expected:Ljava/util/Map;

    .line 247
    return-void
.end method

.method public setKey(Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0
    .param p1, "key"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 195
    return-void
.end method

.method public setReturnValues(Lcom/amazonaws/services/dynamodb/model/ReturnValue;)V
    .locals 1
    .param p1, "returnValues"    # Lcom/amazonaws/services/dynamodb/model/ReturnValue;

    .prologue
    .line 442
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setReturnValues(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnValues"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withExpected(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "expected":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->setExpected(Ljava/util/Map;)V

    .line 267
    return-object p0
.end method

.method public withKey(Lcom/amazonaws/services/dynamodb/model/Key;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 0
    .param p1, "key"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 213
    return-object p0
.end method

.method public withReturnValues(Lcom/amazonaws/services/dynamodb/model/ReturnValue;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 1
    .param p1, "returnValues"    # Lcom/amazonaws/services/dynamodb/model/ReturnValue;

    .prologue
    .line 489
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    .line 490
    return-object p0
.end method

.method public withReturnValues(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 0
    .param p1, "returnValues"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    .line 399
    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    .line 167
    return-object p0
.end method
