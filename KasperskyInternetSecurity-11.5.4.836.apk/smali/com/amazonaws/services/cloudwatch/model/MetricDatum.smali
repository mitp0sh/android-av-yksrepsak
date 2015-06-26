.class public Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
.super Ljava/lang/Object;
.source "MetricDatum.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;"
        }
    .end annotation
.end field

.field private metricName:Ljava/lang/String;

.field private statisticValues:Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

.field private timestamp:Ljava/util/Date;

.field private unit:Ljava/lang/String;

.field private value:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
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

    .line 472
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 490
    :cond_0
    :goto_0
    return v3

    .line 473
    :cond_1
    if-eqz p1, :cond_0

    .line 475
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 476
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;

    .line 478
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 490
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 478
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 480
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 482
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 484
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 486
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 488
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->dimensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->dimensions:Ljava/util/List;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->statisticValues:Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 458
    const/16 v1, 0x1f

    .line 459
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 461
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 462
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 463
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 464
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 465
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 466
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 467
    return v0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 463
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_2

    .line 464
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_3

    .line 465
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->hashCode()I

    move-result v2

    goto :goto_4

    .line 466
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setDimensions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->dimensions:Ljava/util/List;

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->metricName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setStatisticValues(Lcom/amazonaws/services/cloudwatch/model/StatisticSet;)V
    .locals 0
    .param p1, "statisticValues"    # Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->statisticValues:Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    .line 333
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->timestamp:Ljava/util/Date;

    .line 233
    return-void
.end method

.method public setUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)V
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 411
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->unit:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->unit:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->value:Ljava/lang/Double;

    .line 289
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatisticValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDimensions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/MetricDatum;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->dimensions:Ljava/util/List;

    .line 210
    :goto_0
    return-object p0

    .line 205
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDimensions([Lcom/amazonaws/services/cloudwatch/model/Dimension;)Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    .locals 6
    .param p1, "dimensions"    # [Lcom/amazonaws/services/cloudwatch/model/Dimension;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->setDimensions(Ljava/util/Collection;)V

    .line 178
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/cloudwatch/model/Dimension;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 179
    .local v3, "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v3    # "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    :cond_1
    return-object p0
.end method

.method public withMetricName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->metricName:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public withStatisticValues(Lcom/amazonaws/services/cloudwatch/model/StatisticSet;)Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    .locals 0
    .param p1, "statisticValues"    # Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->statisticValues:Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    .line 347
    return-object p0
.end method

.method public withTimestamp(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->timestamp:Ljava/util/Date;

    .line 249
    return-object p0
.end method

.method public withUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->unit:Ljava/lang/String;

    .line 431
    return-object p0
.end method

.method public withUnit(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->unit:Ljava/lang/String;

    .line 396
    return-object p0
.end method

.method public withValue(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->value:Ljava/lang/Double;

    .line 313
    return-object p0
.end method
