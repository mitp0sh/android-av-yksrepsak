.class public Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "RunInstancesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private additionalInfo:Ljava/lang/String;

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

.field private clientToken:Ljava/lang/String;

.field private disableApiTermination:Ljava/lang/Boolean;

.field private ebsOptimized:Ljava/lang/Boolean;

.field private iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

.field private imageId:Ljava/lang/String;

.field private instanceInitiatedShutdownBehavior:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private license:Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

.field private maxCount:Ljava/lang/Integer;

.field private minCount:Ljava/lang/Integer;

.field private monitoring:Ljava/lang/Boolean;

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

.field private placement:Lcom/amazonaws/services/ec2/model/Placement;

.field private privateIpAddress:Ljava/lang/String;

.field private ramdiskId:Ljava/lang/String;

.field private securityGroupIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .line 187
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;
    .param p2, "minCount"    # Ljava/lang/Integer;
    .param p3, "maxCount"    # Ljava/lang/Integer;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->imageId:Ljava/lang/String;

    .line 205
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->minCount:Ljava/lang/Integer;

    .line 206
    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->maxCount:Ljava/lang/Integer;

    .line 207
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1409
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 1461
    :cond_0
    :goto_0
    return v3

    .line 1410
    :cond_1
    if-eqz p1, :cond_0

    .line 1412
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1413
    check-cast v0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    .line 1415
    .local v0, "other":Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1416
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1417
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1418
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1420
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1422
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1423
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1424
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1426
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1428
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1430
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1431
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-nez v1, :cond_29

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v4

    if-nez v4, :cond_2a

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1432
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/Placement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2c

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1434
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1435
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2e

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1436
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1437
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2f

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_30

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1438
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_31

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_32

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1440
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_34

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1442
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1443
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_35

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_36

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1444
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1445
    :cond_10
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    move v1, v2

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_38

    move v4, v2

    :goto_20
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1446
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1447
    :cond_11
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v1

    if-nez v1, :cond_39

    move v1, v2

    :goto_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v4

    if-nez v4, :cond_3a

    move v4, v2

    :goto_22
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1448
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1449
    :cond_12
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3b

    move v1, v2

    :goto_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3c

    move v4, v2

    :goto_24
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1450
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1451
    :cond_13
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3d

    move v1, v2

    :goto_25
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3e

    move v4, v2

    :goto_26
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1452
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    :cond_14
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    move v1, v2

    :goto_27
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_40

    move v4, v2

    :goto_28
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1454
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1455
    :cond_15
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_41

    move v1, v2

    :goto_29
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_42

    move v4, v2

    :goto_2a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1456
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1457
    :cond_16
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v1

    if-nez v1, :cond_43

    move v1, v2

    :goto_2b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v4

    if-nez v4, :cond_44

    move v4, v2

    :goto_2c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1458
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    :cond_17
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_45

    move v1, v2

    :goto_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_46

    move v4, v2

    :goto_2e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1460
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_18
    move v3, v2

    .line 1461
    goto/16 :goto_0

    :cond_19
    move v1, v3

    .line 1415
    goto/16 :goto_1

    :cond_1a
    move v4, v3

    goto/16 :goto_2

    :cond_1b
    move v1, v3

    .line 1417
    goto/16 :goto_3

    :cond_1c
    move v4, v3

    goto/16 :goto_4

    :cond_1d
    move v1, v3

    .line 1419
    goto/16 :goto_5

    :cond_1e
    move v4, v3

    goto/16 :goto_6

    :cond_1f
    move v1, v3

    .line 1421
    goto/16 :goto_7

    :cond_20
    move v4, v3

    goto/16 :goto_8

    :cond_21
    move v1, v3

    .line 1423
    goto/16 :goto_9

    :cond_22
    move v4, v3

    goto/16 :goto_a

    :cond_23
    move v1, v3

    .line 1425
    goto/16 :goto_b

    :cond_24
    move v4, v3

    goto/16 :goto_c

    :cond_25
    move v1, v3

    .line 1427
    goto/16 :goto_d

    :cond_26
    move v4, v3

    goto/16 :goto_e

    :cond_27
    move v1, v3

    .line 1429
    goto/16 :goto_f

    :cond_28
    move v4, v3

    goto/16 :goto_10

    :cond_29
    move v1, v3

    .line 1431
    goto/16 :goto_11

    :cond_2a
    move v4, v3

    goto/16 :goto_12

    :cond_2b
    move v1, v3

    .line 1433
    goto/16 :goto_13

    :cond_2c
    move v4, v3

    goto/16 :goto_14

    :cond_2d
    move v1, v3

    .line 1435
    goto/16 :goto_15

    :cond_2e
    move v4, v3

    goto/16 :goto_16

    :cond_2f
    move v1, v3

    .line 1437
    goto/16 :goto_17

    :cond_30
    move v4, v3

    goto/16 :goto_18

    :cond_31
    move v1, v3

    .line 1439
    goto/16 :goto_19

    :cond_32
    move v4, v3

    goto/16 :goto_1a

    :cond_33
    move v1, v3

    .line 1441
    goto/16 :goto_1b

    :cond_34
    move v4, v3

    goto/16 :goto_1c

    :cond_35
    move v1, v3

    .line 1443
    goto/16 :goto_1d

    :cond_36
    move v4, v3

    goto/16 :goto_1e

    :cond_37
    move v1, v3

    .line 1445
    goto/16 :goto_1f

    :cond_38
    move v4, v3

    goto/16 :goto_20

    :cond_39
    move v1, v3

    .line 1447
    goto/16 :goto_21

    :cond_3a
    move v4, v3

    goto/16 :goto_22

    :cond_3b
    move v1, v3

    .line 1449
    goto/16 :goto_23

    :cond_3c
    move v4, v3

    goto/16 :goto_24

    :cond_3d
    move v1, v3

    .line 1451
    goto/16 :goto_25

    :cond_3e
    move v4, v3

    goto/16 :goto_26

    :cond_3f
    move v1, v3

    .line 1453
    goto/16 :goto_27

    :cond_40
    move v4, v3

    goto/16 :goto_28

    :cond_41
    move v1, v3

    .line 1455
    goto/16 :goto_29

    :cond_42
    move v4, v3

    goto/16 :goto_2a

    :cond_43
    move v1, v3

    .line 1457
    goto/16 :goto_2b

    :cond_44
    move v4, v3

    goto/16 :goto_2c

    :cond_45
    move v1, v3

    .line 1459
    goto/16 :goto_2d

    :cond_46
    move v4, v3

    goto/16 :goto_2e
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->additionalInfo:Ljava/lang/String;

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
    .line 775
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceInitiatedShutdownBehavior()Ljava/lang/String;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->license:Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    return-object v0
.end method

