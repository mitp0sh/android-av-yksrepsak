.class public Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
.super Ljava/lang/Object;
.source "HealthCheck.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private healthyThreshold:Ljava/lang/Integer;

.field private interval:Ljava/lang/Integer;

.field private target:Ljava/lang/String;

.field private timeout:Ljava/lang/Integer;

.field private unhealthyThreshold:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "interval"    # Ljava/lang/Integer;
    .param p3, "timeout"    # Ljava/lang/Integer;
    .param p4, "unhealthyThreshold"    # Ljava/lang/Integer;
    .param p5, "healthyThreshold"    # Ljava/lang/Integer;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->target:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->interval:Ljava/lang/Integer;

    .line 122
    iput-object p3, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->timeout:Ljava/lang/Integer;

    .line 123
    iput-object p4, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->unhealthyThreshold:Ljava/lang/Integer;

    .line 124
    iput-object p5, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->healthyThreshold:Ljava/lang/Integer;

    .line 125
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 501
    :cond_0
    :goto_0
    return v3

    .line 486
    :cond_1
    if-eqz p1, :cond_0

    .line 488
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 489
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    .line 491
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 501
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 491
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 493
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 495
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 497
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 499
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getHealthyThreshold()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->healthyThreshold:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterval()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->interval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->timeout:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUnhealthyThreshold()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->unhealthyThreshold:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 472
    const/16 v1, 0x1f

    .line 473
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 475
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 476
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 477
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 478
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 479
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 480
    return v0

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 477
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    .line 478
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    .line 479
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setHealthyThreshold(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "healthyThreshold"    # Ljava/lang/Integer;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->healthyThreshold:Ljava/lang/Integer;

    .line 426
    return-void
.end method

.method public setInterval(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "interval"    # Ljava/lang/Integer;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->interval:Ljava/lang/Integer;

    .line 273
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->target:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setTimeout(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "timeout"    # Ljava/lang/Integer;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->timeout:Ljava/lang/Integer;

    .line 326
    return-void
.end method

.method public setUnhealthyThreshold(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "unhealthyThreshold"    # Ljava/lang/Integer;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->unhealthyThreshold:Ljava/lang/Integer;

    .line 377
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnhealthyThreshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthyThreshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withHealthyThreshold(Ljava/lang/Integer;)Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
    .locals 0
    .param p1, "healthyThreshold"    # Ljava/lang/Integer;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->healthyThreshold:Ljava/lang/Integer;

    .line 445
    return-object p0
.end method

.method public withInterval(Ljava/lang/Integer;)Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
    .locals 0
    .param p1, "interval"    # Ljava/lang/Integer;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->interval:Ljava/lang/Integer;

    .line 292
    return-object p0
.end method

.method public withTarget(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->target:Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public withTimeout(Ljava/lang/Integer;)Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
    .locals 0
    .param p1, "timeout"    # Ljava/lang/Integer;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->timeout:Ljava/lang/Integer;

    .line 347
    return-object p0
.end method

.method public withUnhealthyThreshold(Ljava/lang/Integer;)Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
    .locals 0
    .param p1, "unhealthyThreshold"    # Ljava/lang/Integer;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->unhealthyThreshold:Ljava/lang/Integer;

    .line 396
    return-object p0
.end method
