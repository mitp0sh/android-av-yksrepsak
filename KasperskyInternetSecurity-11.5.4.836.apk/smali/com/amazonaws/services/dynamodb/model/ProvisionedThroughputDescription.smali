.class public Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
.super Ljava/lang/Object;
.source "ProvisionedThroughputDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lastDecreaseDateTime:Ljava/util/Date;

.field private lastIncreaseDateTime:Ljava/util/Date;

.field private numberOfDecreasesToday:Ljava/lang/Long;

.field private readCapacityUnits:Ljava/lang/Long;

.field private writeCapacityUnits:Ljava/lang/Long;


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

    .line 269
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 285
    :cond_0
    :goto_0
    return v3

    .line 270
    :cond_1
    if-eqz p1, :cond_0

    .line 272
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 273
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    .line 275
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 285
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 275
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 277
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 279
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 281
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 283
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getLastDecreaseDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastDecreaseDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLastIncreaseDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastIncreaseDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getNumberOfDecreasesToday()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->numberOfDecreasesToday:Ljava/lang/Long;

    return-object v0
.end method

.method public getReadCapacityUnits()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->readCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public getWriteCapacityUnits()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->writeCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 256
    const/16 v1, 0x1f

    .line 257
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 259
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 260
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 261
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 262
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 263
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 264
    return v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_2

    .line 262
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_3

    .line 263
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setLastDecreaseDateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastDecreaseDateTime"    # Ljava/util/Date;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastDecreaseDateTime:Ljava/util/Date;

    .line 85
    return-void
.end method

.method public setLastIncreaseDateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastIncreaseDateTime"    # Ljava/util/Date;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastIncreaseDateTime:Ljava/util/Date;

    .line 50
    return-void
.end method

.method public setNumberOfDecreasesToday(Ljava/lang/Long;)V
    .locals 0
    .param p1, "numberOfDecreasesToday"    # Ljava/lang/Long;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->numberOfDecreasesToday:Ljava/lang/Long;

    .line 126
    return-void
.end method

.method public setReadCapacityUnits(Ljava/lang/Long;)V
    .locals 0
    .param p1, "readCapacityUnits"    # Ljava/lang/Long;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->readCapacityUnits:Ljava/lang/Long;

    .line 169
    return-void
.end method

.method public setWriteCapacityUnits(Ljava/lang/Long;)V
    .locals 0
    .param p1, "writeCapacityUnits"    # Ljava/lang/Long;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->writeCapacityUnits:Ljava/lang/Long;

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastIncreaseDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastDecreaseDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberOfDecreasesToday: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withLastDecreaseDateTime(Ljava/util/Date;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0
    .param p1, "lastDecreaseDateTime"    # Ljava/util/Date;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastDecreaseDateTime:Ljava/util/Date;

    .line 99
    return-object p0
.end method

.method public withLastIncreaseDateTime(Ljava/util/Date;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0
    .param p1, "lastIncreaseDateTime"    # Ljava/util/Date;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastIncreaseDateTime:Ljava/util/Date;

    .line 64
    return-object p0
.end method

.method public withNumberOfDecreasesToday(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0
    .param p1, "numberOfDecreasesToday"    # Ljava/lang/Long;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->numberOfDecreasesToday:Ljava/lang/Long;

    .line 143
    return-object p0
.end method

.method public withReadCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0
    .param p1, "readCapacityUnits"    # Ljava/lang/Long;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->readCapacityUnits:Ljava/lang/Long;

    .line 186
    return-object p0
.end method

.method public withWriteCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0
    .param p1, "writeCapacityUnits"    # Ljava/lang/Long;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->writeCapacityUnits:Ljava/lang/Long;

    .line 229
    return-object p0
.end method