.method public getMaxCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->maxCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->minCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMonitoring()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->monitoring:Ljava/lang/Boolean;

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
    .line 1198
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    return-object v0
.end method

.method public getPlacement()Lcom/amazonaws/services/ec2/model/Placement;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityGroupIds()Ljava/util/List;
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
    .line 455
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

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
    .line 380
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->subnetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1378
    const/16 v1, 0x1f

    .line 1379
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 1381
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 1382
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1383
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1384
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1385
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1386
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1387
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1388
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 1389
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 1390
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 1391
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 1392
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 1393
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 1394
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 1395
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_e
    add-int v0, v4, v2

    .line 1396
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v3

    :goto_f
    add-int v0, v4, v2

    .line 1397
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v2

    if-nez v2, :cond_10

    move v2, v3

    :goto_10
    add-int v0, v4, v2

    .line 1398
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    move v2, v3

    :goto_11
    add-int v0, v4, v2

    .line 1399
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    move v2, v3

    :goto_12
    add-int v0, v4, v2

    .line 1400
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v3

    :goto_13
    add-int v0, v4, v2

    .line 1401
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_14

    move v2, v3

    :goto_14
    add-int v0, v4, v2

    .line 1402
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v2

    if-nez v2, :cond_15

    move v2, v3

    :goto_15
    add-int v0, v4, v2

    .line 1403
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_16

    :goto_16
    add-int v0, v2, v3

    .line 1404
    return v0

    .line 1381
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1382
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1383
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1384
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1385
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1386
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1387
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1388
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1389
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Placement;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1390
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1391
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1392
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1393
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 1394
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 1395
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 1396
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 1397
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 1398
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 1399
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 1400
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 1401
    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_14

    .line 1402
    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->hashCode()I

    move-result v2

    goto/16 :goto_15

    .line 1403
    :cond_16
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto/16 :goto_16
.end method

.method public isDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMonitoring()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->monitoring:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAdditionalInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->additionalInfo:Ljava/lang/String;

    .line 1173
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
    .line 789
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 790
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    .line 797
    :goto_0
    return-void

    .line 794
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 795
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 796
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->clientToken:Ljava/lang/String;

    .line 1135
    return-void
.end method

.method public setDisableApiTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "disableApiTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->disableApiTermination:Ljava/lang/Boolean;

    .line 950
    return-void
.end method

