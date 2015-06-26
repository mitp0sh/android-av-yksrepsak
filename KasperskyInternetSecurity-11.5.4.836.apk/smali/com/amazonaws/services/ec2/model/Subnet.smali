.class public Lcom/amazonaws/services/ec2/model/Subnet;
.super Ljava/lang/Object;
.source "Subnet.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private availableIpAddressCount:Ljava/lang/Integer;

.field private cidrBlock:Ljava/lang/String;

.field private defaultForAz:Ljava/lang/Boolean;

.field private mapPublicIpOnLaunch:Ljava/lang/Boolean;

.field private state:Ljava/lang/String;

.field private subnetId:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private vpcId:Ljava/lang/String;


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

    .line 488
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 512
    :cond_0
    :goto_0
    return v3

    .line 489
    :cond_1
    if-eqz p1, :cond_0

    .line 491
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/Subnet;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 492
    check-cast v0, Lcom/amazonaws/services/ec2/model/Subnet;

    .line 494
    .local v0, "other":Lcom/amazonaws/services/ec2/model/Subnet;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getVpcId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 499
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getVpcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getVpcId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getCidrBlock()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getCidrBlock()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getCidrBlock()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getCidrBlock()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getCidrBlock()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailableIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailableIpAddressCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 503
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailableIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailableIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailableIpAddressCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->isDefaultForAz()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isDefaultForAz()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->isDefaultForAz()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->isDefaultForAz()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isDefaultForAz()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->isMapPublicIpOnLaunch()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isMapPublicIpOnLaunch()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 509
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->isMapPublicIpOnLaunch()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->isMapPublicIpOnLaunch()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isMapPublicIpOnLaunch()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    move v3, v2

    .line 512
    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 494
    goto/16 :goto_1

    :cond_c
    move v4, v3

    goto/16 :goto_2

    :cond_d
    move v1, v3

    .line 496
    goto/16 :goto_3

    :cond_e
    move v4, v3

    goto/16 :goto_4

    :cond_f
    move v1, v3

    .line 498
    goto/16 :goto_5

    :cond_10
    move v4, v3

    goto/16 :goto_6

    :cond_11
    move v1, v3

    .line 500
    goto/16 :goto_7

    :cond_12
    move v4, v3

    goto/16 :goto_8

    :cond_13
    move v1, v3

    .line 502
    goto/16 :goto_9

    :cond_14
    move v4, v3

    goto/16 :goto_a

    :cond_15
    move v1, v3

    .line 504
    goto/16 :goto_b

    :cond_16
    move v4, v3

    goto/16 :goto_c

    :cond_17
    move v1, v3

    .line 506
    goto/16 :goto_d

    :cond_18
    move v4, v3

    goto/16 :goto_e

    :cond_19
    move v1, v3

    .line 508
    goto :goto_f

    :cond_1a
    move v4, v3

    goto :goto_10

    :cond_1b
    move v1, v3

    .line 510
    goto :goto_11

    :cond_1c
    move v4, v3

    goto :goto_12
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableIpAddressCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->availableIpAddressCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCidrBlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->cidrBlock:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultForAz()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->defaultForAz:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMapPublicIpOnLaunch()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->mapPublicIpOnLaunch:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->subnetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->tags:Ljava/util/List;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVpcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->vpcId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 471
    const/16 v1, 0x1f

    .line 472
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 474
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 475
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 476
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getVpcId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 477
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getCidrBlock()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 478
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailableIpAddressCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 479
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 480
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isDefaultForAz()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 481
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isMapPublicIpOnLaunch()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 482
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_8
    add-int v0, v2, v3

    .line 483
    return v0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 477
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getCidrBlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 478
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailableIpAddressCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    .line 479
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 480
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isDefaultForAz()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_6

    .line 481
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isMapPublicIpOnLaunch()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_7

    .line 482
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_8
.end method

.method public isDefaultForAz()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->defaultForAz:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMapPublicIpOnLaunch()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->mapPublicIpOnLaunch:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->availabilityZone:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setAvailableIpAddressCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "availableIpAddressCount"    # Ljava/lang/Integer;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->availableIpAddressCount:Ljava/lang/Integer;

    .line 233
    return-void
.end method

.method public setCidrBlock(Ljava/lang/String;)V
    .locals 0
    .param p1, "cidrBlock"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->cidrBlock:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setDefaultForAz(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "defaultForAz"    # Ljava/lang/Boolean;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->defaultForAz:Ljava/lang/Boolean;

    .line 305
    return-void
.end method

.method public setMapPublicIpOnLaunch(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mapPublicIpOnLaunch"    # Ljava/lang/Boolean;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->mapPublicIpOnLaunch:Ljava/lang/Boolean;

    .line 348
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->state:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->subnetId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->tags:Ljava/util/List;

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setVpcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->vpcId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VpcId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getCidrBlock()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CidrBlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getCidrBlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailableIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailableIpAddressCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailableIpAddressCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getAvailabilityZone()Ljava/lang/String;

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
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isDefaultForAz()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultForAz: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isDefaultForAz()Ljava/lang/Boolean;

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
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isMapPublicIpOnLaunch()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapPublicIpOnLaunch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->isMapPublicIpOnLaunch()Ljava/lang/Boolean;

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
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

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
    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->availabilityZone:Ljava/lang/String;

    .line 285
    return-object p0
.end method

.method public withAvailableIpAddressCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 0
    .param p1, "availableIpAddressCount"    # Ljava/lang/Integer;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->availableIpAddressCount:Ljava/lang/Integer;

    .line 251
    return-object p0
.end method

.method public withCidrBlock(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 0
    .param p1, "cidrBlock"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->cidrBlock:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public withDefaultForAz(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 0
    .param p1, "defaultForAz"    # Ljava/lang/Boolean;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->defaultForAz:Ljava/lang/Boolean;

    .line 319
    return-object p0
.end method

.method public withMapPublicIpOnLaunch(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 0
    .param p1, "mapPublicIpOnLaunch"    # Ljava/lang/Boolean;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->mapPublicIpOnLaunch:Ljava/lang/Boolean;

    .line 362
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->state:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->subnetId:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Subnet;"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->tags:Ljava/util/List;

    .line 441
    :goto_0
    return-object p0

    .line 436
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 438
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Subnet;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Subnet;->setTags(Ljava/util/Collection;)V

    .line 416
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/Tag;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 417
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Subnet;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withVpcId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Subnet;
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Subnet;->vpcId:Ljava/lang/String;

    .line 171
    return-object p0
.end method
