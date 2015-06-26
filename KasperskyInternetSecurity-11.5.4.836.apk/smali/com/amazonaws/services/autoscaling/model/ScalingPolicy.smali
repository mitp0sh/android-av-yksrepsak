.class public Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
.super Ljava/lang/Object;
.source "ScalingPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adjustmentType:Ljava/lang/String;

.field private alarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private autoScalingGroupName:Ljava/lang/String;

.field private cooldown:Ljava/lang/Integer;

.field private minAdjustmentStep:Ljava/lang/Integer;

.field private policyARN:Ljava/lang/String;

.field private policyName:Ljava/lang/String;

.field private scalingAdjustment:Ljava/lang/Integer;


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

    .line 534
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 556
    :cond_0
    :goto_0
    return v3

    .line 535
    :cond_1
    if-eqz p1, :cond_0

    .line 537
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 538
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;

    .line 540
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 543
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 545
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAdjustmentType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAdjustmentType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAdjustmentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAdjustmentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAdjustmentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getCooldown()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getCooldown()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getCooldown()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyARN()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyARN()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyARN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyARN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    move v3, v2

    .line 556
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 540
    goto/16 :goto_1

    :cond_b
    move v4, v3

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 542
    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_4

    :cond_e
    move v1, v3

    .line 544
    goto/16 :goto_5

    :cond_f
    move v4, v3

    goto/16 :goto_6

    :cond_10
    move v1, v3

    .line 546
    goto/16 :goto_7

    :cond_11
    move v4, v3

    goto/16 :goto_8

    :cond_12
    move v1, v3

    .line 548
    goto/16 :goto_9

    :cond_13
    move v4, v3

    goto/16 :goto_a

    :cond_14
    move v1, v3

    .line 550
    goto/16 :goto_b

    :cond_15
    move v4, v3

    goto/16 :goto_c

    :cond_16
    move v1, v3

    .line 552
    goto :goto_d

    :cond_17
    move v4, v3

    goto :goto_e

    :cond_18
    move v1, v3

    .line 554
    goto :goto_f

    :cond_19
    move v4, v3

    goto :goto_10
.end method

.method public getAdjustmentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->adjustmentType:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->alarms:Ljava/util/List;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->alarms:Ljava/util/List;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->alarms:Ljava/util/List;

    return-object v0
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getCooldown()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->cooldown:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinAdjustmentStep()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->minAdjustmentStep:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPolicyARN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->policyARN:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->policyName:Ljava/lang/String;

    return-object v0
.end method

.method public getScalingAdjustment()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->scalingAdjustment:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 518
    const/16 v1, 0x1f

    .line 519
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 521
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 522
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 523
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 524
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAdjustmentType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 525
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getCooldown()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 526
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyARN()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 527
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 528
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_7
    add-int v0, v2, v3

    .line 529
    return v0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 523
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAdjustmentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 525
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    .line 526
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 527
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    .line 528
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public setAdjustmentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "adjustmentType"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->adjustmentType:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setAlarms(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "alarms":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/Alarm;>;"
    if-nez p1, :cond_0

    .line 403
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->alarms:Ljava/util/List;

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v0, "alarmsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/Alarm;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->alarms:Ljava/util/List;

    goto :goto_0
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->autoScalingGroupName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setCooldown(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "cooldown"    # Ljava/lang/Integer;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->cooldown:Ljava/lang/Integer;

    .line 317
    return-void
.end method

.method public setMinAdjustmentStep(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minAdjustmentStep"    # Ljava/lang/Integer;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->minAdjustmentStep:Ljava/lang/Integer;

    .line 472
    return-void
.end method

.method public setPolicyARN(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyARN"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->policyARN:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setPolicyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->policyName:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setScalingAdjustment(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "scalingAdjustment"    # Ljava/lang/Integer;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->scalingAdjustment:Ljava/lang/Integer;

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScalingAdjustment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAdjustmentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdjustmentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAdjustmentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cooldown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getPolicyARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinAdjustmentStep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAdjustmentType(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    .locals 0
    .param p1, "adjustmentType"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->adjustmentType:Ljava/lang/String;

    .line 293
    return-object p0
.end method

.method public withAlarms(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Alarm;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "alarms":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/Alarm;>;"
    if-nez p1, :cond_0

    .line 442
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->alarms:Ljava/util/List;

    .line 449
    :goto_0
    return-object p0

    .line 444
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    .local v0, "alarmsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/Alarm;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 446
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->alarms:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAlarms([Lcom/amazonaws/services/autoscaling/model/Alarm;)Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    .locals 6
    .param p1, "alarms"    # [Lcom/amazonaws/services/autoscaling/model/Alarm;

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->setAlarms(Ljava/util/Collection;)V

    .line 424
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/Alarm;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 425
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/Alarm;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->getAlarms()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/Alarm;
    :cond_1
    return-object p0
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->autoScalingGroupName:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public withCooldown(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    .locals 0
    .param p1, "cooldown"    # Ljava/lang/Integer;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->cooldown:Ljava/lang/Integer;

    .line 333
    return-object p0
.end method

.method public withMinAdjustmentStep(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    .locals 0
    .param p1, "minAdjustmentStep"    # Ljava/lang/Integer;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->minAdjustmentStep:Ljava/lang/Integer;

    .line 488
    return-object p0
.end method

.method public withPolicyARN(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    .locals 0
    .param p1, "policyARN"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->policyARN:Ljava/lang/String;

    .line 379
    return-object p0
.end method

.method public withPolicyName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->policyName:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public withScalingAdjustment(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;
    .locals 0
    .param p1, "scalingAdjustment"    # Ljava/lang/Integer;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScalingPolicy;->scalingAdjustment:Ljava/lang/Integer;

    .line 229
    return-object p0
.end method