.method public setEbsOptimized(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ebsOptimized:Ljava/lang/Boolean;

    .line 1310
    return-void
.end method

.method public setIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;)V
    .locals 0
    .param p1, "iamInstanceProfile"    # Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    .line 1276
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->imageId:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setInstanceInitiatedShutdownBehavior(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceInitiatedShutdownBehavior"    # Ljava/lang/String;

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    .line 1005
    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 611
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    .line 612
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->kernelId:Ljava/lang/String;

    .line 690
    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->keyName:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setLicense(Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;)V
    .locals 0
    .param p1, "license"    # Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->license:Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    .line 1045
    return-void
.end method

.method public setMaxCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxCount"    # Ljava/lang/Integer;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->maxCount:Ljava/lang/Integer;

    .line 313
    return-void
.end method

.method public setMinCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minCount"    # Ljava/lang/Integer;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->minCount:Ljava/lang/Integer;

    .line 265
    return-void
.end method

.method public setMonitoring(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "monitoring"    # Ljava/lang/Boolean;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->monitoring:Ljava/lang/Boolean;

    .line 859
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
    .line 1210
    .local p1, "networkInterfaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    if-nez p1, :cond_0

    .line 1211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    .line 1218
    :goto_0
    return-void

    .line 1215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1216
    .local v0, "networkInterfacesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1217
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public setPlacement(Lcom/amazonaws/services/ec2/model/Placement;)V
    .locals 0
    .param p1, "placement"    # Lcom/amazonaws/services/ec2/model/Placement;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    .line 654
    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->privateIpAddress:Ljava/lang/String;

    .line 1089
    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ramdiskId:Ljava/lang/String;

    .line 740
    return-void
.end method

.method public setSecurityGroupIds(Ljava/util/Collection;)V
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
    .line 467
    .local p1, "securityGroupIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 468
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    .local v0, "securityGroupIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 474
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    goto :goto_0
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
    .line 394
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

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
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->subnetId:Ljava/lang/String;

    .line 906
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->userData:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1348
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroupIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableApiTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceInitiatedShutdownBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdditionalInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IamInstanceProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EbsOptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    :cond_16
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAdditionalInfo(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->additionalInfo:Ljava/lang/String;

    .line 1187
    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;"
        }
    .end annotation

    .prologue
    .line 832
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 833
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    .line 840
    :goto_0
    return-object p0

    .line 835
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 836
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 837
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 813
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

    .line 814
    .local v3, "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withClientToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->clientToken:Ljava/lang/String;

    .line 1153
    return-object p0
.end method

.method public withDisableApiTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "disableApiTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->disableApiTermination:Ljava/lang/Boolean;

    .line 968
    return-object p0
.end method

.method public withEbsOptimized(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ebsOptimized:Ljava/lang/Boolean;

    .line 1324
    return-object p0
.end method

.method public withIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "iamInstanceProfile"    # Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    .line 1290
    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->imageId:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public withInstanceInitiatedShutdownBehavior(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "instanceInitiatedShutdownBehavior"    # Ljava/lang/String;

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    .line 1021
    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 630
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    .line 631
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    .line 596
    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->kernelId:Ljava/lang/String;

    .line 704
    return-object p0
.end method

.method public withKeyName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->keyName:Ljava/lang/String;

    .line 367
    return-object p0
.end method

.method public withLicense(Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "license"    # Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->license:Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    .line 1061
    return-object p0
.end method

.method public withMaxCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "maxCount"    # Ljava/lang/Integer;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->maxCount:Ljava/lang/Integer;

    .line 333
    return-object p0
.end method

.method public withMinCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "minCount"    # Ljava/lang/Integer;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->minCount:Ljava/lang/Integer;

    .line 281
    return-object p0
.end method

.method public withMonitoring(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "monitoring"    # Ljava/lang/Boolean;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->monitoring:Ljava/lang/Boolean;

    .line 873
    return-object p0
.end method

.method public withNetworkInterfaces(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;"
        }
    .end annotation

    .prologue
    .line 1249
    .local p1, "networkInterfaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    if-nez p1, :cond_0

    .line 1250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    .line 1257
    :goto_0
    return-object p0

    .line 1252
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1253
    .local v0, "networkInterfacesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1254
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withNetworkInterfaces([Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 6
    .param p1, "networkInterfaces"    # [Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->setNetworkInterfaces(Ljava/util/Collection;)V

    .line 1232
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

    .line 1233
    .local v3, "value":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1235
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    :cond_1
    return-object p0
.end method

.method public withPlacement(Lcom/amazonaws/services/ec2/model/Placement;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "placement"    # Lcom/amazonaws/services/ec2/model/Placement;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    .line 670
    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->privateIpAddress:Ljava/lang/String;

    .line 1107
    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ramdiskId:Ljava/lang/String;

    .line 762
    return-object p0
.end method

.method public withSecurityGroupIds(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "securityGroupIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    .line 514
    :goto_0
    return-object p0

    .line 509
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    .local v0, "securityGroupIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 511
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroupIds([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 6
    .param p1, "securityGroupIds"    # [Ljava/lang/String;

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->setSecurityGroupIds(Ljava/util/Collection;)V

    .line 489
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

    .line 490
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 438
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    .line 445
    :goto_0
    return-object p0

    .line 440
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 442
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 6
    .param p1, "securityGroups"    # [Ljava/lang/String;

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->setSecurityGroups(Ljava/util/Collection;)V

    .line 418
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

    .line 419
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "subnetId"    # Ljava/lang/String;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->subnetId:Ljava/lang/String;

    .line 922
    return-object p0
.end method

.method public withUserData(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->userData:Ljava/lang/String;

    .line 547
    return-object p0
.end method
