.class public Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
.super Ljava/lang/Object;
.source "SpotInstanceRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZoneGroup:Ljava/lang/String;

.field private createTime:Ljava/util/Date;

.field private fault:Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

.field private instanceId:Ljava/lang/String;

.field private launchGroup:Ljava/lang/String;

.field private launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

.field private launchedAvailabilityZone:Ljava/lang/String;

.field private productDescription:Ljava/lang/String;

.field private spotInstanceRequestId:Ljava/lang/String;

.field private spotPrice:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private status:Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

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

.field private type:Ljava/lang/String;

.field private validFrom:Ljava/util/Date;

.field private validUntil:Ljava/util/Date;


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

    .line 752
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 790
    :cond_0
    :goto_0
    return v3

    .line 753
    :cond_1
    if-eqz p1, :cond_0

    .line 755
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 756
    check-cast v0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;

    .line 758
    .local v0, "other":Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 759
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 761
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 763
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 767
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 769
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_20

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_21

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 773
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_23

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 777
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    if-nez v1, :cond_26

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v4

    if-nez v4, :cond_27

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 779
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_29

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 781
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2a

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getCreateTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_2b

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getCreateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2c

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2d

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 785
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2e

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2f

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 787
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    :cond_10
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchedAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    move v1, v2

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchedAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_31

    move v4, v2

    :goto_20
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 789
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchedAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchedAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchedAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    move v3, v2

    .line 790
    goto/16 :goto_0

    :cond_12
    move v1, v3

    .line 758
    goto/16 :goto_1

    :cond_13
    move v4, v3

    goto/16 :goto_2

    :cond_14
    move v1, v3

    .line 760
    goto/16 :goto_3

    :cond_15
    move v4, v3

    goto/16 :goto_4

    :cond_16
    move v1, v3

    .line 762
    goto/16 :goto_5

    :cond_17
    move v4, v3

    goto/16 :goto_6

    :cond_18
    move v1, v3

    .line 764
    goto/16 :goto_7

    :cond_19
    move v4, v3

    goto/16 :goto_8

    :cond_1a
    move v1, v3

    .line 766
    goto/16 :goto_9

    :cond_1b
    move v4, v3

    goto/16 :goto_a

    :cond_1c
    move v1, v3

    .line 768
    goto/16 :goto_b

    :cond_1d
    move v4, v3

    goto/16 :goto_c

    :cond_1e
    move v1, v3

    .line 770
    goto/16 :goto_d

    :cond_1f
    move v4, v3

    goto/16 :goto_e

    :cond_20
    move v1, v3

    .line 772
    goto/16 :goto_f

    :cond_21
    move v4, v3

    goto/16 :goto_10

    :cond_22
    move v1, v3

    .line 774
    goto/16 :goto_11

    :cond_23
    move v4, v3

    goto/16 :goto_12

    :cond_24
    move v1, v3

    .line 776
    goto/16 :goto_13

    :cond_25
    move v4, v3

    goto/16 :goto_14

    :cond_26
    move v1, v3

    .line 778
    goto/16 :goto_15

    :cond_27
    move v4, v3

    goto/16 :goto_16

    :cond_28
    move v1, v3

    .line 780
    goto/16 :goto_17

    :cond_29
    move v4, v3

    goto/16 :goto_18

    :cond_2a
    move v1, v3

    .line 782
    goto/16 :goto_19

    :cond_2b
    move v4, v3

    goto/16 :goto_1a

    :cond_2c
    move v1, v3

    .line 784
    goto/16 :goto_1b

    :cond_2d
    move v4, v3

    goto/16 :goto_1c

    :cond_2e
    move v1, v3

    .line 786
    goto/16 :goto_1d

    :cond_2f
    move v4, v3

    goto/16 :goto_1e

    :cond_30
    move v1, v3

    .line 788
    goto :goto_1f

    :cond_31
    move v4, v3

    goto :goto_20
.end method

.method public getAvailabilityZoneGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->availabilityZoneGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->fault:Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->launchGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    return-object v0
.end method

