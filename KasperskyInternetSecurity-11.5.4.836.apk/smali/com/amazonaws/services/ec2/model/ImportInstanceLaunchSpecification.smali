.class public Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
.super Ljava/lang/Object;
.source "ImportInstanceLaunchSpecification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private additionalInfo:Ljava/lang/String;

.field private architecture:Ljava/lang/String;

.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation
.end field

.field private disableApiTermination:Ljava/lang/Boolean;

.field private instanceInitiatedShutdownBehavior:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private monitoring:Ljava/lang/Boolean;

.field private placement:Lcom/amazonaws/services/ec2/model/Placement;

.field private privateIpAddress:Ljava/lang/String;

.field private securityGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subnetId:Ljava/lang/String;

.field private userData:Ljava/lang/String;


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

    .line 660
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 690
    :cond_0
    :goto_0
    return v3

    .line 661
    :cond_1
    if-eqz p1, :cond_0

    .line 663
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 664
    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    .line 666
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 667
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 669
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 675
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 677
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/Placement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 679
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 681
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 683
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_20

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_21

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 685
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_23

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 687
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 689
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    move v3, v2

    .line 690
    goto/16 :goto_0

    :cond_e
    move v1, v3

    .line 666
    goto/16 :goto_1

    :cond_f
    move v4, v3

    goto/16 :goto_2

    :cond_10
    move v1, v3

    .line 668
    goto/16 :goto_3

    :cond_11
    move v4, v3

    goto/16 :goto_4

    :cond_12
    move v1, v3

    .line 670
    goto/16 :goto_5

    :cond_13
    move v4, v3

    goto/16 :goto_6

    :cond_14
    move v1, v3

    .line 672
    goto/16 :goto_7

    :cond_15
    move v4, v3

    goto/16 :goto_8

    :cond_16
    move v1, v3

    .line 674
    goto/16 :goto_9

    :cond_17
    move v4, v3

    goto/16 :goto_a

    :cond_18
    move v1, v3

    .line 676
    goto/16 :goto_b

    :cond_19
    move v4, v3

    goto/16 :goto_c

    :cond_1a
    move v1, v3

    .line 678
    goto/16 :goto_d

    :cond_1b
    move v4, v3

    goto/16 :goto_e

    :cond_1c
    move v1, v3

    .line 680
    goto/16 :goto_f

    :cond_1d
    move v4, v3

    goto/16 :goto_10

    :cond_1e
    move v1, v3

    .line 682
    goto/16 :goto_11

    :cond_1f
    move v4, v3

    goto/16 :goto_12

    :cond_20
    move v1, v3

    .line 684
    goto/16 :goto_13

    :cond_21
    move v4, v3

    goto/16 :goto_14

    :cond_22
    move v1, v3

    .line 686
    goto/16 :goto_15

    :cond_23
    move v4, v3

    goto :goto_16

    :cond_24
    move v1, v3

    .line 688
    goto :goto_17

    :cond_25
    move v4, v3

    goto :goto_18
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInstanceInitiatedShutdownBehavior()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitoring()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->monitoring:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPlacement()Lcom/amazonaws/services/ec2/model/Placement;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityGroups()Ljava/util/List;
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
    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->subnetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 640
    const/16 v1, 0x1f

    .line 641
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 643
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 644
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 645
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 646
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 647
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 648
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 649
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 650
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 651
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 652
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 653
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 654
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    :goto_b
    add-int v0, v2, v3

    .line 655
    return v0

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 645
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 646
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 647
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 648
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Placement;->hashCode()I

    move-result v2

    goto :goto_5

    .line 649
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    .line 650
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_7

    .line 651
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    .line 652
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_9

    .line 653
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    .line 654
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_b
.end method

.method public isDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMonitoring()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->monitoring:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAdditionalInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->additionalInfo:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->architecture:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    .line 372
    :goto_0
    return-void

    .line 369
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDisableApiTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "disableApiTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->disableApiTermination:Ljava/lang/Boolean;

    .line 508
    return-void
.end method

.method public setInstanceInitiatedShutdownBehavior(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceInitiatedShutdownBehavior"    # Ljava/lang/String;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setMonitoring(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "monitoring"    # Ljava/lang/Boolean;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->monitoring:Ljava/lang/Boolean;

    .line 430
    return-void
.end method

.method public setPlacement(Lcom/amazonaws/services/ec2/model/Placement;)V
    .locals 0
    .param p1, "placement"    # Lcom/amazonaws/services/ec2/model/Placement;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    .line 325
    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->privateIpAddress:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setSecurityGroups(Ljava/util/Collection;)V
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
    .line 104
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->subnetId:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->userData:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdditionalInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableApiTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceInitiatedShutdownBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_b
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAdditionalInfo(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->additionalInfo:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public withArchitecture(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->architecture:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    .line 411
    :goto_0
    return-object p0

    .line 406
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 386
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 387
    .local v3, "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withDisableApiTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "disableApiTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->disableApiTermination:Ljava/lang/Boolean;

    .line 522
    return-object p0
.end method

.method public withInstanceInitiatedShutdownBehavior(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "instanceInitiatedShutdownBehavior"    # Ljava/lang/String;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    .line 572
    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public withMonitoring(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "monitoring"    # Ljava/lang/Boolean;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->monitoring:Ljava/lang/Boolean;

    .line 444
    return-object p0
.end method

.method public withPlacement(Lcom/amazonaws/services/ec2/model/Placement;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "placement"    # Lcom/amazonaws/services/ec2/model/Placement;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    .line 341
    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->privateIpAddress:Ljava/lang/String;

    .line 606
    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    .line 151
    :goto_0
    return-object p0

    .line 146
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 6
    .param p1, "securityGroups"    # [Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->setSecurityGroups(Ljava/util/Collection;)V

    .line 126
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

    .line 127
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->subnetId:Ljava/lang/String;

    .line 487
    return-object p0
.end method

.method public withUserData(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->userData:Ljava/lang/String;

    .line 218
    return-object p0
.end method
