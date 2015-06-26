.class public Lcom/amazonaws/services/ec2/model/LaunchSpecification;
.super Ljava/lang/Object;
.source "LaunchSpecification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addressingType:Ljava/lang/String;

.field private allSecurityGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;"
        }
    .end annotation
.end field

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

.field private ebsOptimized:Ljava/lang/Boolean;

.field private iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

.field private imageId:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private monitoringEnabled:Ljava/lang/Boolean;

.field private networkInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private placement:Lcom/amazonaws/services/ec2/model/SpotPlacement;

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

.field private subnetId:Ljava/lang/String;

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

    .line 960
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 998
    :cond_0
    :goto_0
    return v3

    .line 961
    :cond_1
    if-eqz p1, :cond_0

    .line 963
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 964
    check-cast v0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .line 966
    .local v0, "other":Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 967
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 971
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 973
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 975
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 977
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 979
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v1

    if-nez v1, :cond_20

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v4

    if-nez v4, :cond_21

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 981
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/SpotPlacement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_23

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 983
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 985
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_26

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_27

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 987
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_28

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_29

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 989
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2a

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2b

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 991
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2c

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2d

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 993
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v1

    if-nez v1, :cond_2e

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v4

    if-nez v4, :cond_2f

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 995
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    :cond_10
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_30

    move v1, v2

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_31

    move v4, v2

    :goto_20
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 997
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    move v3, v2

    .line 998
    goto/16 :goto_0

    :cond_12
    move v1, v3

    .line 966
    goto/16 :goto_1

    :cond_13
    move v4, v3

    goto/16 :goto_2

    :cond_14
    move v1, v3

    .line 968
    goto/16 :goto_3

    :cond_15
    move v4, v3

    goto/16 :goto_4

    :cond_16
    move v1, v3

    .line 970
    goto/16 :goto_5

    :cond_17
    move v4, v3

    goto/16 :goto_6

    :cond_18
    move v1, v3

    .line 972
    goto/16 :goto_7

    :cond_19
    move v4, v3

    goto/16 :goto_8

    :cond_1a
    move v1, v3

    .line 974
    goto/16 :goto_9

    :cond_1b
    move v4, v3

    goto/16 :goto_a

    :cond_1c
    move v1, v3

    .line 976
    goto/16 :goto_b

    :cond_1d
    move v4, v3

    goto/16 :goto_c

    :cond_1e
    move v1, v3

    .line 978
    goto/16 :goto_d

    :cond_1f
    move v4, v3

    goto/16 :goto_e

    :cond_20
    move v1, v3

    .line 980
    goto/16 :goto_f

    :cond_21
    move v4, v3

    goto/16 :goto_10

    :cond_22
    move v1, v3

    .line 982
    goto/16 :goto_11

    :cond_23
    move v4, v3

    goto/16 :goto_12

    :cond_24
    move v1, v3

    .line 984
    goto/16 :goto_13

    :cond_25
    move v4, v3

    goto/16 :goto_14

    :cond_26
    move v1, v3

    .line 986
    goto/16 :goto_15

    :cond_27
    move v4, v3

    goto/16 :goto_16

    :cond_28
    move v1, v3

    .line 988
    goto/16 :goto_17

    :cond_29
    move v4, v3

    goto/16 :goto_18

    :cond_2a
    move v1, v3

    .line 990
    goto/16 :goto_19

    :cond_2b
    move v4, v3

    goto/16 :goto_1a

    :cond_2c
    move v1, v3

    .line 992
    goto/16 :goto_1b

    :cond_2d
    move v4, v3

    goto/16 :goto_1c

    :cond_2e
    move v1, v3

    .line 994
    goto/16 :goto_1d

    :cond_2f
    move v4, v3

    goto/16 :goto_1e

    :cond_30
    move v1, v3

    .line 996
    goto :goto_1f

    :cond_31
    move v4, v3

    goto :goto_20
.end method

.method public getAddressingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->addressingType:Ljava/lang/String;

    return-object v0
.end method

.method public getAllSecurityGroups()Ljava/util/List;
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
    .line 176
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->allSecurityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->allSecurityGroups:Ljava/util/List;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->allSecurityGroups:Ljava/util/List;

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
    .line 605
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitoringEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->monitoringEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNetworkInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->networkInterfaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->networkInterfaces:Ljava/util/List;

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->networkInterfaces:Ljava/util/List;

    return-object v0
.end method

.method public getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->placement:Lcom/amazonaws/services/ec2/model/SpotPlacement;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->ramdiskId:Ljava/lang/String;

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
    .line 245
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->securityGroups:Ljava/util/List;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->subnetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 936
    const/16 v1, 0x1f

    .line 937
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 939
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 940
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 941
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 942
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 943
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 944
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 945
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 946
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 947
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 948
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 949
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 950
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 951
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 952
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 953
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_e
    add-int v0, v4, v2

    .line 954
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_f

    :goto_f
    add-int v0, v2, v3

    .line 955
    return v0

    .line 939
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 940
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 941
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 942
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 943
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 944
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 945
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 946
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/SpotPlacement;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 947
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 948
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 949
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 950
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 951
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 952
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 953
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 954
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto/16 :goto_f
.end method

