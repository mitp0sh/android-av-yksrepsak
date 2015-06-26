.class public Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
.super Ljava/lang/Object;
.source "DomainMetadataResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeNameCount:Ljava/lang/Integer;

.field private attributeNamesSizeBytes:Ljava/lang/Long;

.field private attributeValueCount:Ljava/lang/Integer;

.field private attributeValuesSizeBytes:Ljava/lang/Long;

.field private itemCount:Ljava/lang/Integer;

.field private itemNamesSizeBytes:Ljava/lang/Long;

.field private timestamp:Ljava/lang/Integer;


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

    .line 343
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 363
    :cond_0
    :goto_0
    return v3

    .line 344
    :cond_1
    if-eqz p1, :cond_0

    .line 346
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 347
    check-cast v0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;

    .line 349
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    move v3, v2

    .line 363
    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 349
    goto/16 :goto_1

    :cond_a
    move v4, v3

    goto/16 :goto_2

    :cond_b
    move v1, v3

    .line 351
    goto/16 :goto_3

    :cond_c
    move v4, v3

    goto/16 :goto_4

    :cond_d
    move v1, v3

    .line 353
    goto/16 :goto_5

    :cond_e
    move v4, v3

    goto/16 :goto_6

    :cond_f
    move v1, v3

    .line 355
    goto/16 :goto_7

    :cond_10
    move v4, v3

    goto/16 :goto_8

    :cond_11
    move v1, v3

    .line 357
    goto/16 :goto_9

    :cond_12
    move v4, v3

    goto :goto_a

    :cond_13
    move v1, v3

    .line 359
    goto :goto_b

    :cond_14
    move v4, v3

    goto :goto_c

    :cond_15
    move v1, v3

    .line 361
    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e
.end method

.method public getAttributeNameCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNameCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAttributeNamesSizeBytes()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNamesSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getAttributeValueCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValueCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAttributeValuesSizeBytes()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValuesSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getItemCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemNamesSizeBytes()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemNamesSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->timestamp:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 328
    const/16 v1, 0x1f

    .line 329
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 331
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 332
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 333
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 334
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 335
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 336
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 337
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_6

    :goto_6
    add-int v0, v2, v3

    .line 338
    return v0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_3

    .line 335
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    .line 336
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_5

    .line 337
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public setAttributeNameCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "attributeNameCount"    # Ljava/lang/Integer;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNameCount:Ljava/lang/Integer;

    .line 143
    return-void
.end method

.method public setAttributeNamesSizeBytes(Ljava/lang/Long;)V
    .locals 0
    .param p1, "attributeNamesSizeBytes"    # Ljava/lang/Long;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNamesSizeBytes:Ljava/lang/Long;

    .line 177
    return-void
.end method

.method public setAttributeValueCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "attributeValueCount"    # Ljava/lang/Integer;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValueCount:Ljava/lang/Integer;

    .line 211
    return-void
.end method

.method public setAttributeValuesSizeBytes(Ljava/lang/Long;)V
    .locals 0
    .param p1, "attributeValuesSizeBytes"    # Ljava/lang/Long;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValuesSizeBytes:Ljava/lang/Long;

    .line 245
    return-void
.end method

.method public setItemCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "itemCount"    # Ljava/lang/Integer;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemCount:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method public setItemNamesSizeBytes(Ljava/lang/Long;)V
    .locals 0
    .param p1, "itemNamesSizeBytes"    # Ljava/lang/Long;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemNamesSizeBytes:Ljava/lang/Long;

    .line 109
    return-void
.end method

.method public setTimestamp(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Integer;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->timestamp:Ljava/lang/Integer;

    .line 283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemNamesSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeNameCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeNamesSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeValueCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeValuesSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_6
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributeNameCount(Ljava/lang/Integer;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0
    .param p1, "attributeNameCount"    # Ljava/lang/Integer;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNameCount:Ljava/lang/Integer;

    .line 157
    return-object p0
.end method

.method public withAttributeNamesSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0
    .param p1, "attributeNamesSizeBytes"    # Ljava/lang/Long;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNamesSizeBytes:Ljava/lang/Long;

    .line 191
    return-object p0
.end method

.method public withAttributeValueCount(Ljava/lang/Integer;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0
    .param p1, "attributeValueCount"    # Ljava/lang/Integer;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValueCount:Ljava/lang/Integer;

    .line 225
    return-object p0
.end method

.method public withAttributeValuesSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0
    .param p1, "attributeValuesSizeBytes"    # Ljava/lang/Long;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValuesSizeBytes:Ljava/lang/Long;

    .line 259
    return-object p0
.end method

.method public withItemCount(Ljava/lang/Integer;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0
    .param p1, "itemCount"    # Ljava/lang/Integer;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemCount:Ljava/lang/Integer;

    .line 89
    return-object p0
.end method

.method public withItemNamesSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0
    .param p1, "itemNamesSizeBytes"    # Ljava/lang/Long;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemNamesSizeBytes:Ljava/lang/Long;

    .line 123
    return-object p0
.end method

.method public withTimestamp(Ljava/lang/Integer;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Integer;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->timestamp:Ljava/lang/Integer;

    .line 299
    return-object p0
.end method
