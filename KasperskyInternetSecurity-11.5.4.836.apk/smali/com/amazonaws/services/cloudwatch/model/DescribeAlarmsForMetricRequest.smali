.class public Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeAlarmsForMetricRequest.java"

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

.field private namespace:Ljava/lang/String;

.field private period:Ljava/lang/Integer;

.field private statistic:Ljava/lang/String;

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 495
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 513
    :cond_0
    :goto_0
    return v3

    .line 496
    :cond_1
    if-eqz p1, :cond_0

    .line 498
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 499
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;

    .line 501
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 504
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 506
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 512
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 513
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 501
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 503
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 505
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 507
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 509
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 511
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
    .line 260
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->dimensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->dimensions:Ljava/util/List;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->period:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatistic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->statistic:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 481
    const/16 v1, 0x1f

    .line 482
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 484
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 485
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 486
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 487
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 488
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 489
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 490
    return v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 486
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 487
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 488
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    .line 489
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

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
    .line 275
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->dimensions:Ljava/util/List;

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->metricName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->namespace:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPeriod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/Integer;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->period:Ljava/lang/Integer;

    .line 353
    return-void
.end method

.method public setStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)V
    .locals 1
    .param p1, "statistic"    # Lcom/amazonaws/services/cloudwatch/model/Statistic;

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->statistic:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setStatistic(Ljava/lang/String;)V
    .locals 0
    .param p1, "statistic"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->statistic:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)V
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 434
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->unit:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->unit:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statistic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDimensions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 321
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->dimensions:Ljava/util/List;

    .line 328
    :goto_0
    return-object p0

    .line 323
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 324
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDimensions([Lcom/amazonaws/services/cloudwatch/model/Dimension;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .locals 6
    .param p1, "dimensions"    # [Lcom/amazonaws/services/cloudwatch/model/Dimension;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->setDimensions(Ljava/util/Collection;)V

    .line 300
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

    .line 301
    .local v3, "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v3    # "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    :cond_1
    return-object p0
.end method

.method public withMetricName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->metricName:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->namespace:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public withPeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .locals 0
    .param p1, "period"    # Ljava/lang/Integer;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->period:Ljava/lang/Integer;

    .line 370
    return-object p0
.end method

.method public withStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .locals 1
    .param p1, "statistic"    # Lcom/amazonaws/services/cloudwatch/model/Statistic;

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->statistic:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public withStatistic(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .locals 0
    .param p1, "statistic"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->statistic:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public withUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 453
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->unit:Ljava/lang/String;

    .line 454
    return-object p0
.end method

.method public withUnit(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->unit:Ljava/lang/String;

    .line 419
    return-object p0
.end method
