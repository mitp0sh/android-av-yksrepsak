.class public Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetMetricStatisticsRequest.java"

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

.field private endTime:Ljava/util/Date;

.field private metricName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private period:Ljava/lang/Integer;

.field private startTime:Ljava/util/Date;

.field private statistics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
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

    .line 723
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 745
    :cond_0
    :goto_0
    return v3

    .line 724
    :cond_1
    if-eqz p1, :cond_0

    .line 726
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 727
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;

    .line 729
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 730
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 732
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 734
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 736
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 738
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 740
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 744
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    move v3, v2

    .line 745
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 729
    goto/16 :goto_1

    :cond_b
    move v4, v3

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 731
    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_4

    :cond_e
    move v1, v3

    .line 733
    goto/16 :goto_5

    :cond_f
    move v4, v3

    goto/16 :goto_6

    :cond_10
    move v1, v3

    .line 735
    goto/16 :goto_7

    :cond_11
    move v4, v3

    goto/16 :goto_8

    :cond_12
    move v1, v3

    .line 737
    goto/16 :goto_9

    :cond_13
    move v4, v3

    goto/16 :goto_a

    :cond_14
    move v1, v3

    .line 739
    goto/16 :goto_b

    :cond_15
    move v4, v3

    goto/16 :goto_c

    :cond_16
    move v1, v3

    .line 741
    goto :goto_d

    :cond_17
    move v4, v3

    goto :goto_e

    :cond_18
    move v1, v3

    .line 743
    goto :goto_f

    :cond_19
    move v4, v3

    goto :goto_10
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
    .line 231
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->dimensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->dimensions:Ljava/util/List;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->period:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStatistics()Ljava/util/List;
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
    .line 503
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->statistics:Ljava/util/List;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->statistics:Ljava/util/List;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->statistics:Ljava/util/List;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 707
    const/16 v1, 0x1f

    .line 708
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 710
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 711
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 712
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 713
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 714
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 715
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 716
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 717
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_7
    add-int v0, v2, v3

    .line 718
    return v0

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 712
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 713
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 714
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_4

    .line 715
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_5

    .line 716
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    .line 717
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_7
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
    .line 246
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 247
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->dimensions:Ljava/util/List;

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->endTime:Ljava/util/Date;

    .line 408
    return-void
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->metricName:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->namespace:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPeriod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/Integer;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->period:Ljava/lang/Integer;

    .line 460
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->startTime:Ljava/util/Date;

    .line 350
    return-void
.end method

.method public setStatistics(Ljava/util/Collection;)V
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
    .line 526
    .local p1, "statistics":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 527
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->statistics:Ljava/util/List;

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    .local v0, "statisticsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->statistics:Ljava/util/List;

    goto :goto_0
.end method

.method public setUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)V
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 658
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->unit:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->unit:Ljava/lang/String;

    .line 624
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statistics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDimensions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->dimensions:Ljava/util/List;

    .line 299
    :goto_0
    return-object p0

    .line 294
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDimensions([Lcom/amazonaws/services/cloudwatch/model/Dimension;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 6
    .param p1, "dimensions"    # [Lcom/amazonaws/services/cloudwatch/model/Dimension;

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->setDimensions(Ljava/util/Collection;)V

    .line 271
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

    .line 272
    .local v3, "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v3    # "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    :cond_1
    return-object p0
.end method

.method public withEndTime(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->endTime:Ljava/util/Date;

    .line 426
    return-object p0
.end method

.method public withMetricName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->metricName:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->namespace:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public withPeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 0
    .param p1, "period"    # Ljava/lang/Integer;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->period:Ljava/lang/Integer;

    .line 481
    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->startTime:Ljava/util/Date;

    .line 380
    return-object p0
.end method

.method public withStatistics(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "statistics":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 588
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->statistics:Ljava/util/List;

    .line 595
    :goto_0
    return-object p0

    .line 590
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 591
    .local v0, "statisticsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 592
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->statistics:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withStatistics([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 6
    .param p1, "statistics"    # [Ljava/lang/String;

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->setStatistics(Ljava/util/Collection;)V

    .line 559
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

    .line 560
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->unit:Ljava/lang/String;

    .line 678
    return-object p0
.end method

.method public withUnit(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->unit:Ljava/lang/String;

    .line 643
    return-object p0
.end method
