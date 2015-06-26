.class public Lcom/amazonaws/services/cloudwatch/model/Datapoint;
.super Ljava/lang/Object;
.source "Datapoint.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private average:Ljava/lang/Double;

.field private maximum:Ljava/lang/Double;

.field private minimum:Ljava/lang/Double;

.field private sampleCount:Ljava/lang/Double;

.field private sum:Ljava/lang/Double;

.field private timestamp:Ljava/util/Date;

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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

    .line 397
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 417
    :cond_0
    :goto_0
    return v3

    .line 398
    :cond_1
    if-eqz p1, :cond_0

    .line 400
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/Datapoint;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 401
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;

    .line 403
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSampleCount()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSampleCount()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSampleCount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSampleCount()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSampleCount()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getAverage()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getAverage()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getAverage()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getAverage()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getAverage()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSum()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSum()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSum()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSum()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMinimum()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMinimum()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMinimum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMinimum()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMinimum()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMaximum()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMaximum()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    move v3, v2

    .line 417
    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 403
    goto/16 :goto_1

    :cond_a
    move v4, v3

    goto/16 :goto_2

    :cond_b
    move v1, v3

    .line 405
    goto/16 :goto_3

    :cond_c
    move v4, v3

    goto/16 :goto_4

    :cond_d
    move v1, v3

    .line 407
    goto/16 :goto_5

    :cond_e
    move v4, v3

    goto/16 :goto_6

    :cond_f
    move v1, v3

    .line 409
    goto/16 :goto_7

    :cond_10
    move v4, v3

    goto/16 :goto_8

    :cond_11
    move v1, v3

    .line 411
    goto/16 :goto_9

    :cond_12
    move v4, v3

    goto :goto_a

    :cond_13
    move v1, v3

    .line 413
    goto :goto_b

    :cond_14
    move v4, v3

    goto :goto_c

    :cond_15
    move v1, v3

    .line 415
    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e
.end method

.method public getAverage()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->average:Ljava/lang/Double;

    return-object v0
.end method

.method public getMaximum()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->maximum:Ljava/lang/Double;

    return-object v0
.end method

.method public getMinimum()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->minimum:Ljava/lang/Double;

    return-object v0
.end method

.method public getSampleCount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->sampleCount:Ljava/lang/Double;

    return-object v0
.end method

.method public getSum()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->sum:Ljava/lang/Double;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 382
    const/16 v1, 0x1f

    .line 383
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 385
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 386
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSampleCount()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 387
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getAverage()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 388
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSum()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 389
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMinimum()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 390
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMaximum()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 391
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    :goto_6
    add-int v0, v2, v3

    .line 392
    return v0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSampleCount()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getAverage()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_2

    .line 388
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_3

    .line 389
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMinimum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_4

    .line 390
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMaximum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_5

    .line 391
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public setAverage(Ljava/lang/Double;)V
    .locals 0
    .param p1, "average"    # Ljava/lang/Double;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->average:Ljava/lang/Double;

    .line 154
    return-void
.end method

.method public setMaximum(Ljava/lang/Double;)V
    .locals 0
    .param p1, "maximum"    # Ljava/lang/Double;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->maximum:Ljava/lang/Double;

    .line 256
    return-void
.end method

.method public setMinimum(Ljava/lang/Double;)V
    .locals 0
    .param p1, "minimum"    # Ljava/lang/Double;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->minimum:Ljava/lang/Double;

    .line 222
    return-void
.end method

.method public setSampleCount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "sampleCount"    # Ljava/lang/Double;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->sampleCount:Ljava/lang/Double;

    .line 118
    return-void
.end method

.method public setSum(Ljava/lang/Double;)V
    .locals 0
    .param p1, "sum"    # Ljava/lang/Double;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->sum:Ljava/lang/Double;

    .line 188
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->timestamp:Ljava/util/Date;

    .line 80
    return-void
.end method

.method public setUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)V
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->unit:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->unit:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSampleCount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SampleCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSampleCount()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getAverage()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getAverage()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getSum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMinimum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMinimum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getMaximum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_6
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAverage(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    .locals 0
    .param p1, "average"    # Ljava/lang/Double;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->average:Ljava/lang/Double;

    .line 168
    return-object p0
.end method

.method public withMaximum(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    .locals 0
    .param p1, "maximum"    # Ljava/lang/Double;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->maximum:Ljava/lang/Double;

    .line 270
    return-object p0
.end method

.method public withMinimum(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    .locals 0
    .param p1, "minimum"    # Ljava/lang/Double;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->minimum:Ljava/lang/Double;

    .line 236
    return-object p0
.end method

.method public withSampleCount(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    .locals 0
    .param p1, "sampleCount"    # Ljava/lang/Double;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->sampleCount:Ljava/lang/Double;

    .line 134
    return-object p0
.end method

.method public withSum(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    .locals 0
    .param p1, "sum"    # Ljava/lang/Double;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->sum:Ljava/lang/Double;

    .line 202
    return-object p0
.end method

.method public withTimestamp(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->timestamp:Ljava/util/Date;

    .line 94
    return-object p0
.end method

.method public withUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 353
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->unit:Ljava/lang/String;

    .line 354
    return-object p0
.end method

.method public withUnit(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/Datapoint;->unit:Ljava/lang/String;

    .line 319
    return-object p0
.end method
