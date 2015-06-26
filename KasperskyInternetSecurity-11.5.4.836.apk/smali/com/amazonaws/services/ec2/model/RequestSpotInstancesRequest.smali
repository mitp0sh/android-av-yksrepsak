.class public Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "RequestSpotInstancesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZoneGroup:Ljava/lang/String;

.field private instanceCount:Ljava/lang/Integer;

.field private launchGroup:Ljava/lang/String;

.field private launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

.field private spotPrice:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private validFrom:Ljava/util/Date;

.field private validUntil:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotPrice"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->spotPrice:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 547
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 569
    :cond_0
    :goto_0
    return v3

    .line 548
    :cond_1
    if-eqz p1, :cond_0

    .line 550
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 551
    check-cast v0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;

    .line 553
    .local v0, "other":Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 560
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    move v3, v2

    .line 569
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 553
    goto/16 :goto_1

    :cond_b
    move v4, v3

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 555
    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_4

    :cond_e
    move v1, v3

    .line 557
    goto/16 :goto_5

    :cond_f
    move v4, v3

    goto/16 :goto_6

    :cond_10
    move v1, v3

    .line 559
    goto/16 :goto_7

    :cond_11
    move v4, v3

    goto/16 :goto_8

    :cond_12
    move v1, v3

    .line 561
    goto/16 :goto_9

    :cond_13
    move v4, v3

    goto/16 :goto_a

    :cond_14
    move v1, v3

    .line 563
    goto/16 :goto_b

    :cond_15
    move v4, v3

    goto/16 :goto_c

    :cond_16
    move v1, v3

    .line 565
    goto :goto_d

    :cond_17
    move v4, v3

    goto :goto_e

    :cond_18
    move v1, v3

    .line 567
    goto :goto_f

    :cond_19
    move v4, v3

    goto :goto_10
.end method

.method public getAvailabilityZoneGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->availabilityZoneGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->instanceCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLaunchGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    return-object v0
.end method

.method public getSpotPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->spotPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValidFrom()Ljava/util/Date;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getValidUntil()Ljava/util/Date;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validUntil:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 531
    const/16 v1, 0x1f

    .line 532
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 534
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 535
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 536
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 537
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 538
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 539
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 540
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 541
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_7
    add-int v0, v2, v3

    .line 542
    return v0

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 537
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 538
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_4

    .line 539
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 540
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 541
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public setAvailabilityZoneGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZoneGroup"    # Ljava/lang/String;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->availabilityZoneGroup:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public setInstanceCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "instanceCount"    # Ljava/lang/Integer;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->instanceCount:Ljava/lang/Integer;

    .line 168
    return-void
.end method

.method public setLaunchGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchGroup"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchGroup:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setLaunchSpecification(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)V
    .locals 0
    .param p1, "launchSpecification"    # Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .line 487
    return-void
.end method

.method public setSpotPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotPrice"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->spotPrice:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setType(Lcom/amazonaws/services/ec2/model/SpotInstanceType;)V
    .locals 1
    .param p1, "type"    # Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setValidFrom(Ljava/util/Date;)V
    .locals 0
    .param p1, "validFrom"    # Ljava/util/Date;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validFrom:Ljava/util/Date;

    .line 305
    return-void
.end method

.method public setValidUntil(Ljava/util/Date;)V
    .locals 0
    .param p1, "validUntil"    # Ljava/util/Date;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validUntil:Ljava/util/Date;

    .line 361
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidFrom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidUntil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZoneGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchSpecification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZoneGroup(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0
    .param p1, "availabilityZoneGroup"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->availabilityZoneGroup:Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method public withInstanceCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0
    .param p1, "instanceCount"    # Ljava/lang/Integer;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->instanceCount:Ljava/lang/Integer;

    .line 182
    return-object p0
.end method

.method public withLaunchGroup(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0
    .param p1, "launchGroup"    # Ljava/lang/String;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchGroup:Ljava/lang/String;

    .line 421
    return-object p0
.end method

.method public withLaunchSpecification(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0
    .param p1, "launchSpecification"    # Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .line 501
    return-object p0
.end method

.method public withSpotPrice(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0
    .param p1, "spotPrice"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->spotPrice:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public withType(Lcom/amazonaws/services/ec2/model/SpotInstanceType;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 1
    .param p1, "type"    # Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public withType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public withValidFrom(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0
    .param p1, "validFrom"    # Ljava/util/Date;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validFrom:Ljava/util/Date;

    .line 329
    return-object p0
.end method

.method public withValidUntil(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0
    .param p1, "validUntil"    # Ljava/util/Date;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validUntil:Ljava/util/Date;

    .line 381
    return-object p0
.end method
