.class public Lcom/amazonaws/services/ec2/model/Instance;
.super Ljava/lang/Object;
.source "Instance.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amiLaunchIndex:Ljava/lang/Integer;

.field private architecture:Ljava/lang/String;

.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;"
        }
    .end annotation
.end field

.field private clientToken:Ljava/lang/String;

.field private ebsOptimized:Ljava/lang/Boolean;

.field private hypervisor:Ljava/lang/String;

.field private iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

.field private imageId:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private instanceLifecycle:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private launchTime:Ljava/util/Date;

.field private license:Lcom/amazonaws/services/ec2/model/InstanceLicense;

.field private monitoring:Lcom/amazonaws/services/ec2/model/Monitoring;

.field private networkInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private placement:Lcom/amazonaws/services/ec2/model/Placement;

.field private platform:Ljava/lang/String;

.field private privateDnsName:Ljava/lang/String;

.field private privateIpAddress:Ljava/lang/String;

.field private productCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation
.end field

.field private publicDnsName:Ljava/lang/String;

.field private publicIpAddress:Ljava/lang/String;

.field private ramdiskId:Ljava/lang/String;

.field private rootDeviceName:Ljava/lang/String;

.field private rootDeviceType:Ljava/lang/String;

.field private securityGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private sourceDestCheck:Ljava/lang/Boolean;

.field private spotInstanceRequestId:Ljava/lang/String;

.field private state:Lcom/amazonaws/services/ec2/model/InstanceState;

.field private stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

.field private stateTransitionReason:Ljava/lang/String;

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

