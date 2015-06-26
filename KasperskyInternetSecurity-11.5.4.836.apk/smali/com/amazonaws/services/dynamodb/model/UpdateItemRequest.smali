.class public Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "UpdateItemRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;",
            ">;"
        }
    .end annotation
.end field

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
    .line 93
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/Key;Ljava/util/Map;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/amazonaws/services/dynamodb/model/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/Key;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p3, "attributeUpdates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->tableName:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 114
    iput-object p3, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    .line 115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 588
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 604
    :cond_0
    :goto_0
    return v3

    .line 589
    :cond_1
    if-eqz p1, :cond_0

    .line 591
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 592
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;

    .line 594
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 597
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 603
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 604
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 594
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 596
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 598
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 600
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 602
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getAttributeUpdates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    return-object v0
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
    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->expected:Ljava/util/Map;

    return-object v0
.end method

.method public getKey()Lcom/amazonaws/services/dynamodb/model/Key;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    return-object v0
.end method

.method public getReturnValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 575
    const/16 v1, 0x1f

    .line 576
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 578
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 579
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 580
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 581
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 582
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 583
    return v0

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/Key;->hashCode()I

    move-result v2

    goto :goto_1

    .line 580
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 581
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 582
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setAttributeUpdates(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "attributeUpdates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    .line 255
    return-void
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
    .line 305
    .local p1, "expected":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->expected:Ljava/util/Map;

    .line 306
    return-void
.end method

.method public setKey(Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0
    .param p1, "key"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 207
    return-void
.end method

.method public setReturnValues(Lcom/amazonaws/services/dynamodb/model/ReturnValue;)V
    .locals 1
    .param p1, "returnValues"    # Lcom/amazonaws/services/dynamodb/model/ReturnValue;

    .prologue
    .line 501
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setReturnValues(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnValues"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->tableName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributeUpdates(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "attributeUpdates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->setAttributeUpdates(Ljava/util/Map;)V

    .line 273
    return-object p0
.end method

.method public withExpected(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "expected":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->setExpected(Ljava/util/Map;)V

    .line 326
    return-object p0
.end method

.method public withKey(Lcom/amazonaws/services/dynamodb/model/Key;)Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .locals 0
    .param p1, "key"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 225
    return-object p0
.end method

.method public withReturnValues(Lcom/amazonaws/services/dynamodb/model/ReturnValue;)Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .locals 1
    .param p1, "returnValues"    # Lcom/amazonaws/services/dynamodb/model/ReturnValue;

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    .line 549
    return-object p0
.end method

.method public withReturnValues(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .locals 0
    .param p1, "returnValues"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    .line 458
    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->tableName:Ljava/lang/String;

    .line 179
    return-object p0
.end method
