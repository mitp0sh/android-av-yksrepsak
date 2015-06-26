.class public Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
.super Ljava/lang/Object;
.source "InstanceNetworkInterface.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private association:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

.field private attachment:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

.field private description:Ljava/lang/String;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private networkInterfaceId:Ljava/lang/String;

.field private ownerId:Ljava/lang/String;

.field private privateDnsName:Ljava/lang/String;

.field private privateIpAddress:Ljava/lang/String;

.field private privateIpAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;",
            ">;"
        }
    .end annotation
.end field

.field private sourceDestCheck:Ljava/lang/Boolean;

.field private status:Ljava/lang/String;

.field private subnetId:Ljava/lang/String;

.field private vpcId:Ljava/lang/String;


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

    .line 622
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 654
    :cond_0
    :goto_0
    return v3

    .line 623
    :cond_1
    if-eqz p1, :cond_0

    .line 625
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 626
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;

    .line 628
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getVpcId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 633
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getVpcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getVpcId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 637
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 639
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_e
    move v3, v2

    .line 654
    goto/16 :goto_0

    :cond_f
    move v1, v3

    .line 628
    goto/16 :goto_1

    :cond_10
    move v4, v3

    goto/16 :goto_2

    :cond_11
    move v1, v3

    .line 630
    goto/16 :goto_3

    :cond_12
    move v4, v3

    goto/16 :goto_4

    :cond_13
    move v1, v3

    .line 632
    goto/16 :goto_5

    :cond_14
    move v4, v3

    goto/16 :goto_6

    :cond_15
    move v1, v3

    .line 634
    goto/16 :goto_7

    :cond_16
    move v4, v3

    goto/16 :goto_8

    :cond_17
    move v1, v3

    .line 636
    goto/16 :goto_9

    :cond_18
    move v4, v3

    goto/16 :goto_a

    :cond_19
    move v1, v3

    .line 638
    goto/16 :goto_b

    :cond_1a
    move v4, v3

    goto/16 :goto_c

    :cond_1b
    move v1, v3

    .line 640
    goto/16 :goto_d

    :cond_1c
    move v4, v3

    goto/16 :goto_e

    :cond_1d
    move v1, v3

    .line 642
    goto/16 :goto_f

    :cond_1e
    move v4, v3

    goto/16 :goto_10

    :cond_1f
    move v1, v3

    .line 644
    goto/16 :goto_11

    :cond_20
    move v4, v3

    goto/16 :goto_12

    :cond_21
    move v1, v3

    .line 646
    goto/16 :goto_13

    :cond_22
    move v4, v3

    goto/16 :goto_14

    :cond_23
    move v1, v3

    .line 648
    goto/16 :goto_15

    :cond_24
    move v4, v3

    goto/16 :goto_16

    :cond_25
    move v1, v3

    .line 650
    goto/16 :goto_17

    :cond_26
    move v4, v3

    goto/16 :goto_18

    :cond_27
    move v1, v3

    .line 652
    goto :goto_19

    :cond_28
    move v4, v3

    goto :goto_1a
.end method

.method public getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->association:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    return-object v0
.end method

.method public getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->attachment:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->groups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->groups:Ljava/util/List;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkInterfaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->networkInterfaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateDnsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateDnsName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddresses:Ljava/util/List;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getSourceDestCheck()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->sourceDestCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->subnetId:Ljava/lang/String;

    return-object v0
.end method

.method public getVpcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->vpcId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 601
    const/16 v1, 0x1f

    .line 602
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 604
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 605
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 606
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getVpcId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 607
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 608
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 609
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 610
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 611
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 612
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 613
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 614
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 615
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 616
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_c

    :goto_c
    add-int v0, v2, v3

    .line 617
    return v0

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 606
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 607
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 608
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 609
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 610
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 611
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 612
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 613
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 614
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 615
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 616
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_c
.end method

.method public isSourceDestCheck()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->sourceDestCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAssociation(Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;)V
    .locals 0
    .param p1, "association"    # Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->association:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    .line 483
    return-void
.end method

.method public setAttachment(Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;)V
    .locals 0
    .param p1, "attachment"    # Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->attachment:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    .line 449
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->description:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setGroups(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    if-nez p1, :cond_0

    .line 384
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->groups:Ljava/util/List;

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .local v0, "groupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public setNetworkInterfaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkInterfaceId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->networkInterfaceId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->ownerId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setPrivateDnsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateDnsName"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateDnsName:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddress:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setPrivateIpAddresses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "privateIpAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;>;"
    if-nez p1, :cond_0

    .line 521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddresses:Ljava/util/List;

    .line 528
    :goto_0
    return-void

    .line 525
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    .local v0, "privateIpAddressesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddresses:Ljava/util/List;

    goto :goto_0
.end method

.method public setSourceDestCheck(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sourceDestCheck"    # Ljava/lang/Boolean;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->sourceDestCheck:Ljava/lang/Boolean;

    .line 337
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->status:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->subnetId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setVpcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->vpcId:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VpcId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateDnsName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceDestCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Groups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attachment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAttachment()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Association: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_c
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAssociation(Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "association"    # Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->association:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    .line 497
    return-object p0
.end method

.method public withAttachment(Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "attachment"    # Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->attachment:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    .line 463
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->description:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public withGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    if-nez p1, :cond_0

    .line 423
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->groups:Ljava/util/List;

    .line 430
    :goto_0
    return-object p0

    .line 425
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 426
    .local v0, "groupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withGroups([Lcom/amazonaws/services/ec2/model/GroupIdentifier;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 6
    .param p1, "groups"    # [Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->setGroups(Ljava/util/Collection;)V

    .line 405
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 406
    .local v3, "value":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    :cond_1
    return-object p0
.end method

.method public withNetworkInterfaceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "networkInterfaceId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->networkInterfaceId:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public withOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->ownerId:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public withPrivateDnsName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "privateDnsName"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateDnsName:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddress:Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public withPrivateIpAddresses(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, "privateIpAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;>;"
    if-nez p1, :cond_0

    .line 560
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddresses:Ljava/util/List;

    .line 567
    :goto_0
    return-object p0

    .line 562
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    .local v0, "privateIpAddressesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->privateIpAddresses:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPrivateIpAddresses([Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 6
    .param p1, "privateIpAddresses"    # [Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->setPrivateIpAddresses(Ljava/util/Collection;)V

    .line 542
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 543
    .local v3, "value":Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;
    :cond_1
    return-object p0
.end method

.method public withSourceDestCheck(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "sourceDestCheck"    # Ljava/lang/Boolean;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->sourceDestCheck:Ljava/lang/Boolean;

    .line 351
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->status:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->subnetId:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public withVpcId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;->vpcId:Ljava/lang/String;

    .line 147
    return-object p0
.end method