.field private virtualizationType:Ljava/lang/String;

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

    .line 1990
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 2070
    :cond_0
    :goto_0
    return v3

    .line 1991
    :cond_1
    if-eqz p1, :cond_0

    .line 1993
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/Instance;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1994
    check-cast v0, Lcom/amazonaws/services/ec2/model/Instance;

    .line 1996
    .local v0, "other":Lcom/amazonaws/services/ec2/model/Instance;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1997
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1998
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1999
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2000
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-nez v1, :cond_2b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    if-nez v4, :cond_2c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2001
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2002
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2003
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2004
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2005
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2006
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_32

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2007
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2008
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_34

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2009
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2010
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_35

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_36

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2011
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2012
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_37

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_38

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2013
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2014
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_39

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3a

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2015
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2016
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_3b

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_3c

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2017
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2018
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-nez v1, :cond_3d

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v4

    if-nez v4, :cond_3e

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2019
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/Placement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2020
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_40

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2021
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2022
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_41

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_42

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2023
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2024
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_43

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_44

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2025
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2026
    :cond_10
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v1

    if-nez v1, :cond_45

    move v1, v2

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v4

    if-nez v4, :cond_46

    move v4, v2

    :goto_20
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2027
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/Monitoring;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    :cond_11
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_47

    move v1, v2

    :goto_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_48

    move v4, v2

    :goto_22
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2029
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2030
    :cond_12
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_49

    move v1, v2

    :goto_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4a

    move v4, v2

    :goto_24
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2031
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2032
    :cond_13
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4b

    move v1, v2

    :goto_25
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4c

    move v4, v2

    :goto_26
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2033
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2034
    :cond_14
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4d

    move v1, v2

    :goto_27
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4e

    move v4, v2

    :goto_28
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2035
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2036
    :cond_15
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    if-nez v1, :cond_4f

    move v1, v2

    :goto_29
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v4

    if-nez v4, :cond_50

    move v4, v2

    :goto_2a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2037
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/StateReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2038
    :cond_16
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_51

    move v1, v2

    :goto_2b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_52

    move v4, v2

    :goto_2c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2039
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2040
    :cond_17
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_53

    move v1, v2

    :goto_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_54

    move v4, v2

    :goto_2e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2041
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2042
    :cond_18
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_55

    move v1, v2

    :goto_2f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_56

    move v4, v2

    :goto_30
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2043
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2044
    :cond_19
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_57

    move v1, v2

    :goto_31
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_58

    move v4, v2

    :goto_32
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2045
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2046
    :cond_1a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_59

    move v1, v2

    :goto_33
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5a

    move v4, v2

    :goto_34
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2047
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2048
    :cond_1b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5b

    move v1, v2

    :goto_35
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5c

    move v4, v2

    :goto_36
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2049
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2050
    :cond_1c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5d

    move v1, v2

    :goto_37
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5e

    move v4, v2

    :goto_38
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2051
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2052
    :cond_1d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v1

    if-nez v1, :cond_5f

    move v1, v2

    :goto_39
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v4

    if-nez v4, :cond_60

    move v4, v2

    :goto_3a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2053
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceLicense;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2054
    :cond_1e
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_61

    move v1, v2

    :goto_3b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_62

    move v4, v2

    :goto_3c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2055
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2056
    :cond_1f
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_63

    move v1, v2

    :goto_3d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_64

    move v4, v2

    :goto_3e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2057
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2058
    :cond_20
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_65

    move v1, v2

    :goto_3f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_66

    move v4, v2

    :goto_40
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2059
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2060
    :cond_21
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_67

    move v1, v2

    :goto_41
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_68

    move v4, v2

    :goto_42
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2061
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2062
    :cond_22
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_69

    move v1, v2

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6a

    move v4, v2

    :goto_44
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2063
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2064
    :cond_23
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6b

    move v1, v2

    :goto_45
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6c

    move v4, v2

    :goto_46
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2065
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2066
    :cond_24
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v1

    if-nez v1, :cond_6d

    move v1, v2

    :goto_47
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v4

    if-nez v4, :cond_6e

    move v4, v2

    :goto_48
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2067
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/IamInstanceProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2068
    :cond_25
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_6f

    move v1, v2

    :goto_49
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_70

    move v4, v2

    :goto_4a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2069
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_26
    move v3, v2

    .line 2070
    goto/16 :goto_0

    :cond_27
    move v1, v3

    .line 1996
    goto/16 :goto_1

    :cond_28
    move v4, v3

    goto/16 :goto_2

    :cond_29
    move v1, v3

    .line 1998
    goto/16 :goto_3

    :cond_2a
    move v4, v3

    goto/16 :goto_4

    :cond_2b
    move v1, v3

    .line 2000
    goto/16 :goto_5

    :cond_2c
    move v4, v3

    goto/16 :goto_6

    :cond_2d
    move v1, v3

    .line 2002
    goto/16 :goto_7

    :cond_2e
    move v4, v3

    goto/16 :goto_8

    :cond_2f
    move v1, v3

    .line 2004
    goto/16 :goto_9

    :cond_30
    move v4, v3

    goto/16 :goto_a

    :cond_31
    move v1, v3

    .line 2006
    goto/16 :goto_b

    :cond_32
    move v4, v3

    goto/16 :goto_c

    :cond_33
    move v1, v3

    .line 2008
    goto/16 :goto_d

    :cond_34
    move v4, v3

    goto/16 :goto_e

    :cond_35
    move v1, v3

    .line 2010
    goto/16 :goto_f

    :cond_36
    move v4, v3

    goto/16 :goto_10

    :cond_37
    move v1, v3

    .line 2012
    goto/16 :goto_11

    :cond_38
    move v4, v3

    goto/16 :goto_12

    :cond_39
    move v1, v3

    .line 2014
    goto/16 :goto_13

    :cond_3a
    move v4, v3

    goto/16 :goto_14

    :cond_3b
    move v1, v3

    .line 2016
    goto/16 :goto_15

    :cond_3c
    move v4, v3

    goto/16 :goto_16

    :cond_3d
    move v1, v3

    .line 2018
    goto/16 :goto_17

    :cond_3e
    move v4, v3

    goto/16 :goto_18

    :cond_3f
    move v1, v3

    .line 2020
    goto/16 :goto_19

    :cond_40
    move v4, v3

    goto/16 :goto_1a

    :cond_41
    move v1, v3

    .line 2022
    goto/16 :goto_1b

    :cond_42
    move v4, v3

    goto/16 :goto_1c

    :cond_43
    move v1, v3

    .line 2024
    goto/16 :goto_1d

    :cond_44
    move v4, v3

    goto/16 :goto_1e

    :cond_45
    move v1, v3

    .line 2026
    goto/16 :goto_1f

    :cond_46
    move v4, v3

    goto/16 :goto_20

    :cond_47
    move v1, v3

    .line 2028
    goto/16 :goto_21

    :cond_48
    move v4, v3

    goto/16 :goto_22

    :cond_49
    move v1, v3

    .line 2030
    goto/16 :goto_23

    :cond_4a
    move v4, v3

    goto/16 :goto_24

    :cond_4b
    move v1, v3

    .line 2032
    goto/16 :goto_25

    :cond_4c
    move v4, v3

    goto/16 :goto_26

    :cond_4d
    move v1, v3

    .line 2034
    goto/16 :goto_27

    :cond_4e
    move v4, v3

    goto/16 :goto_28

    :cond_4f
    move v1, v3

    .line 2036
    goto/16 :goto_29

    :cond_50
    move v4, v3

    goto/16 :goto_2a

    :cond_51
    move v1, v3

    .line 2038
    goto/16 :goto_2b

    :cond_52
    move v4, v3

    goto/16 :goto_2c

    :cond_53
    move v1, v3

    .line 2040
    goto/16 :goto_2d

    :cond_54
    move v4, v3

    goto/16 :goto_2e

    :cond_55
    move v1, v3

    .line 2042
    goto/16 :goto_2f

    :cond_56
    move v4, v3

    goto/16 :goto_30

    :cond_57
    move v1, v3

    .line 2044
    goto/16 :goto_31

    :cond_58
    move v4, v3

    goto/16 :goto_32

    :cond_59
    move v1, v3

    .line 2046
    goto/16 :goto_33

    :cond_5a
    move v4, v3

    goto/16 :goto_34

    :cond_5b
    move v1, v3

    .line 2048
    goto/16 :goto_35

    :cond_5c
    move v4, v3

    goto/16 :goto_36

    :cond_5d
    move v1, v3

    .line 2050
    goto/16 :goto_37

    :cond_5e
    move v4, v3

    goto/16 :goto_38

    :cond_5f
    move v1, v3

    .line 2052
    goto/16 :goto_39

    :cond_60
    move v4, v3

    goto/16 :goto_3a

    :cond_61
    move v1, v3

    .line 2054
    goto/16 :goto_3b

    :cond_62
    move v4, v3

    goto/16 :goto_3c

    :cond_63
    move v1, v3

    .line 2056
    goto/16 :goto_3d

    :cond_64
    move v4, v3

    goto/16 :goto_3e

    :cond_65
    move v1, v3

    .line 2058
    goto/16 :goto_3f

    :cond_66
    move v4, v3

    goto/16 :goto_40

    :cond_67
    move v1, v3

    .line 2060
    goto/16 :goto_41

    :cond_68
    move v4, v3

    goto/16 :goto_42

    :cond_69
    move v1, v3

    .line 2062
    goto/16 :goto_43

    :cond_6a
    move v4, v3

    goto/16 :goto_44

    :cond_6b
    move v1, v3

    .line 2064
    goto/16 :goto_45

    :cond_6c
    move v4, v3

    goto/16 :goto_46

    :cond_6d
    move v1, v3

    .line 2066
    goto/16 :goto_47

    :cond_6e
    move v4, v3

    goto/16 :goto_48

    :cond_6f
    move v1, v3

    .line 2068
    goto/16 :goto_49

    :cond_70
    move v4, v3

    goto/16 :goto_4a
