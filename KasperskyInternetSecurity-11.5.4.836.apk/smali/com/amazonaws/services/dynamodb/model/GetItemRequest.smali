.class public Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetItemRequest.java"

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

.field private key:Lcom/amazonaws/services/dynamodb/model/Key;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->tableName:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 384
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 398
    :cond_0
    :goto_0
    return v3

    .line 385
    :cond_1
    if-eqz p1, :cond_0

    .line 387
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 388
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;

    .line 390
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 398
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 390
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 392
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 394
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 396
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
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
    .line 219
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    return-object v0
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKey()Lcom/amazonaws/services/dynamodb/model/Key;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 372
    const/16 v1, 0x1f

    .line 373
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 375
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 376
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 377
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 378
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 379
    return v0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/Key;->hashCode()I

    move-result v2

    goto :goto_1

    .line 377
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 378
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->consistentRead:Ljava/lang/Boolean;

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
    .line 235
    .local p1, "attributesToGet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v0, "attributesToGetCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->consistentRead:Ljava/lang/Boolean;

    .line 319
    return-void
.end method

.method public setKey(Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0
    .param p1, "key"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 183
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->tableName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributesToGet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributesToGet(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/GetItemRequest;"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "attributesToGet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    .line 296
    :goto_0
    return-object p0

    .line 291
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    .local v0, "attributesToGetCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributesToGet([Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    .locals 6
    .param p1, "attributesToGet"    # [Ljava/lang/String;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->setAttributesToGet(Ljava/util/Collection;)V

    .line 264
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

    .line 265
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->consistentRead:Ljava/lang/Boolean;

    .line 335
    return-object p0
.end method

.method public withKey(Lcom/amazonaws/services/dynamodb/model/Key;)Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    .locals 0
    .param p1, "key"    # Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    .line 201
    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->tableName:Ljava/lang/String;

    .line 155
    return-object p0
.end method
