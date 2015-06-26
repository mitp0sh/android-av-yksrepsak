.class public Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
.super Ljava/lang/Object;
.source "AutoScalingInstanceDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private availabilityZone:Ljava/lang/String;

.field private healthStatus:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private launchConfigurationName:Ljava/lang/String;

.field private lifecycleState:Ljava/lang/String;


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

    .line 407
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 425
    :cond_0
    :goto_0
    return v3

    .line 408
    :cond_1
    if-eqz p1, :cond_0

    .line 410
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 411
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;

    .line 413
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 425
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 413
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 415
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 417
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 419
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 421
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 423
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->healthStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->launchConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->lifecycleState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 393
    const/16 v1, 0x1f

    .line 394
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 396
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 397
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 398
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 399
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 400
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 401
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 402
    return v0

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 398
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 400
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 401
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->autoScalingGroupName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->availabilityZone:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setHealthStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "healthStatus"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->healthStatus:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->instanceId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->launchConfigurationName:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setLifecycleState(Ljava/lang/String;)V
    .locals 0
    .param p1, "lifecycleState"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->lifecycleState:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifecycleState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->autoScalingGroupName:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->availabilityZone:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public withHealthStatus(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0
    .param p1, "healthStatus"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->healthStatus:Ljava/lang/String;

    .line 319
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->instanceId:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->launchConfigurationName:Ljava/lang/String;

    .line 365
    return-object p0
.end method

.method public withLifecycleState(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0
    .param p1, "lifecycleState"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->lifecycleState:Ljava/lang/String;

    .line 261
    return-object p0
.end method
