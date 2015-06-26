.class public Lcom/amazonaws/services/dynamodb/model/ScanRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ScanRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributesToGet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private count:Ljava/lang/Boolean;

.field private exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

.field private limit:Ljava/lang/Integer;

.field private scanFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->tableName:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 579
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 597
    :cond_0
    :goto_0
    return v3

    .line 580
    :cond_1
    if-eqz p1, :cond_0

    .line 582
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/ScanRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 583
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;

    .line 585
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 588
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 592
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 596
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 597
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 585
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 587
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 589
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 591
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 593
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 595
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAttributesToGet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->attributesToGet:Ljava/util/List;

    return-object v0
.end method

.method public getCount()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->count:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScanFilter()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/Condition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->scanFilter:Ljava/util/Map;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 565
    const/16 v1, 0x1f

    .line 566
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 568
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 569
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 570
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 571
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 572
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 573
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 574
    return v0

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 570
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    .line 571
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_3

    .line 572
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 573
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodb/model/Key;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public isCount()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->count:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttributesToGet(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "attributesToGet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->attributesToGet:Ljava/util/List;

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v0, "attributesToGetCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public setCount(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/Boolean;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->count:Ljava/lang/Boolean;

    .line 395
    return-void
.end method

.method public setExclusiveStartKey(Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0
    .param p1, "exclusiveStartKey"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 513
    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "limit"    # Ljava/lang/Integer;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->limit:Ljava/lang/Integer;

    .line 324
    return-void
.end method

.method public setScanFilter(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "scanFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/Condition;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->scanFilter:Ljava/util/Map;

    .line 460
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->tableName:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributesToGet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExclusiveStartKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributesToGet(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/ScanRequest;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "attributesToGet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->attributesToGet:Ljava/util/List;

    .line 271
    :goto_0
    return-object p0

    .line 266
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .local v0, "attributesToGetCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributesToGet([Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .locals 6
    .param p1, "attributesToGet"    # [Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->setAttributesToGet(Ljava/util/Collection;)V

    .line 239
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 240
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withCount(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .locals 0
    .param p1, "count"    # Ljava/lang/Boolean;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->count:Ljava/lang/Boolean;

    .line 419
    return-object p0
.end method

.method public withExclusiveStartKey(Lcom/amazonaws/services/dynamodb/model/Key;)Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .locals 0
    .param p1, "exclusiveStartKey"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 537
    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .locals 0
    .param p1, "limit"    # Ljava/lang/Integer;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->limit:Ljava/lang/Integer;

    .line 355
    return-object p0
.end method

.method public withScanFilter(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/Condition;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/ScanRequest;"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "scanFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/Condition;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->setScanFilter(Ljava/util/Map;)V

    .line 474
    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->tableName:Ljava/lang/String;

    .line 176
    return-object p0
.end method
