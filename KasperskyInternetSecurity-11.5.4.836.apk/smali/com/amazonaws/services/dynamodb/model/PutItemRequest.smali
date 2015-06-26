.class public Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutItemRequest.java"

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

.field private item:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private returnValues:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->tableName:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->item:Ljava/util/Map;

    .line 105
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 530
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 544
    :cond_0
    :goto_0
    return v3

    .line 531
    :cond_1
    if-eqz p1, :cond_0

    .line 533
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 534
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;

    .line 536
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 537
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 539
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 543
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 544
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 536
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 538
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 540
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 542
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
    .line 233
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->expected:Ljava/util/Map;

    return-object v0
.end method

.method public getItem()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->item:Ljava/util/Map;

    return-object v0
.end method

.method public getReturnValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->returnValues:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 518
    const/16 v1, 0x1f

    .line 519
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 521
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 522
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 523
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 524
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 525
    return v0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 523
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

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
    .line 249
    .local p1, "expected":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->expected:Ljava/util/Map;

    .line 250
    return-void
.end method

.method public setItem(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->item:Ljava/util/Map;

    .line 199
    return-void
.end method

.method public setReturnValues(Lcom/amazonaws/services/dynamodb/model/ReturnValue;)V
    .locals 1
    .param p1, "returnValues"    # Lcom/amazonaws/services/dynamodb/model/ReturnValue;

    .prologue
    .line 445
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->returnValues:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setReturnValues(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnValues"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->returnValues:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->tableName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

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
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withExpected(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/PutItemRequest;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "expected":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->setExpected(Ljava/util/Map;)V

    .line 270
    return-object p0
.end method

.method public withItem(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/PutItemRequest;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->setItem(Ljava/util/Map;)V

    .line 217
    return-object p0
.end method

.method public withReturnValues(Lcom/amazonaws/services/dynamodb/model/ReturnValue;)Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    .locals 1
    .param p1, "returnValues"    # Lcom/amazonaws/services/dynamodb/model/ReturnValue;

    .prologue
    .line 492
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->returnValues:Ljava/lang/String;

    .line 493
    return-object p0
.end method

.method public withReturnValues(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    .locals 0
    .param p1, "returnValues"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->returnValues:Ljava/lang/String;

    .line 402
    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->tableName:Ljava/lang/String;

    .line 169
    return-object p0
.end method
