.class public Lcom/amazonaws/services/ec2/model/ConversionTask;
.super Ljava/lang/Object;
.source "ConversionTask.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conversionTaskId:Ljava/lang/String;

.field private expirationTime:Ljava/lang/String;

.field private importInstance:Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

.field private importVolume:Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

.field private state:Ljava/lang/String;

.field private statusMessage:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
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

    .line 350
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 370
    :cond_0
    :goto_0
    return v3

    .line 351
    :cond_1
    if-eqz p1, :cond_0

    .line 353
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ConversionTask;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 354
    check-cast v0, Lcom/amazonaws/services/ec2/model/ConversionTask;

    .line 356
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ConversionTask;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    move v3, v2

    .line 370
    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 356
    goto/16 :goto_1

    :cond_a
    move v4, v3

    goto/16 :goto_2

    :cond_b
    move v1, v3

    .line 358
    goto/16 :goto_3

    :cond_c
    move v4, v3

    goto/16 :goto_4

    :cond_d
    move v1, v3

    .line 360
    goto/16 :goto_5

    :cond_e
    move v4, v3

    goto/16 :goto_6

    :cond_f
    move v1, v3

    .line 362
    goto/16 :goto_7

    :cond_10
    move v4, v3

    goto/16 :goto_8

    :cond_11
    move v1, v3

    .line 364
    goto/16 :goto_9

    :cond_12
    move v4, v3

    goto :goto_a

    :cond_13
    move v1, v3

    .line 366
    goto :goto_b

    :cond_14
    move v4, v3

    goto :goto_c

    :cond_15
    move v1, v3

    .line 368
    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e
.end method

.method public getConversionTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->conversionTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->expirationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importInstance:Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    return-object v0
.end method

.method public getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importVolume:Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 335
    const/16 v1, 0x1f

    .line 336
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 338
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 339
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 340
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 341
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 342
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 343
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 344
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6

    :goto_6
    add-int v0, v2, v3

    .line 345
    return v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->hashCode()I

    move-result v2

    goto :goto_2

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->hashCode()I

    move-result v2

    goto :goto_3

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 343
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 344
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public setConversionTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversionTaskId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->conversionTaskId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setExpirationTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationTime"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->expirationTime:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setImportInstance(Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;)V
    .locals 0
    .param p1, "importInstance"    # Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importInstance:Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    .line 121
    return-void
.end method

.method public setImportVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;)V
    .locals 0
    .param p1, "importVolume"    # Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importVolume:Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    .line 155
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->state:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->statusMessage:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConversionTaskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpirationTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImportInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImportVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_6
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withConversionTaskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0
    .param p1, "conversionTaskId"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->conversionTaskId:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public withExpirationTime(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0
    .param p1, "expirationTime"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->expirationTime:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public withImportInstance(Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0
    .param p1, "importInstance"    # Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importInstance:Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    .line 135
    return-object p0
.end method

.method public withImportVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0
    .param p1, "importVolume"    # Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importVolume:Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    .line 169
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->state:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public withStatusMessage(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->statusMessage:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ConversionTask;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    .line 307
    :goto_0
    return-object p0

    .line 302
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ConversionTask;->setTags(Ljava/util/Collection;)V

    .line 282
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/Tag;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 283
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method
