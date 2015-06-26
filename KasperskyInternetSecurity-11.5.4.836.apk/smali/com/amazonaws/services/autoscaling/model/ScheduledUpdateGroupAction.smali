.class public Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
.super Ljava/lang/Object;
.source "ScheduledUpdateGroupAction.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private desiredCapacity:Ljava/lang/Integer;

.field private endTime:Ljava/util/Date;

.field private maxSize:Ljava/lang/Integer;

.field private minSize:Ljava/lang/Integer;

.field private recurrence:Ljava/lang/String;

.field private scheduledActionARN:Ljava/lang/String;

.field private scheduledActionName:Ljava/lang/String;

.field private startTime:Ljava/util/Date;

.field private time:Ljava/util/Date;


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

    .line 574
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 600
    :cond_0
    :goto_0
    return v3

    .line 575
    :cond_1
    if-eqz p1, :cond_0

    .line 577
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 578
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;

    .line 580
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 583
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionARN()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionARN()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 585
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionARN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionARN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getStartTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getEndTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getEndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getRecurrence()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getRecurrence()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 593
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getRecurrence()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getRecurrence()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getRecurrence()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMinSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMinSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMaxSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 597
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMaxSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    move v3, v2

    .line 600
    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 580
    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto/16 :goto_2

    :cond_e
    move v1, v3

    .line 582
    goto/16 :goto_3

    :cond_f
    move v4, v3

    goto/16 :goto_4

    :cond_10
    move v1, v3

    .line 584
    goto/16 :goto_5

    :cond_11
    move v4, v3

    goto/16 :goto_6

    :cond_12
    move v1, v3

    .line 586
    goto/16 :goto_7

    :cond_13
    move v4, v3

    goto/16 :goto_8

    :cond_14
    move v1, v3

    .line 588
    goto/16 :goto_9

    :cond_15
    move v4, v3

    goto/16 :goto_a

    :cond_16
    move v1, v3

    .line 590
    goto/16 :goto_b

    :cond_17
    move v4, v3

    goto/16 :goto_c

    :cond_18
    move v1, v3

    .line 592
    goto/16 :goto_d

    :cond_19
    move v4, v3

    goto/16 :goto_e

    :cond_1a
    move v1, v3

    .line 594
    goto/16 :goto_f

    :cond_1b
    move v4, v3

    goto/16 :goto_10

    :cond_1c
    move v1, v3

    .line 596
    goto :goto_11

    :cond_1d
    move v4, v3

    goto :goto_12

    :cond_1e
    move v1, v3

    .line 598
    goto :goto_13

    :cond_1f
    move v4, v3

    goto :goto_14
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesiredCapacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->desiredCapacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->maxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->minSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledActionARN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->scheduledActionARN:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->scheduledActionName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->time:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 556
    const/16 v1, 0x1f

    .line 557
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 559
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 560
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 561
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionARN()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 562
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 563
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getStartTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 564
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getEndTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 565
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getRecurrence()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 566
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 567
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 568
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9

    :goto_9
    add-int v0, v2, v3

    .line 569
    return v0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 562
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 563
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_4

    .line 564
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_5

    .line 565
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getRecurrence()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 566
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_7

    .line 567
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_8

    .line 568
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_9
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->autoScalingGroupName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setDesiredCapacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->desiredCapacity:Ljava/lang/Integer;

    .line 508
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->endTime:Ljava/util/Date;

    .line 354
    return-void
.end method

.method public setMaxSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->maxSize:Ljava/lang/Integer;

    .line 470
    return-void
.end method

.method public setMinSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minSize"    # Ljava/lang/Integer;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->minSize:Ljava/lang/Integer;

    .line 436
    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .locals 0
    .param p1, "recurrence"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->recurrence:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setScheduledActionARN(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheduledActionARN"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->scheduledActionARN:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setScheduledActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheduledActionName"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->scheduledActionName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->startTime:Ljava/util/Date;

    .line 310
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->time:Ljava/util/Date;

    .line 260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScheduledActionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScheduledActionARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getScheduledActionARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getRecurrence()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recurrence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getRecurrence()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesiredCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_9
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->autoScalingGroupName:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public withDesiredCapacity(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->desiredCapacity:Ljava/lang/Integer;

    .line 524
    return-object p0
.end method

.method public withEndTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->endTime:Ljava/util/Date;

    .line 370
    return-object p0
.end method

.method public withMaxSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->maxSize:Ljava/lang/Integer;

    .line 484
    return-object p0
.end method

.method public withMinSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "minSize"    # Ljava/lang/Integer;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->minSize:Ljava/lang/Integer;

    .line 450
    return-object p0
.end method

.method public withRecurrence(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "recurrence"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->recurrence:Ljava/lang/String;

    .line 416
    return-object p0
.end method

.method public withScheduledActionARN(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "scheduledActionARN"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->scheduledActionARN:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public withScheduledActionName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "scheduledActionName"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->scheduledActionName:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->startTime:Ljava/util/Date;

    .line 330
    return-object p0
.end method

.method public withTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;->time:Ljava/util/Date;

    .line 278
    return-object p0
.end method
