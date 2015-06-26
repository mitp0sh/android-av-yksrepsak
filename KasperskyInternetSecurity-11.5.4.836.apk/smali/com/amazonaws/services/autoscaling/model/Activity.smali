.class public Lcom/amazonaws/services/autoscaling/model/Activity;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private activityId:Ljava/lang/String;

.field private autoScalingGroupName:Ljava/lang/String;

.field private cause:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private details:Ljava/lang/String;

.field private endTime:Ljava/util/Date;

.field private progress:Ljava/lang/Integer;

.field private startTime:Ljava/util/Date;

.field private statusCode:Ljava/lang/String;

.field private statusMessage:Ljava/lang/String;


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

    .line 605
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 631
    :cond_0
    :goto_0
    return v3

    .line 606
    :cond_1
    if-eqz p1, :cond_0

    .line 608
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/Activity;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 609
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/Activity;

    .line 611
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/Activity;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 616
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 620
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 626
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 630
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    move v3, v2

    .line 631
    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 611
    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto/16 :goto_2

    :cond_e
    move v1, v3

    .line 613
    goto/16 :goto_3

    :cond_f
    move v4, v3

    goto/16 :goto_4

    :cond_10
    move v1, v3

    .line 615
    goto/16 :goto_5

    :cond_11
    move v4, v3

    goto/16 :goto_6

    :cond_12
    move v1, v3

    .line 617
    goto/16 :goto_7

    :cond_13
    move v4, v3

    goto/16 :goto_8

    :cond_14
    move v1, v3

    .line 619
    goto/16 :goto_9

    :cond_15
    move v4, v3

    goto/16 :goto_a

    :cond_16
    move v1, v3

    .line 621
    goto/16 :goto_b

    :cond_17
    move v4, v3

    goto/16 :goto_c

    :cond_18
    move v1, v3

    .line 623
    goto/16 :goto_d

    :cond_19
    move v4, v3

    goto/16 :goto_e

    :cond_1a
    move v1, v3

    .line 625
    goto/16 :goto_f

    :cond_1b
    move v4, v3

    goto/16 :goto_10

    :cond_1c
    move v1, v3

    .line 627
    goto :goto_11

    :cond_1d
    move v4, v3

    goto :goto_12

    :cond_1e
    move v1, v3

    .line 629
    goto :goto_13

    :cond_1f
    move v4, v3

    goto :goto_14
.end method

.method public getActivityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->activityId:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->cause:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->details:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getProgress()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->progress:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 587
    const/16 v1, 0x1f

    .line 588
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 590
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 591
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 592
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 593
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 594
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 595
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 596
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 597
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 598
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 599
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    :goto_9
    add-int v0, v2, v3

    .line 600
    return v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 592
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 593
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 594
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_4

    .line 595
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_5

    .line 596
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 597
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 598
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_8

    .line 599
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_9
.end method

.method public setActivityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityId"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->activityId:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->autoScalingGroupName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setCause(Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->cause:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->description:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0
    .param p1, "details"    # Ljava/lang/String;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->details:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->endTime:Ljava/util/Date;

    .line 329
    return-void
.end method

.method public setProgress(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # Ljava/lang/Integer;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->progress:Ljava/lang/Integer;

    .line 496
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->startTime:Ljava/util/Date;

    .line 295
    return-void
.end method

.method public setStatusCode(Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;)V
    .locals 1
    .param p1, "statusCode"    # Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusMessage:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_9
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withActivityId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "activityId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->activityId:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->autoScalingGroupName:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public withCause(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->cause:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->description:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public withDetails(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "details"    # Ljava/lang/String;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->details:Ljava/lang/String;

    .line 555
    return-object p0
.end method

.method public withEndTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->endTime:Ljava/util/Date;

    .line 343
    return-object p0
.end method

.method public withProgress(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "progress"    # Ljava/lang/Integer;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->progress:Ljava/lang/Integer;

    .line 512
    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->startTime:Ljava/util/Date;

    .line 309
    return-object p0
.end method

.method public withStatusCode(Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 1
    .param p1, "statusCode"    # Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;

    .prologue
    .line 426
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    .line 427
    return-object p0
.end method

.method public withStatusCode(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "statusCode"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public withStatusMessage(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusMessage:Ljava/lang/String;

    .line 472
    return-object p0
.end method