.method public getLaunchedAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->launchedAvailabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->productDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSpotInstanceRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->spotInstanceRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpotPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->spotPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->status:Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

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
    .line 598
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->tags:Ljava/util/List;

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValidFrom()Ljava/util/Date;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->validFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getValidUntil()Ljava/util/Date;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->validUntil:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 728
    const/16 v1, 0x1f

    .line 729
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 731
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 732
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 733
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 734
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 735
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 736
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 737
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 738
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 739
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 740
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 741
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 742
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 743
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 744
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 745
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_e
    add-int v0, v4, v2

    .line 746
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchedAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    :goto_f
    add-int v0, v2, v3

    .line 747
    return v0

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 732
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 733
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 734
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 735
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 736
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 737
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 738
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 739
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 740
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 741
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 742
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 743
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 744
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 745
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 746
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchedAvailabilityZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_f
.end method

.method public setAvailabilityZoneGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZoneGroup"    # Ljava/lang/String;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->availabilityZoneGroup:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "createTime"    # Ljava/util/Date;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->createTime:Ljava/util/Date;

    .line 539
    return-void
.end method

.method public setFault(Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;)V
    .locals 0
    .param p1, "fault"    # Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->fault:Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    .line 266
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->instanceId:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public setLaunchGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchGroup"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->launchGroup:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setLaunchSpecification(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)V
    .locals 0
    .param p1, "launchSpecification"    # Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .line 471
    return-void
.end method

.method public setLaunchedAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchedAvailabilityZone"    # Ljava/lang/String;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->launchedAvailabilityZone:Ljava/lang/String;

    .line 676
    return-void
.end method

.method public setProductDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->productDescription:Ljava/lang/String;

    .line 573
    return-void
.end method

.method public setSpotInstanceRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotInstanceRequestId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->spotInstanceRequestId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSpotPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotPrice"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->spotPrice:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->state:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setStatus(Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->status:Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    .line 300
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
    .line 610
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 611
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->tags:Ljava/util/List;

    .line 618
    :goto_0
    return-void

    .line 615
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 616
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 617
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setType(Lcom/amazonaws/services/ec2/model/SpotInstanceType;)V
    .locals 1
    .param p1, "type"    # Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->type:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->type:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setValidFrom(Ljava/util/Date;)V
    .locals 0
    .param p1, "validFrom"    # Ljava/util/Date;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->validFrom:Ljava/util/Date;

    .line 334
    return-void
.end method

.method public setValidUntil(Ljava/util/Date;)V
    .locals 0
    .param p1, "validUntil"    # Ljava/util/Date;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->validUntil:Ljava/util/Date;

    .line 368
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotInstanceRequestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fault: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getStatus()Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidFrom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidUntil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZoneGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchSpecification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchedAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchedAvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchedAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_f
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZoneGroup(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "availabilityZoneGroup"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->availabilityZoneGroup:Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public withCreateTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "createTime"    # Ljava/util/Date;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->createTime:Ljava/util/Date;

    .line 553
    return-object p0
.end method

.method public withFault(Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "fault"    # Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->fault:Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    .line 280
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->instanceId:Ljava/lang/String;

    .line 519
    return-object p0
.end method

.method public withLaunchGroup(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "launchGroup"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->launchGroup:Ljava/lang/String;

    .line 416
    return-object p0
.end method

.method public withLaunchSpecification(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "launchSpecification"    # Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .line 485
    return-object p0
.end method

.method public withLaunchedAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "launchedAvailabilityZone"    # Ljava/lang/String;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->launchedAvailabilityZone:Ljava/lang/String;

    .line 690
    return-object p0
.end method

.method public withProductDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->productDescription:Ljava/lang/String;

    .line 587
    return-object p0
.end method

.method public withSpotInstanceRequestId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "spotInstanceRequestId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->spotInstanceRequestId:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public withSpotPrice(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "spotPrice"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->spotPrice:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->state:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public withStatus(Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "status"    # Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->status:Lcom/amazonaws/services/ec2/model/SpotInstanceStatus;

    .line 314
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;"
        }
    .end annotation

    .prologue
    .line 649
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 650
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->tags:Ljava/util/List;

    .line 657
    :goto_0
    return-object p0

    .line 652
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 653
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 654
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->setTags(Ljava/util/Collection;)V

    .line 632
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

    .line 633
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withType(Lcom/amazonaws/services/ec2/model/SpotInstanceType;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 1
    .param p1, "type"    # Lcom/amazonaws/services/ec2/model/SpotInstanceType;

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->type:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public withType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->type:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public withValidFrom(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "validFrom"    # Ljava/util/Date;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->validFrom:Ljava/util/Date;

    .line 348
    return-object p0
.end method

.method public withValidUntil(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    .locals 0
    .param p1, "validUntil"    # Ljava/util/Date;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->validUntil:Ljava/util/Date;

    .line 382
    return-object p0
.end method
