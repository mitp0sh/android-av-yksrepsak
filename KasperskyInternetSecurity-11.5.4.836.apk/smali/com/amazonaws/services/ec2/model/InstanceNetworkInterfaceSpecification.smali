.class public Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
.super Ljava/lang/Object;
.source "InstanceNetworkInterfaceSpecification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deleteOnTermination:Ljava/lang/Boolean;

.field private description:Ljava/lang/String;

.field private deviceIndex:Ljava/lang/Integer;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private networkInterfaceId:Ljava/lang/String;

.field private privateIpAddress:Ljava/lang/String;

.field private privateIpAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private secondaryPrivateIpAddressCount:Ljava/lang/Integer;

.field private subnetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 476
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 500
    :cond_0
    :goto_0
    return v3

    .line 477
    :cond_1
    if-eqz p1, :cond_0

    .line 479
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 480
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;

    .line 482
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 499
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    move v3, v2

    .line 500
    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 482
    goto/16 :goto_1

    :cond_c
    move v4, v3

    goto/16 :goto_2

    :cond_d
    move v1, v3

    .line 484
    goto/16 :goto_3

    :cond_e
    move v4, v3

    goto/16 :goto_4

    :cond_f
    move v1, v3

    .line 486
    goto/16 :goto_5

    :cond_10
    move v4, v3

    goto/16 :goto_6

    :cond_11
    move v1, v3

    .line 488
    goto/16 :goto_7

    :cond_12
    move v4, v3

    goto/16 :goto_8

    :cond_13
    move v1, v3

    .line 490
    goto/16 :goto_9

    :cond_14
    move v4, v3

    goto/16 :goto_a

    :cond_15
    move v1, v3

    .line 492
    goto/16 :goto_b

    :cond_16
    move v4, v3

    goto/16 :goto_c

    :cond_17
    move v1, v3

    .line 494
    goto/16 :goto_d

    :cond_18
    move v4, v3

    goto/16 :goto_e

    :cond_19
    move v1, v3

    .line 496
    goto :goto_f

    :cond_1a
    move v4, v3

    goto :goto_10

    :cond_1b
    move v1, v3

    .line 498
    goto :goto_11

    :cond_1c
    move v4, v3

    goto :goto_12
.end method

.method public getDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deviceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
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
    .line 218
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkInterfaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->networkInterfaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->secondaryPrivateIpAddressCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->subnetId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 459
    const/16 v1, 0x1f

    .line 460
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 462
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 463
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 464
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 465
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 466
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 467
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 468
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 469
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 470
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_8
    add-int v0, v2, v3

    .line 471
    return v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 464
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 465
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 466
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 467
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    .line 468
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_6

    .line 469
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    .line 470
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_8
.end method

.method public isDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDeleteOnTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    .line 296
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->description:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setDeviceIndex(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "deviceIndex"    # Ljava/lang/Integer;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deviceIndex:Ljava/lang/Integer;

    .line 91
    return-void
.end method

.method public setGroups(Ljava/util/Collection;)V
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
    .line 230
    .local p1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v0, "groupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public setNetworkInterfaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkInterfaceId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->networkInterfaceId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddress:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setPrivateIpAddresses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "privateIpAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;>;"
    if-nez p1, :cond_0

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    .line 350
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    .local v0, "privateIpAddressesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    goto :goto_0
.end method

.method public setSecondaryPrivateIpAddressCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "secondaryPrivateIpAddressCount"    # Ljava/lang/Integer;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->secondaryPrivateIpAddressCount:Ljava/lang/Integer;

    .line 412
    return-void
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->subnetId:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Groups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteOnTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecondaryPrivateIpAddressCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDeleteOnTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    .line 310
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->description:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public withDeviceIndex(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0
    .param p1, "deviceIndex"    # Ljava/lang/Integer;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deviceIndex:Ljava/lang/Integer;

    .line 105
    return-object p0
.end method

.method public withGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    .line 277
    :goto_0
    return-object p0

    .line 272
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v0, "groupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withGroups([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 6
    .param p1, "groups"    # [Ljava/lang/String;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->setGroups(Ljava/util/Collection;)V

    .line 252
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

    .line 253
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withNetworkInterfaceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0
    .param p1, "networkInterfaceId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->networkInterfaceId:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddress:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public withPrivateIpAddresses(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "privateIpAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;>;"
    if-nez p1, :cond_0

    .line 382
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    .line 389
    :goto_0
    return-object p0

    .line 384
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .local v0, "privateIpAddressesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPrivateIpAddresses([Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 6
    .param p1, "privateIpAddresses"    # [Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->setPrivateIpAddresses(Ljava/util/Collection;)V

    .line 364
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 365
    .local v3, "value":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    :cond_1
    return-object p0
.end method

.method public withSecondaryPrivateIpAddressCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0
    .param p1, "secondaryPrivateIpAddressCount"    # Ljava/lang/Integer;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->secondaryPrivateIpAddressCount:Ljava/lang/Integer;

    .line 428
    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->subnetId:Ljava/lang/String;

    .line 139
    return-object p0
.end method
