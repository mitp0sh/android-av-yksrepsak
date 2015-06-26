.class public Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateLaunchConfigurationRequest.java"

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

.field private ebsOptimized:Ljava/lang/Boolean;

.field private iamInstanceProfile:Ljava/lang/String;

.field private imageId:Ljava/lang/String;

.field private instanceMonitoring:Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

.field private instanceType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

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
    .line 36
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1139
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 1171
    :cond_0
    :goto_0
    return v3

    .line 1140
    :cond_1
    if-eqz p1, :cond_0

    .line 1142
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1143
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;

    .line 1145
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1146
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1148
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1149
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1150
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1152
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1154
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1156
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1158
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1160
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1162
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1163
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1164
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1166
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1168
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1170
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_e
    move v3, v2

    .line 1171
    goto/16 :goto_0

    :cond_f
    move v1, v3

    .line 1145
    goto/16 :goto_1

    :cond_10
    move v4, v3

    goto/16 :goto_2

    :cond_11
    move v1, v3

    .line 1147
    goto/16 :goto_3

    :cond_12
    move v4, v3

    goto/16 :goto_4

    :cond_13
    move v1, v3

    .line 1149
    goto/16 :goto_5

    :cond_14
    move v4, v3

    goto/16 :goto_6

    :cond_15
    move v1, v3

    .line 1151
    goto/16 :goto_7

    :cond_16
    move v4, v3

    goto/16 :goto_8

    :cond_17
    move v1, v3

    .line 1153
    goto/16 :goto_9

    :cond_18
    move v4, v3

    goto/16 :goto_a

    :cond_19
    move v1, v3

    .line 1155
    goto/16 :goto_b

    :cond_1a
    move v4, v3

    goto/16 :goto_c

    :cond_1b
    move v1, v3

    .line 1157
    goto/16 :goto_d

    :cond_1c
    move v4, v3

    goto/16 :goto_e

    :cond_1d
    move v1, v3

    .line 1159
    goto/16 :goto_f

    :cond_1e
    move v4, v3

    goto/16 :goto_10

    :cond_1f
    move v1, v3

    .line 1161
    goto/16 :goto_11

    :cond_20
    move v4, v3

    goto/16 :goto_12

    :cond_21
    move v1, v3

    .line 1163
    goto/16 :goto_13

    :cond_22
    move v4, v3

    goto/16 :goto_14

    :cond_23
    move v1, v3

    .line 1165
    goto/16 :goto_15

    :cond_24
    move v4, v3

    goto/16 :goto_16

    :cond_25
    move v1, v3

    .line 1167
    goto/16 :goto_17

    :cond_26
    move v4, v3

    goto/16 :goto_18

    :cond_27
    move v1, v3

    .line 1169
    goto :goto_19

    :cond_28
    move v4, v3

    goto :goto_1a
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
    .line 721
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->blockDeviceMappings:Ljava/util/List;

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIamInstanceProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->iamInstanceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->instanceMonitoring:Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->launchConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->ramdiskId:Ljava/lang/String;

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
    .line 360
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->securityGroups:Ljava/util/List;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSpotPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->spotPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1118
    const/16 v1, 0x1f

    .line 1119
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 1121
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 1122
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1123
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1124
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1125
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1126
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1127
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1128
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 1129
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 1130
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 1131
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 1132
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 1133
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_c

    :goto_c
    add-int v0, v2, v3

    .line 1134
    return v0

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1122
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1123
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1124
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1125
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1126
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1127
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1128
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1129
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1130
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1131
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1132
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1133
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto/16 :goto_c
.end method

.method public isEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->ebsOptimized:Ljava/lang/Boolean;

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
    .line 745
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 746
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->blockDeviceMappings:Ljava/util/List;

    .line 753
    :goto_0
    return-void

    .line 750
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 752
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setEbsOptimized(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->ebsOptimized:Ljava/lang/Boolean;

    .line 1060
    return-void
.end method

.method public setIamInstanceProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "iamInstanceProfile"    # Ljava/lang/String;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->iamInstanceProfile:Ljava/lang/String;

    .line 1012
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->imageId:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setInstanceMonitoring(Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;)V
    .locals 0
    .param p1, "instanceMonitoring"    # Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->instanceMonitoring:Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    .line 859
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->instanceType:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->kernelId:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->keyName:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->launchConfigurationName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->ramdiskId:Ljava/lang/String;

    .line 680
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
    .line 392
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 393
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->securityGroups:Ljava/util/List;

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 399
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSpotPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotPrice"    # Ljava/lang/String;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->spotPrice:Ljava/lang/String;

    .line 935
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->userData:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceMonitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IamInstanceProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EbsOptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :cond_c
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;"
        }
    .end annotation

    .prologue
    .line 808
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 809
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->blockDeviceMappings:Ljava/util/List;

    .line 816
    :goto_0
    return-object p0

    .line 811
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 812
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 813
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 779
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

    .line 780
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withEbsOptimized(Ljava/lang/Boolean;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->ebsOptimized:Ljava/lang/Boolean;

    .line 1074
    return-object p0
.end method

.method public withIamInstanceProfile(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "iamInstanceProfile"    # Ljava/lang/String;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->iamInstanceProfile:Ljava/lang/String;

    .line 1040
    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->imageId:Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public withInstanceMonitoring(Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "instanceMonitoring"    # Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->instanceMonitoring:Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    .line 885
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->instanceType:Ljava/lang/String;

    .line 606
    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->kernelId:Ljava/lang/String;

    .line 652
    return-object p0
.end method

.method public withKeyName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->keyName:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->launchConfigurationName:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->ramdiskId:Ljava/lang/String;

    .line 698
    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->securityGroups:Ljava/util/List;

    .line 479
    :goto_0
    return-object p0

    .line 474
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 475
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 476
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 6
    .param p1, "securityGroups"    # [Ljava/lang/String;

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->setSecurityGroups(Ljava/util/Collection;)V

    .line 434
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

    .line 435
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withSpotPrice(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "spotPrice"    # Ljava/lang/String;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->spotPrice:Ljava/lang/String;

    .line 964
    return-object p0
.end method

.method public withUserData(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->userData:Ljava/lang/String;

    .line 542
    return-object p0
.end method
