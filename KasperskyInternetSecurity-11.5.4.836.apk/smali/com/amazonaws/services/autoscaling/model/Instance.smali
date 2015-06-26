.class public Lcom/amazonaws/services/autoscaling/model/Instance;
.super Ljava/lang/Object;
.source "Instance.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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

    .line 372
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 388
    :cond_0
    :goto_0
    return v3

    .line 373
    :cond_1
    if-eqz p1, :cond_0

    .line 375
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/Instance;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 376
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/Instance;

    .line 378
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/Instance;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 379
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLifecycleState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLifecycleState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLifecycleState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLifecycleState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLifecycleState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getHealthStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getHealthStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 388
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 378
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 380
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 382
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 384
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 386
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->healthStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->launchConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->lifecycleState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 359
    const/16 v1, 0x1f

    .line 360
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 362
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 363
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 364
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLifecycleState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 365
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getHealthStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 366
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 367
    return v0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLifecycleState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 365
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getHealthStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 366
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->availabilityZone:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setHealthStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "healthStatus"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->healthStatus:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->instanceId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->launchConfigurationName:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setLifecycleState(Lcom/amazonaws/services/autoscaling/model/LifecycleState;)V
    .locals 1
    .param p1, "lifecycleState"    # Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->lifecycleState:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setLifecycleState(Ljava/lang/String;)V
    .locals 0
    .param p1, "lifecycleState"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->lifecycleState:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLifecycleState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifecycleState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLifecycleState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getHealthStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Instance;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Instance;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->availabilityZone:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public withHealthStatus(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Instance;
    .locals 0
    .param p1, "healthStatus"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->healthStatus:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Instance;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->instanceId:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Instance;
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->launchConfigurationName:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public withLifecycleState(Lcom/amazonaws/services/autoscaling/model/LifecycleState;)Lcom/amazonaws/services/autoscaling/model/Instance;
    .locals 1
    .param p1, "lifecycleState"    # Lcom/amazonaws/services/autoscaling/model/LifecycleState;

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/LifecycleState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->lifecycleState:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public withLifecycleState(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Instance;
    .locals 0
    .param p1, "lifecycleState"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Instance;->lifecycleState:Ljava/lang/String;

    .line 206
    return-object p0
.end method
