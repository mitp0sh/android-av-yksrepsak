.class public Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateAutoScalingGroupRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private availabilityZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCooldown:Ljava/lang/Integer;

.field private desiredCapacity:Ljava/lang/Integer;

.field private healthCheckGracePeriod:Ljava/lang/Integer;

.field private healthCheckType:Ljava/lang/String;

.field private launchConfigurationName:Ljava/lang/String;

.field private loadBalancerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:Ljava/lang/Integer;

.field private minSize:Ljava/lang/Integer;

.field private placementGroup:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private terminationPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vPCZoneIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
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

    .line 1027
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 1061
    :cond_0
    :goto_0
    return v3

    .line 1028
    :cond_1
    if-eqz p1, :cond_0

    .line 1030
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1031
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;

    .line 1033
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1034
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1036
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1038
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1040
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1042
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1046
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1048
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1050
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1051
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_22

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_23

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1052
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1054
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_26

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1056
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_28

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_29

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1058
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2a

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2b

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1060
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    move v3, v2

    .line 1061
    goto/16 :goto_0

    :cond_10
    move v1, v3

    .line 1033
    goto/16 :goto_1

    :cond_11
    move v4, v3

    goto/16 :goto_2

    :cond_12
    move v1, v3

    .line 1035
    goto/16 :goto_3

    :cond_13
    move v4, v3

    goto/16 :goto_4

    :cond_14
    move v1, v3

    .line 1037
    goto/16 :goto_5

    :cond_15
    move v4, v3

    goto/16 :goto_6

    :cond_16
    move v1, v3

    .line 1039
    goto/16 :goto_7

    :cond_17
    move v4, v3

    goto/16 :goto_8

    :cond_18
    move v1, v3

    .line 1041
    goto/16 :goto_9

    :cond_19
    move v4, v3

    goto/16 :goto_a

    :cond_1a
    move v1, v3

    .line 1043
    goto/16 :goto_b

    :cond_1b
    move v4, v3

    goto/16 :goto_c

    :cond_1c
    move v1, v3

    .line 1045
    goto/16 :goto_d

    :cond_1d
    move v4, v3

    goto/16 :goto_e

    :cond_1e
    move v1, v3

    .line 1047
    goto/16 :goto_f

    :cond_1f
    move v4, v3

    goto/16 :goto_10

    :cond_20
    move v1, v3

    .line 1049
    goto/16 :goto_11

    :cond_21
    move v4, v3

    goto/16 :goto_12

    :cond_22
    move v1, v3

    .line 1051
    goto/16 :goto_13

    :cond_23
    move v4, v3

    goto/16 :goto_14

    :cond_24
    move v1, v3

    .line 1053
    goto/16 :goto_15

    :cond_25
    move v4, v3

    goto/16 :goto_16

    :cond_26
    move v1, v3

    .line 1055
    goto/16 :goto_17

    :cond_27
    move v4, v3

    goto/16 :goto_18

    :cond_28
    move v1, v3

    .line 1057
    goto/16 :goto_19

    :cond_29
    move v4, v3

    goto/16 :goto_1a

    :cond_2a
    move v1, v3

    .line 1059
    goto :goto_1b

    :cond_2b
    move v4, v3

    goto :goto_1c
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailabilityZones()Ljava/util/List;
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
    .line 403
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultCooldown()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->defaultCooldown:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDesiredCapacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->desiredCapacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHealthCheckGracePeriod()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->healthCheckGracePeriod:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHealthCheckType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->healthCheckType:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->launchConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadBalancerNames()Ljava/util/List;
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
    .line 481
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->loadBalancerNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->loadBalancerNames:Ljava/util/List;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->loadBalancerNames:Ljava/util/List;

    return-object v0
.end method

.method public getMaxSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->maxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->minSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPlacementGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->placementGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->tags:Ljava/util/List;

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTerminationPolicies()Ljava/util/List;
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
    .line 782
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    return-object v0
.end method