.end method

.method public getAmiLaunchIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->amiLaunchIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHypervisor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    return-object v0
.end method

.method public getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceLifecycle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceLifecycle:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->launchTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->license:Lcom/amazonaws/services/ec2/model/InstanceLicense;

    return-object v0
.end method

.method public getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->monitoring:Lcom/amazonaws/services/ec2/model/Monitoring;

    return-object v0
.end method

.method public getNetworkInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    return-object v0
.end method

.method public getPlacement()Lcom/amazonaws/services/ec2/model/Placement;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateDnsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateDnsName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    return-object v0
.end method

.method public getPublicDnsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicDnsName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityGroups()Ljava/util/List;
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
    .line 1556
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSourceDestCheck()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->sourceDestCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSpotInstanceRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->spotInstanceRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/amazonaws/services/ec2/model/InstanceState;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->state:Lcom/amazonaws/services/ec2/model/InstanceState;

    return-object v0
.end method

.method public getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    return-object v0
.end method

.method public getStateTransitionReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateTransitionReason:Ljava/lang/String;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->subnetId:Ljava/lang/String;

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
    .line 1487
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVirtualizationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    return-object v0
.end method

.method public getVpcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->vpcId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1945
    const/16 v1, 0x1f

    .line 1946
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 1948
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 1949
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1950
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1951
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1952
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1953
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1954
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1955
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 1956
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 1957
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 1958
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 1959
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 1960
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 1961
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 1962
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_e
    add-int v0, v4, v2

    .line 1963
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v3

    :goto_f
    add-int v0, v4, v2

    .line 1964
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    move v2, v3

    :goto_10
    add-int v0, v4, v2

    .line 1965
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    move v2, v3

    :goto_11
    add-int v0, v4, v2

    .line 1966
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    move v2, v3

    :goto_12
    add-int v0, v4, v2

    .line 1967
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v3

    :goto_13
    add-int v0, v4, v2

    .line 1968
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v2

    if-nez v2, :cond_14

    move v2, v3

    :goto_14
    add-int v0, v4, v2

    .line 1969
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    move v2, v3

    :goto_15
    add-int v0, v4, v2

    .line 1970
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    move v2, v3

    :goto_16
    add-int v0, v4, v2

    .line 1971
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v3

    :goto_17
    add-int v0, v4, v2

    .line 1972
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_18

    move v2, v3

    :goto_18
    add-int v0, v4, v2

    .line 1973
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    move v2, v3

    :goto_19
    add-int v0, v4, v2

    .line 1974
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    move v2, v3

    :goto_1a
    add-int v0, v4, v2

    .line 1975
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v3

    :goto_1b
    add-int v0, v4, v2

    .line 1976
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v2

    if-nez v2, :cond_1c

    move v2, v3

    :goto_1c
    add-int v0, v4, v2

    .line 1977
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    move v2, v3

    :goto_1d
    add-int v0, v4, v2

    .line 1978
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1e

    move v2, v3

    :goto_1e
    add-int v0, v4, v2

    .line 1979
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v3

    :goto_1f
    add-int v0, v4, v2

    .line 1980
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_20

    move v2, v3

    :goto_20
    add-int v0, v4, v2

    .line 1981
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21

    move v2, v3

    :goto_21
    add-int v0, v4, v2

    .line 1982
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_22

    move v2, v3

    :goto_22
    add-int v0, v4, v2

    .line 1983
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v3

    :goto_23
    add-int v0, v4, v2

    .line 1984
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_24

    :goto_24
    add-int v0, v2, v3

    .line 1985
    return v0

    .line 1948
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1949
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1950
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/InstanceState;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1951
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1952
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1953
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1954
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1955
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1956
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1957
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1958
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1959
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Placement;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1960
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 1961
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 1962
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 1963
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Monitoring;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 1964
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 1965
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 1966
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 1967
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 1968
    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/StateReason;->hashCode()I

    move-result v2

    goto/16 :goto_14

    .line 1969
    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_15

    .line 1970
    :cond_16
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_16

    .line 1971
    :cond_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_17

    .line 1972
    :cond_18
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_18

    .line 1973
    :cond_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_19

    .line 1974
    :cond_1a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1a

    .line 1975
    :cond_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1b

    .line 1976
    :cond_1c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/InstanceLicense;->hashCode()I

    move-result v2

    goto/16 :goto_1c

    .line 1977
    :cond_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1d

    .line 1978
    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1e

    .line 1979
    :cond_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1f

    .line 1980
    :cond_20
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_20

    .line 1981
    :cond_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_21

    .line 1982
    :cond_22
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_22

    .line 1983
    :cond_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/IamInstanceProfile;->hashCode()I

    move-result v2

    goto/16 :goto_23

    .line 1984
    :cond_24
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto/16 :goto_24
.end method

