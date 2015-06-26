.class public Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutScalingPolicyRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adjustmentType:Ljava/lang/String;

.field private autoScalingGroupName:Ljava/lang/String;

.field private cooldown:Ljava/lang/Integer;

.field private minAdjustmentStep:Ljava/lang/Integer;

.field private policyName:Ljava/lang/String;

.field private scalingAdjustment:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
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

    .line 448
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 466
    :cond_0
    :goto_0
    return v3

    .line 449
    :cond_1
    if-eqz p1, :cond_0

    .line 451
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 452
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;

    .line 454
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAdjustmentType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAdjustmentType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 461
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAdjustmentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAdjustmentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAdjustmentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getCooldown()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getCooldown()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getCooldown()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 466
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 454
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 456
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 458
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 460
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 462
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 464
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAdjustmentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->adjustmentType:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getCooldown()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->cooldown:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinAdjustmentStep()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->minAdjustmentStep:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->policyName:Ljava/lang/String;

    return-object v0
.end method

.method public getScalingAdjustment()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->scalingAdjustment:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 434
    const/16 v1, 0x1f

    .line 435
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 437
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 438
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 439
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 440
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAdjustmentType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 441
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getCooldown()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 442
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 443
    return v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 439
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    .line 440
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAdjustmentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 441
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    .line 442
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setAdjustmentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "adjustmentType"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->adjustmentType:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setCooldown(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "cooldown"    # Ljava/lang/Integer;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->cooldown:Ljava/lang/Integer;

    .line 320
    return-void
.end method

.method public setMinAdjustmentStep(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minAdjustmentStep"    # Ljava/lang/Integer;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->minAdjustmentStep:Ljava/lang/Integer;

    .line 380
    return-void
.end method

.method public setPolicyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->policyName:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setScalingAdjustment(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "scalingAdjustment"    # Ljava/lang/Integer;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->scalingAdjustment:Ljava/lang/Integer;

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScalingAdjustment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getScalingAdjustment()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAdjustmentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdjustmentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getAdjustmentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cooldown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinAdjustmentStep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->getMinAdjustmentStep()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAdjustmentType(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    .locals 0
    .param p1, "adjustmentType"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->adjustmentType:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public withCooldown(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    .locals 0
    .param p1, "cooldown"    # Ljava/lang/Integer;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->cooldown:Ljava/lang/Integer;

    .line 336
    return-object p0
.end method

.method public withMinAdjustmentStep(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    .locals 0
    .param p1, "minAdjustmentStep"    # Ljava/lang/Integer;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->minAdjustmentStep:Ljava/lang/Integer;

    .line 406
    return-object p0
.end method

.method public withPolicyName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->policyName:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public withScalingAdjustment(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    .locals 0
    .param p1, "scalingAdjustment"    # Ljava/lang/Integer;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;->scalingAdjustment:Ljava/lang/Integer;

    .line 232
    return-object p0
.end method