.method public getVPCZoneIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->vPCZoneIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1005
    const/16 v1, 0x1f

    .line 1006
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 1008
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 1009
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1010
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1011
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1012
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1013
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1014
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1015
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 1016
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 1017
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 1018
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 1019
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 1020
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 1021
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_d

    :goto_d
    add-int v0, v2, v3

    .line 1022
    return v0

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1010
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1011
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1012
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1013
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1014
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1015
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1016
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1017
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1018
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1019
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1020
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 1021
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_d
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setAvailabilityZones(Ljava/util/Collection;)V
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
    .line 418
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 419
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    .line 426
    :goto_0
    return-void

    .line 423
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public setDefaultCooldown(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "defaultCooldown"    # Ljava/lang/Integer;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->defaultCooldown:Ljava/lang/Integer;

    .line 373
    return-void
.end method

.method public setDesiredCapacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->desiredCapacity:Ljava/lang/Integer;

    .line 333
    return-void
.end method

.method public setHealthCheckGracePeriod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "healthCheckGracePeriod"    # Ljava/lang/Integer;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->healthCheckGracePeriod:Ljava/lang/Integer;

    .line 615
    return-void
.end method

.method public setHealthCheckType(Ljava/lang/String;)V
    .locals 0
    .param p1, "healthCheckType"    # Ljava/lang/String;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->healthCheckType:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->launchConfigurationName:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setLoadBalancerNames(Ljava/util/Collection;)V
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
    .line 493
    .local p1, "loadBalancerNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->loadBalancerNames:Ljava/util/List;

    .line 501
    :goto_0
    return-void

    .line 498
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 499
    .local v0, "loadBalancerNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 500
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->loadBalancerNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setMaxSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->maxSize:Ljava/lang/Integer;

    .line 295
    return-void
.end method

.method public setMinSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minSize"    # Ljava/lang/Integer;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->minSize:Ljava/lang/Integer;

    .line 261
    return-void
.end method

.method public setPlacementGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementGroup"    # Ljava/lang/String;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->placementGroup:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/Tag;>;"
    if-nez p1, :cond_0

    .line 912
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->tags:Ljava/util/List;

    .line 919
    :goto_0
    return-void

    .line 916
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 917
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 918
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setTerminationPolicies(Ljava/util/Collection;)V
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
    .line 806
    .local p1, "terminationPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 807
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    .line 814
    :goto_0
    return-void

    .line 811
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 812
    .local v0, "terminationPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 813
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public setVPCZoneIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "vPCZoneIdentifier"    # Ljava/lang/String;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->vPCZoneIdentifier:Ljava/lang/String;

    .line 735
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 984
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesiredCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultCooldown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheckType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheckGracePeriod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlacementGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPCZoneIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TerminationPolicies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :cond_d
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public withAvailabilityZones(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 464
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    .line 471
    :goto_0
    return-object p0

    .line 466
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 467
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 468
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAvailabilityZones([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 6
    .param p1, "availabilityZones"    # [Ljava/lang/String;

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->setAvailabilityZones(Ljava/util/Collection;)V

    .line 443
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

    .line 444
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withDefaultCooldown(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "defaultCooldown"    # Ljava/lang/Integer;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->defaultCooldown:Ljava/lang/Integer;

    .line 389
    return-object p0
.end method

.method public withDesiredCapacity(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->desiredCapacity:Ljava/lang/Integer;

    .line 349
    return-object p0
.end method

.method public withHealthCheckGracePeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "healthCheckGracePeriod"    # Ljava/lang/Integer;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->healthCheckGracePeriod:Ljava/lang/Integer;

    .line 631
    return-object p0
.end method

.method public withHealthCheckType(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "healthCheckType"    # Ljava/lang/String;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->healthCheckType:Ljava/lang/String;

    .line 591
    return-object p0
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->launchConfigurationName:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public withLoadBalancerNames(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "loadBalancerNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 533
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->loadBalancerNames:Ljava/util/List;

    .line 540
    :goto_0
    return-object p0

    .line 535
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    .local v0, "loadBalancerNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 537
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->loadBalancerNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withLoadBalancerNames([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 6
    .param p1, "loadBalancerNames"    # [Ljava/lang/String;

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->setLoadBalancerNames(Ljava/util/Collection;)V

    .line 515
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

    .line 516
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withMaxSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->maxSize:Ljava/lang/Integer;

    .line 309
    return-object p0
.end method

.method public withMinSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "minSize"    # Ljava/lang/Integer;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->minSize:Ljava/lang/Integer;

    .line 275
    return-object p0
.end method

.method public withPlacementGroup(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "placementGroup"    # Ljava/lang/String;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->placementGroup:Ljava/lang/String;

    .line 695
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;"
        }
    .end annotation

    .prologue
    .line 962
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/Tag;>;"
    if-nez p1, :cond_0

    .line 963
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->tags:Ljava/util/List;

    .line 970
    :goto_0
    return-object p0

    .line 965
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 966
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 967
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/autoscaling/model/Tag;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/autoscaling/model/Tag;

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->setTags(Ljava/util/Collection;)V

    .line 939
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/Tag;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 940
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 942
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withTerminationPolicies(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, "terminationPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 870
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    .line 877
    :goto_0
    return-object p0

    .line 872
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 873
    .local v0, "terminationPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 874
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTerminationPolicies([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 6
    .param p1, "terminationPolicies"    # [Ljava/lang/String;

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->setTerminationPolicies(Ljava/util/Collection;)V

    .line 840
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

    .line 841
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withVPCZoneIdentifier(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .locals 0
    .param p1, "vPCZoneIdentifier"    # Ljava/lang/String;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->vPCZoneIdentifier:Ljava/lang/String;

    .line 759
    return-object p0
.end method