.method public isEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSourceDestCheck()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->sourceDestCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAmiLaunchIndex(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "amiLaunchIndex"    # Ljava/lang/Integer;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->amiLaunchIndex:Ljava/lang/Integer;

    .line 496
    return-void
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->architecture:Ljava/lang/String;

    .line 1094
    return-void
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1205
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 1206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    .line 1213
    :goto_0
    return-void

    .line 1210
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1211
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1212
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->clientToken:Ljava/lang/String;

    .line 1462
    return-void
.end method

.method public setEbsOptimized(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->ebsOptimized:Ljava/lang/Boolean;

    .line 1863
    return-void
.end method

.method public setHypervisor(Lcom/amazonaws/services/ec2/model/HypervisorType;)V
    .locals 1
    .param p1, "hypervisor"    # Lcom/amazonaws/services/ec2/model/HypervisorType;

    .prologue
    .line 1721
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/HypervisorType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    .line 1722
    return-void
.end method

.method public setHypervisor(Ljava/lang/String;)V
    .locals 0
    .param p1, "hypervisor"    # Ljava/lang/String;

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    .line 1687
    return-void
.end method

.method public setIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfile;)V
    .locals 0
    .param p1, "iamInstanceProfile"    # Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    .line 1829
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->imageId:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceId:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setInstanceLifecycle(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceLifecycle"    # Ljava/lang/String;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceLifecycle:Ljava/lang/String;

    .line 1354
    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 669
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    .line 670
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->kernelId:Ljava/lang/String;

    .line 782
    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->keyName:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setLaunchTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "launchTime"    # Ljava/util/Date;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->launchTime:Ljava/util/Date;

    .line 714
    return-void
.end method

.method public setLicense(Lcom/amazonaws/services/ec2/model/InstanceLicense;)V
    .locals 0
    .param p1, "license"    # Lcom/amazonaws/services/ec2/model/InstanceLicense;

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->license:Lcom/amazonaws/services/ec2/model/InstanceLicense;

    .line 1426
    return-void
.end method

.method public setMonitoring(Lcom/amazonaws/services/ec2/model/Monitoring;)V
    .locals 0
    .param p1, "monitoring"    # Lcom/amazonaws/services/ec2/model/Monitoring;

    .prologue
    .line 883
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->monitoring:Lcom/amazonaws/services/ec2/model/Monitoring;

    .line 884
    return-void
.end method

.method public setNetworkInterfaces(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1763
    .local p1, "networkInterfaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;>;"
    if-nez p1, :cond_0

    .line 1764
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    .line 1771
    :goto_0
    return-void

    .line 1768
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1769
    .local v0, "networkInterfacesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1770
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public setPlacement(Lcom/amazonaws/services/ec2/model/Placement;)V
    .locals 0
    .param p1, "placement"    # Lcom/amazonaws/services/ec2/model/Placement;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    .line 748
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->platform:Ljava/lang/String;

    .line 850
    return-void
.end method

.method public setPrivateDnsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateDnsName"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateDnsName:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 989
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateIpAddress:Ljava/lang/String;

    .line 990
    return-void
.end method

.method public setProductCodes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    .line 543
    :goto_0
    return-void

    .line 540
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 542
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setPublicDnsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicDnsName"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicDnsName:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setPublicIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicIpAddress"    # Ljava/lang/String;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicIpAddress:Ljava/lang/String;

    .line 1026
    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->ramdiskId:Ljava/lang/String;

    .line 816
    return-void
.end method

.method public setRootDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootDeviceName"    # Ljava/lang/String;

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceName:Ljava/lang/String;

    .line 1168
    return-void
.end method

.method public setRootDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootDeviceType"    # Ljava/lang/String;

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceType:Ljava/lang/String;

    .line 1132
    return-void
.end method

.method public setSecurityGroups(Ljava/util/Collection;)V
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
    .line 1568
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    if-nez p1, :cond_0

    .line 1569
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    .line 1576
    :goto_0
    return-void

    .line 1573
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1574
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1575
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSourceDestCheck(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sourceDestCheck"    # Ljava/lang/Boolean;

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->sourceDestCheck:Ljava/lang/Boolean;

    .line 1634
    return-void
.end method

.method public setSpotInstanceRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotInstanceRequestId"    # Ljava/lang/String;

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->spotInstanceRequestId:Ljava/lang/String;

    .line 1388
    return-void
.end method

.method public setState(Lcom/amazonaws/services/ec2/model/InstanceState;)V
    .locals 0
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/InstanceState;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->state:Lcom/amazonaws/services/ec2/model/InstanceState;

    .line 286
    return-void
.end method

.method public setStateReason(Lcom/amazonaws/services/ec2/model/StateReason;)V
    .locals 0
    .param p1, "stateReason"    # Lcom/amazonaws/services/ec2/model/StateReason;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    .line 1060
    return-void
.end method

.method public setStateTransitionReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateTransitionReason"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateTransitionReason:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 917
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->subnetId:Ljava/lang/String;

    .line 918
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
    .line 1499
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 1500
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    .line 1507
    :goto_0
    return-void

    .line 1504
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1505
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1506
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setVirtualizationType(Lcom/amazonaws/services/ec2/model/VirtualizationType;)V
    .locals 1
    .param p1, "virtualizationType"    # Lcom/amazonaws/services/ec2/model/VirtualizationType;

    .prologue
    .line 1315
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VirtualizationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    .line 1316
    return-void
.end method

.method public setVirtualizationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "virtualizationType"    # Ljava/lang/String;

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    .line 1281
    return-void
.end method

.method public setVpcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 951
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->vpcId:Ljava/lang/String;

    .line 952
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1901
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateDnsName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublicDnsName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateTransitionReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmiLaunchIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VpcId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublicIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    :cond_16
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    :cond_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    :cond_18
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualizationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    :cond_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceLifecycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    :cond_1a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotInstanceRequestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    :cond_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    :cond_1c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    :cond_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1934
    :cond_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceDestCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    :cond_20
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hypervisor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    :cond_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    :cond_22
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IamInstanceProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    :cond_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EbsOptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    :cond_24
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAmiLaunchIndex(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "amiLaunchIndex"    # Ljava/lang/Integer;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->amiLaunchIndex:Ljava/lang/Integer;

    .line 512
    return-object p0
.end method

.method public withArchitecture(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->architecture:Ljava/lang/String;

    .line 1108
    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    .prologue
    .line 1244
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 1245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    .line 1252
    :goto_0
    return-object p0

    .line 1247
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1248
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1249
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 1227
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1228
    .local v3, "value":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1230
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withClientToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->clientToken:Ljava/lang/String;

    .line 1476
    return-object p0
.end method

.method public withEbsOptimized(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->ebsOptimized:Ljava/lang/Boolean;

    .line 1877
    return-object p0
.end method

.method public withHypervisor(Lcom/amazonaws/services/ec2/model/HypervisorType;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 1
    .param p1, "hypervisor"    # Lcom/amazonaws/services/ec2/model/HypervisorType;

    .prologue
    .line 1740
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/HypervisorType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    .line 1741
    return-object p0
.end method

.method public withHypervisor(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "hypervisor"    # Ljava/lang/String;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    .line 1706
    return-object p0
.end method

.method public withIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfile;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "iamInstanceProfile"    # Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    .line 1843
    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->imageId:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceId:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public withInstanceLifecycle(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "instanceLifecycle"    # Ljava/lang/String;

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceLifecycle:Ljava/lang/String;

    .line 1368
    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 694
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    .line 695
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    .line 648
    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->kernelId:Ljava/lang/String;

    .line 796
    return-object p0
.end method

.method public withKeyName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->keyName:Ljava/lang/String;

    .line 472
    return-object p0
.end method

.method public withLaunchTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "launchTime"    # Ljava/util/Date;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->launchTime:Ljava/util/Date;

    .line 728
    return-object p0
.end method

.method public withLicense(Lcom/amazonaws/services/ec2/model/InstanceLicense;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "license"    # Lcom/amazonaws/services/ec2/model/InstanceLicense;

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->license:Lcom/amazonaws/services/ec2/model/InstanceLicense;

    .line 1442
    return-object p0
.end method

.method public withMonitoring(Lcom/amazonaws/services/ec2/model/Monitoring;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "monitoring"    # Lcom/amazonaws/services/ec2/model/Monitoring;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->monitoring:Lcom/amazonaws/services/ec2/model/Monitoring;

    .line 898
    return-object p0
.end method

.method public withNetworkInterfaces(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    .prologue
    .line 1802
    .local p1, "networkInterfaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;>;"
    if-nez p1, :cond_0

    .line 1803
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    .line 1810
    :goto_0
    return-object p0

    .line 1805
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1806
    .local v0, "networkInterfacesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1807
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withNetworkInterfaces([Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 6
    .param p1, "networkInterfaces"    # [Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setNetworkInterfaces(Ljava/util/Collection;)V

    .line 1785
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1786
    .local v3, "value":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1785
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1788
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;
    :cond_1
    return-object p0
.end method

.method public withPlacement(Lcom/amazonaws/services/ec2/model/Placement;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "placement"    # Lcom/amazonaws/services/ec2/model/Placement;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    .line 762
    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->platform:Ljava/lang/String;

    .line 864
    return-object p0
.end method

.method public withPrivateDnsName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "privateDnsName"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateDnsName:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateIpAddress:Ljava/lang/String;

    .line 1006
    return-object p0
.end method

.method public withProductCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 575
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    .line 582
    :goto_0
    return-object p0

    .line 577
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 579
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductCodes([Lcom/amazonaws/services/ec2/model/ProductCode;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 6
    .param p1, "productCodes"    # [Lcom/amazonaws/services/ec2/model/ProductCode;

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setProductCodes(Ljava/util/Collection;)V

    .line 557
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/ProductCode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 558
    .local v3, "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    :cond_1
    return-object p0
.end method

.method public withPublicDnsName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "publicDnsName"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicDnsName:Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public withPublicIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "publicIpAddress"    # Ljava/lang/String;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicIpAddress:Ljava/lang/String;

    .line 1040
    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->ramdiskId:Ljava/lang/String;

    .line 830
    return-object p0
.end method

.method public withRootDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "rootDeviceName"    # Ljava/lang/String;

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceName:Ljava/lang/String;

    .line 1182
    return-object p0
.end method

.method public withRootDeviceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "rootDeviceType"    # Ljava/lang/String;

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceType:Ljava/lang/String;

    .line 1148
    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    .prologue
    .line 1607
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    if-nez p1, :cond_0

    .line 1608
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    .line 1615
    :goto_0
    return-object p0

    .line 1610
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1611
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1612
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Lcom/amazonaws/services/ec2/model/GroupIdentifier;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 6
    .param p1, "securityGroups"    # [Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    .prologue
    .line 1589
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setSecurityGroups(Ljava/util/Collection;)V

    .line 1590
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

    .line 1591
    .local v3, "value":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1593
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    :cond_1
    return-object p0
.end method

.method public withSourceDestCheck(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "sourceDestCheck"    # Ljava/lang/Boolean;

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->sourceDestCheck:Ljava/lang/Boolean;

    .line 1648
    return-object p0
.end method

.method public withSpotInstanceRequestId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "spotInstanceRequestId"    # Ljava/lang/String;

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->spotInstanceRequestId:Ljava/lang/String;

    .line 1402
    return-object p0
.end method

.method public withState(Lcom/amazonaws/services/ec2/model/InstanceState;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/InstanceState;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->state:Lcom/amazonaws/services/ec2/model/InstanceState;

    .line 300
    return-object p0
.end method

.method public withStateReason(Lcom/amazonaws/services/ec2/model/StateReason;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "stateReason"    # Lcom/amazonaws/services/ec2/model/StateReason;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    .line 1074
    return-object p0
.end method

.method public withStateTransitionReason(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "stateTransitionReason"    # Ljava/lang/String;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateTransitionReason:Ljava/lang/String;

    .line 432
    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 931
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->subnetId:Ljava/lang/String;

    .line 932
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    .prologue
    .line 1538
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 1539
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    .line 1546
    :goto_0
    return-object p0

    .line 1541
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1542
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1543
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 1520
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setTags(Ljava/util/Collection;)V

    .line 1521
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

    .line 1522
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1524
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withVirtualizationType(Lcom/amazonaws/services/ec2/model/VirtualizationType;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 1
    .param p1, "virtualizationType"    # Lcom/amazonaws/services/ec2/model/VirtualizationType;

    .prologue
    .line 1334
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VirtualizationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    .line 1335
    return-object p0
.end method

.method public withVirtualizationType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "virtualizationType"    # Ljava/lang/String;

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    .line 1300
    return-object p0
.end method

.method public withVpcId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 965
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->vpcId:Ljava/lang/String;

    .line 966
    return-object p0
.end method
