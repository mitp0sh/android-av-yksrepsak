.class public Lcom/amazonaws/services/dynamodb/model/TableDescription;
.super Ljava/lang/Object;
.source "TableDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private creationDateTime:Ljava/util/Date;

.field private itemCount:Ljava/lang/Long;

.field private keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

.field private provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

.field private tableName:Ljava/lang/String;

.field private tableSizeBytes:Ljava/lang/Long;

.field private tableStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
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

    .line 428
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 448
    :cond_0
    :goto_0
    return v3

    .line 429
    :cond_1
    if-eqz p1, :cond_0

    .line 431
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/TableDescription;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 432
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/TableDescription;

    .line 434
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/TableDescription;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 437
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    move v3, v2

    .line 448
    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 434
    goto/16 :goto_1

    :cond_a
    move v4, v3

    goto/16 :goto_2

    :cond_b
    move v1, v3

    .line 436
    goto/16 :goto_3

    :cond_c
    move v4, v3

    goto/16 :goto_4

    :cond_d
    move v1, v3

    .line 438
    goto/16 :goto_5

    :cond_e
    move v4, v3

    goto/16 :goto_6

    :cond_f
    move v1, v3

    .line 440
    goto/16 :goto_7

    :cond_10
    move v4, v3

    goto/16 :goto_8

    :cond_11
    move v1, v3

    .line 442
    goto/16 :goto_9

    :cond_12
    move v4, v3

    goto :goto_a

    :cond_13
    move v1, v3

    .line 444
    goto :goto_b

    :cond_14
    move v4, v3

    goto :goto_c

    :cond_15
    move v1, v3

    .line 446
    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e
.end method

.method public getCreationDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->creationDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getItemCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->itemCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableSizeBytes()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 413
    const/16 v1, 0x1f

    .line 414
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 416
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 417
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 418
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 419
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 420
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 421
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 422
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_6

    :goto_6
    add-int v0, v2, v3

    .line 423
    return v0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->hashCode()I

    move-result v2

    goto :goto_1

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 419
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 420
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->hashCode()I

    move-result v2

    goto :goto_4

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_5

    .line 422
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public setCreationDateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "creationDateTime"    # Ljava/util/Date;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->creationDateTime:Ljava/util/Date;

    .line 267
    return-void
.end method

.method public setItemCount(Ljava/lang/Long;)V
    .locals 0
    .param p1, "itemCount"    # Ljava/lang/Long;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->itemCount:Ljava/lang/Long;

    .line 370
    return-void
.end method

.method public setKeySchema(Lcom/amazonaws/services/dynamodb/model/KeySchema;)V
    .locals 0
    .param p1, "keySchema"    # Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .line 140
    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;)V
    .locals 0
    .param p1, "provisionedThroughput"    # Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    .line 302
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setTableSizeBytes(Ljava/lang/Long;)V
    .locals 0
    .param p1, "tableSizeBytes"    # Ljava/lang/Long;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableSizeBytes:Ljava/lang/Long;

    .line 336
    return-void
.end method

.method public setTableStatus(Lcom/amazonaws/services/dynamodb/model/TableStatus;)V
    .locals 1
    .param p1, "tableStatus"    # Lcom/amazonaws/services/dynamodb/model/TableStatus;

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableStatus;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setTableStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableStatus"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySchema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_6
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCreationDateTime(Ljava/util/Date;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0
    .param p1, "creationDateTime"    # Ljava/util/Date;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->creationDateTime:Ljava/util/Date;

    .line 281
    return-object p0
.end method

.method public withItemCount(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0
    .param p1, "itemCount"    # Ljava/lang/Long;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->itemCount:Ljava/lang/Long;

    .line 384
    return-object p0
.end method

.method public withKeySchema(Lcom/amazonaws/services/dynamodb/model/KeySchema;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0
    .param p1, "keySchema"    # Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .line 164
    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0
    .param p1, "provisionedThroughput"    # Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    .line 316
    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableName:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public withTableSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0
    .param p1, "tableSizeBytes"    # Ljava/lang/Long;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableSizeBytes:Ljava/lang/Long;

    .line 350
    return-object p0
.end method

.method public withTableStatus(Lcom/amazonaws/services/dynamodb/model/TableStatus;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 1
    .param p1, "tableStatus"    # Lcom/amazonaws/services/dynamodb/model/TableStatus;

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableStatus;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public withTableStatus(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0
    .param p1, "tableStatus"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    .line 213
    return-object p0
.end method