.method public isEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMonitoringEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->monitoringEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAddressingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressingType"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->addressingType:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setAllSecurityGroups(Ljava/util/Collection;)V
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
    .line 188
    .local p1, "allSecurityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    if-nez p1, :cond_0

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->allSecurityGroups:Ljava/util/List;

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v0, "allSecurityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->allSecurityGroups:Ljava/util/List;

    goto :goto_0
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
    .line 619
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 620
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    .line 627
    :goto_0
    return-void

    .line 624
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 626
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setEbsOptimized(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->ebsOptimized:Ljava/lang/Boolean;

    .line 875
    return-void
.end method

.method public setIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;)V
    .locals 0
    .param p1, "iamInstanceProfile"    # Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    .line 841
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->imageId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 453
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->instanceType:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->instanceType:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->kernelId:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->keyName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setMonitoringEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "monitoringEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->monitoringEnabled:Ljava/lang/Boolean;

    .line 689
    return-void
.end method

.method public setNetworkInterfaces(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, "networkInterfaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    if-nez p1, :cond_0

    .line 776
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->networkInterfaces:Ljava/util/List;

    .line 783
    :goto_0
    return-void

    .line 780
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 781
    .local v0, "networkInterfacesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 782
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public setPlacement(Lcom/amazonaws/services/ec2/model/SpotPlacement;)V
    .locals 0
    .param p1, "placement"    # Lcom/amazonaws/services/ec2/model/SpotPlacement;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->placement:Lcom/amazonaws/services/ec2/model/SpotPlacement;

    .line 492
    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->ramdiskId:Ljava/lang/String;

    .line 572
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
    .line 257
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->securityGroups:Ljava/util/List;

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->subnetId:Ljava/lang/String;

    .line 736
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->userData:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllSecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddressingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonitoringEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IamInstanceProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EbsOptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    :cond_f
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAddressingType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "addressingType"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->addressingType:Ljava/lang/String;

    .line 389
    return-object p0
.end method

.method public withAllSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/LaunchSpecification;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "allSecurityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    if-nez p1, :cond_0

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->allSecurityGroups:Ljava/util/List;

    .line 235
    :goto_0
    return-object p0

    .line 230
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v0, "allSecurityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->allSecurityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAllSecurityGroups([Lcom/amazonaws/services/ec2/model/GroupIdentifier;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 6
    .param p1, "allSecurityGroups"    # [Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->setAllSecurityGroups(Ljava/util/Collection;)V

    .line 210
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

    .line 211
    .local v3, "value":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    :cond_1
    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/LaunchSpecification;"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 663
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    .line 670
    :goto_0
    return-object p0

    .line 665
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 666
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 643
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

    .line 644
    .local v3, "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withEbsOptimized(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->ebsOptimized:Ljava/lang/Boolean;

    .line 889
    return-object p0
.end method

.method public withIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "iamInstanceProfile"    # Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    .line 855
    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->imageId:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->instanceType:Ljava/lang/String;

    .line 473
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->instanceType:Ljava/lang/String;

    .line 438
    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->kernelId:Ljava/lang/String;

    .line 540
    return-object p0
.end method

.method public withKeyName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->keyName:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public withMonitoringEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "monitoringEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->monitoringEnabled:Ljava/lang/Boolean;

    .line 703
    return-object p0
.end method

.method public withNetworkInterfaces(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/LaunchSpecification;"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, "networkInterfaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    if-nez p1, :cond_0

    .line 815
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->networkInterfaces:Ljava/util/List;

    .line 822
    :goto_0
    return-object p0

    .line 817
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 818
    .local v0, "networkInterfacesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 819
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withNetworkInterfaces([Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 6
    .param p1, "networkInterfaces"    # [Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->setNetworkInterfaces(Ljava/util/Collection;)V

    .line 797
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 798
    .local v3, "value":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    :cond_1
    return-object p0
.end method

.method public withPlacement(Lcom/amazonaws/services/ec2/model/SpotPlacement;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "placement"    # Lcom/amazonaws/services/ec2/model/SpotPlacement;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->placement:Lcom/amazonaws/services/ec2/model/SpotPlacement;

    .line 506
    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->ramdiskId:Ljava/lang/String;

    .line 592
    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/LaunchSpecification;"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->securityGroups:Ljava/util/List;

    .line 304
    :goto_0
    return-object p0

    .line 299
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 6
    .param p1, "securityGroups"    # [Ljava/lang/String;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->setSecurityGroups(Ljava/util/Collection;)V

    .line 279
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

    .line 280
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->subnetId:Ljava/lang/String;

    .line 752
    return-object p0
.end method

.method public withUserData(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->userData:Ljava/lang/String;

    .line 355
    return-object p0
.end method
