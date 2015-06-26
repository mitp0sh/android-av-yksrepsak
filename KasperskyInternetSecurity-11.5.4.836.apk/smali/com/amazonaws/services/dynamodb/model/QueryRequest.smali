.class public Lcom/amazonaws/services/dynamodb/model/QueryRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "QueryRequest.java"

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

.field private consistentRead:Ljava/lang/Boolean;

.field private count:Ljava/lang/Boolean;

.field private exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

.field private hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

.field private limit:Ljava/lang/Integer;

.field private rangeKeyCondition:Lcom/amazonaws/services/dynamodb/model/Condition;

.field private scanIndexForward:Ljava/lang/Boolean;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "hashKeyValue"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->tableName:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 136
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 764
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 788
    :cond_0
    :goto_0
    return v3

    .line 765
    :cond_1
    if-eqz p1, :cond_0

    .line 767
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/QueryRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 768
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;

    .line 770
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 773
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 777
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 779
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 781
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/Condition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 785
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 787
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    move v3, v2

    .line 788
    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 770
    goto/16 :goto_1

    :cond_c
    move v4, v3

    goto/16 :goto_2

    :cond_d
    move v1, v3

    .line 772
    goto/16 :goto_3

    :cond_e
    move v4, v3

    goto/16 :goto_4

    :cond_f
    move v1, v3

    .line 774
    goto/16 :goto_5

    :cond_10
    move v4, v3

    goto/16 :goto_6

    :cond_11
    move v1, v3

    .line 776
    goto/16 :goto_7

    :cond_12
    move v4, v3

    goto/16 :goto_8

    :cond_13
    move v1, v3

    .line 778
    goto/16 :goto_9

    :cond_14
    move v4, v3

    goto/16 :goto_a

    :cond_15
    move v1, v3

    .line 780
    goto/16 :goto_b

    :cond_16
    move v4, v3

    goto/16 :goto_c

    :cond_17
    move v1, v3

    .line 782
    goto/16 :goto_d

    :cond_18
    move v4, v3

    goto/16 :goto_e

    :cond_19
    move v1, v3

    .line 784
    goto :goto_f

    :cond_1a
    move v4, v3

    goto :goto_10

    :cond_1b
    move v1, v3

    .line 786
    goto :goto_11

    :cond_1c
    move v4, v3

    goto :goto_12
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
    .line 218
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    return-object v0
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCount()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->count:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

    return-object v0
.end method

.method public getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->rangeKeyCondition:Lcom/amazonaws/services/dynamodb/model/Condition;

    return-object v0
.end method

.method public getScanIndexForward()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 747
    const/16 v1, 0x1f

    .line 748
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 750
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 751
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 752
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 753
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 754
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 755
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 756
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 757
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 758
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_8
    add-int v0, v2, v3

    .line 759
    return v0

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 751
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 752
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    .line 753
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_3

    .line 754
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_4

    .line 755
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->hashCode()I

    move-result v2

    goto :goto_5

    .line 756
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/Condition;->hashCode()I

    move-result v2

    goto :goto_6

    .line 757
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_7

    .line 758
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodb/model/Key;->hashCode()I

    move-result v3

    goto :goto_8
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isCount()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->count:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isScanIndexForward()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

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
    .line 234
    .local p1, "attributesToGet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v0, "attributesToGetCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    .line 403
    return-void
.end method

.method public setCount(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/Boolean;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->count:Ljava/lang/Boolean;

    .line 470
    return-void
.end method

.method public setExclusiveStartKey(Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0
    .param p1, "exclusiveStartKey"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 690
    return-void
.end method

.method public setHashKeyValue(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0
    .param p1, "hashKeyValue"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 533
    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "limit"    # Ljava/lang/Integer;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->limit:Ljava/lang/Integer;

    .line 348
    return-void
.end method

.method public setRangeKeyCondition(Lcom/amazonaws/services/dynamodb/model/Condition;)V
    .locals 0
    .param p1, "rangeKeyCondition"    # Lcom/amazonaws/services/dynamodb/model/Condition;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->rangeKeyCondition:Lcom/amazonaws/services/dynamodb/model/Condition;

    .line 571
    return-void
.end method

.method public setScanIndexForward(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "scanIndexForward"    # Ljava/lang/Boolean;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    .line 615
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->tableName:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributesToGet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HashKeyValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RangeKeyCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanIndexForward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExclusiveStartKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributesToGet(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/QueryRequest;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "attributesToGet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    .line 295
    :goto_0
    return-object p0

    .line 290
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .local v0, "attributesToGetCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 292
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributesToGet([Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 6
    .param p1, "attributesToGet"    # [Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->setAttributesToGet(Ljava/util/Collection;)V

    .line 263
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

    .line 264
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    .line 419
    return-object p0
.end method

.method public withCount(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0
    .param p1, "count"    # Ljava/lang/Boolean;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->count:Ljava/lang/Boolean;

    .line 494
    return-object p0
.end method

.method public withExclusiveStartKey(Lcom/amazonaws/services/dynamodb/model/Key;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0
    .param p1, "exclusiveStartKey"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 716
    return-object p0
.end method

.method public withHashKeyValue(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0
    .param p1, "hashKeyValue"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 547
    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0
    .param p1, "limit"    # Ljava/lang/Integer;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->limit:Ljava/lang/Integer;

    .line 379
    return-object p0
.end method

.method public withRangeKeyCondition(Lcom/amazonaws/services/dynamodb/model/Condition;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0
    .param p1, "rangeKeyCondition"    # Lcom/amazonaws/services/dynamodb/model/Condition;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->rangeKeyCondition:Lcom/amazonaws/services/dynamodb/model/Condition;

    .line 587
    return-object p0
.end method

.method public withScanIndexForward(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0
    .param p1, "scanIndexForward"    # Ljava/lang/Boolean;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    .line 633
    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->tableName:Ljava/lang/String;

    .line 200
    return-object p0
.end method
