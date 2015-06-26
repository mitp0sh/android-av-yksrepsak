.class public Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
.super Ljava/lang/Object;
.source "LaunchConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation
.end field

.field private createdTime:Ljava/util/Date;

.field private ebsOptimized:Ljava/lang/Boolean;

.field private iamInstanceProfile:Ljava/lang/String;

.field private imageId:Ljava/lang/String;

.field private instanceMonitoring:Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

.field private instanceType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private launchConfigurationARN:Ljava/lang/String;

.field private launchConfigurationName:Ljava/lang/String;

.field private ramdiskId:Ljava/lang/String;

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

.field private spotPrice:Ljava/lang/String;

.field private userData:Ljava/lang/String;


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

    .line 944
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 980
    :cond_0
    :goto_0
    return v3

    .line 945
    :cond_1
    if-eqz p1, :cond_0

    .line 947
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 948
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;

    .line 950
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 951
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationARN()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationARN()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationARN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationARN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 955
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKeyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 957
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 959
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getUserData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 961
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 963
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKernelId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 965
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKernelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 967
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 971
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSpotPrice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 973
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSpotPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 975
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2b

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getCreatedTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_2c

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 977
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getCreatedTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2d

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2e

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 979
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_10
    move v3, v2

    .line 980
    goto/16 :goto_0

    :cond_11
    move v1, v3

    .line 950
    goto/16 :goto_1

    :cond_12
    move v4, v3

    goto/16 :goto_2

    :cond_13
    move v1, v3

    .line 952
    goto/16 :goto_3

    :cond_14
    move v4, v3

    goto/16 :goto_4

    :cond_15
    move v1, v3

    .line 954
    goto/16 :goto_5

    :cond_16
    move v4, v3

    goto/16 :goto_6

    :cond_17
    move v1, v3

    .line 956
    goto/16 :goto_7

    :cond_18
    move v4, v3

    goto/16 :goto_8

    :cond_19
    move v1, v3

    .line 958
    goto/16 :goto_9

    :cond_1a
    move v4, v3

    goto/16 :goto_a

    :cond_1b
    move v1, v3

    .line 960
    goto/16 :goto_b

    :cond_1c
    move v4, v3

    goto/16 :goto_c

    :cond_1d
    move v1, v3

    .line 962
    goto/16 :goto_d

    :cond_1e
    move v4, v3

    goto/16 :goto_e

    :cond_1f
    move v1, v3

    .line 964
    goto/16 :goto_f

    :cond_20
    move v4, v3

    goto/16 :goto_10

    :cond_21
    move v1, v3

    .line 966
    goto/16 :goto_11

    :cond_22
    move v4, v3

    goto/16 :goto_12

    :cond_23
    move v1, v3

    .line 968
    goto/16 :goto_13

    :cond_24
    move v4, v3

    goto/16 :goto_14

    :cond_25
    move v1, v3

    .line 970
    goto/16 :goto_15

    :cond_26
    move v4, v3

    goto/16 :goto_16

    :cond_27
    move v1, v3

    .line 972
    goto/16 :goto_17

    :cond_28
    move v4, v3

    goto/16 :goto_18

    :cond_29
    move v1, v3

    .line 974
    goto/16 :goto_19

    :cond_2a
    move v4, v3

    goto/16 :goto_1a

    :cond_2b
    move v1, v3

    .line 976
    goto/16 :goto_1b

    :cond_2c
    move v4, v3

    goto/16 :goto_1c

    :cond_2d
    move v1, v3

    .line 978
    goto :goto_1d

    :cond_2e
    move v4, v3

    goto :goto_1e
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->blockDeviceMappings:Ljava/util/List;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getCreatedTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public getEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIamInstanceProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->iamInstanceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->instanceMonitoring:Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchConfigurationARN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->launchConfigurationARN:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->launchConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->ramdiskId:Ljava/lang/String;

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
    .line 341
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->securityGroups:Ljava/util/List;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSpotPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->spotPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 921
    const/16 v1, 0x1f

    .line 922
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 924
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 925
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationARN()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 926
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 927
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKeyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 928
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 929
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getUserData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 930
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 931
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKernelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 932
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 933
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 934
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 935
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 936
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 937
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 938
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_e

    :goto_e
    add-int v0, v2, v3

    .line 939
    return v0

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 926
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 927
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 928
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 929
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 930
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 931
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 932
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 933
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 934
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 935
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 936
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 937
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 938
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto/16 :goto_e
.end method

.method public isEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 617
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->blockDeviceMappings:Ljava/util/List;

    .line 624
    :goto_0
    return-void

    .line 621
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 622
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 623
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setCreatedTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "createdTime"    # Ljava/util/Date;

    .prologue
    .line 826
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->createdTime:Ljava/util/Date;

    .line 827
    return-void
.end method

.method public setEbsOptimized(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->ebsOptimized:Ljava/lang/Boolean;

    .line 861
    return-void
.end method

.method public setIamInstanceProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "iamInstanceProfile"    # Ljava/lang/String;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->iamInstanceProfile:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->imageId:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setInstanceMonitoring(Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;)V
    .locals 0
    .param p1, "instanceMonitoring"    # Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->instanceMonitoring:Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    .line 690
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->instanceType:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->kernelId:Ljava/lang/String;

    .line 525
    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->keyName:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setLaunchConfigurationARN(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchConfigurationARN"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->launchConfigurationARN:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->launchConfigurationName:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->ramdiskId:Ljava/lang/String;

    .line 571
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
    .line 355
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 356
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->securityGroups:Ljava/util/List;

    .line 363
    :goto_0
    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSpotPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotPrice"    # Ljava/lang/String;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->spotPrice:Ljava/lang/String;

    .line 732
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->userData:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getLaunchConfigurationARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceMonitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IamInstanceProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EbsOptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :cond_e
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;"
        }
    .end annotation

    .prologue
    .line 659
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 660
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->blockDeviceMappings:Ljava/util/List;

    .line 667
    :goto_0
    return-object p0

    .line 662
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 663
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 664
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 640
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 641
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withCreatedTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "createdTime"    # Ljava/util/Date;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->createdTime:Ljava/util/Date;

    .line 841
    return-object p0
.end method

.method public withEbsOptimized(Ljava/lang/Boolean;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->ebsOptimized:Ljava/lang/Boolean;

    .line 875
    return-object p0
.end method

.method public withIamInstanceProfile(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "iamInstanceProfile"    # Ljava/lang/String;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->iamInstanceProfile:Ljava/lang/String;

    .line 807
    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->imageId:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public withInstanceMonitoring(Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "instanceMonitoring"    # Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->instanceMonitoring:Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    .line 706
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->instanceType:Ljava/lang/String;

    .line 497
    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->kernelId:Ljava/lang/String;

    .line 543
    return-object p0
.end method

.method public withKeyName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->keyName:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public withLaunchConfigurationARN(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "launchConfigurationARN"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->launchConfigurationARN:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->launchConfigurationName:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->ramdiskId:Ljava/lang/String;

    .line 589
    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 399
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->securityGroups:Ljava/util/List;

    .line 406
    :goto_0
    return-object p0

    .line 401
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 6
    .param p1, "securityGroups"    # [Ljava/lang/String;

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->setSecurityGroups(Ljava/util/Collection;)V

    .line 379
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

    .line 380
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withSpotPrice(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "spotPrice"    # Ljava/lang/String;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->spotPrice:Ljava/lang/String;

    .line 749
    return-object p0
.end method

.method public withUserData(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/LaunchConfiguration;->userData:Ljava/lang/String;

    .line 451
    return-object p0
.end method
