.class public Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "UpdateAutoScalingGroupRequest.java"

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

.field private maxSize:Ljava/lang/Integer;

.field private minSize:Ljava/lang/Integer;

.field private placementGroup:Ljava/lang/String;

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
    .line 43
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

    .line 859
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 889
    :cond_0
    :goto_0
    return v3

    .line 860
    :cond_1
    if-eqz p1, :cond_0

    .line 862
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 863
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;

    .line 865
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 866
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 868
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 870
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 872
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 874
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 876
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 878
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 880
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 882
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 884
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_23

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 886
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_24

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_25

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 888
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    move v3, v2

    .line 889
    goto/16 :goto_0

    :cond_e
    move v1, v3

    .line 865
    goto/16 :goto_1

    :cond_f
    move v4, v3

    goto/16 :goto_2

    :cond_10
    move v1, v3

    .line 867
    goto/16 :goto_3

    :cond_11
    move v4, v3

    goto/16 :goto_4

    :cond_12
    move v1, v3

    .line 869
    goto/16 :goto_5

    :cond_13
    move v4, v3

    goto/16 :goto_6

    :cond_14
    move v1, v3

    .line 871
    goto/16 :goto_7

    :cond_15
    move v4, v3

    goto/16 :goto_8

    :cond_16
    move v1, v3

    .line 873
    goto/16 :goto_9

    :cond_17
    move v4, v3

    goto/16 :goto_a

    :cond_18
    move v1, v3

    .line 875
    goto/16 :goto_b

    :cond_19
    move v4, v3

    goto/16 :goto_c

    :cond_1a
    move v1, v3

    .line 877
    goto/16 :goto_d

    :cond_1b
    move v4, v3

    goto/16 :goto_e

    :cond_1c
    move v1, v3

    .line 879
    goto/16 :goto_f

    :cond_1d
    move v4, v3

    goto/16 :goto_10

    :cond_1e
    move v1, v3

    .line 881
    goto/16 :goto_11

    :cond_1f
    move v4, v3

    goto/16 :goto_12

    :cond_20
    move v1, v3

    .line 883
    goto/16 :goto_13

    :cond_21
    move v4, v3

    goto/16 :goto_14

    :cond_22
    move v1, v3

    .line 885
    goto/16 :goto_15

    :cond_23
    move v4, v3

    goto :goto_16

    :cond_24
    move v1, v3

    .line 887
    goto :goto_17

    :cond_25
    move v4, v3

    goto :goto_18
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

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
    .line 389
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultCooldown()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->defaultCooldown:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDesiredCapacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->desiredCapacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHealthCheckGracePeriod()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckGracePeriod:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHealthCheckType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckType:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->launchConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->maxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->minSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPlacementGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->placementGroup:Ljava/lang/String;

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
    .line 711
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    return-object v0
.end method

.method public getVPCZoneIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->vPCZoneIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 839
    const/16 v1, 0x1f

    .line 840
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 842
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 843
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 844
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 845
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 846
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 847
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 848
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 849
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 850
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 851
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 852
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 853
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    :goto_b
    add-int v0, v2, v3

    .line 854
    return v0

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 843
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 844
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 845
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    .line 846
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    .line 847
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_5

    .line 848
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    .line 849
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 850
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_8

    .line 851
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 852
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    .line 853
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_b
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 169
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
    .line 404
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 405
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public setDefaultCooldown(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "defaultCooldown"    # Ljava/lang/Integer;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->defaultCooldown:Ljava/lang/Integer;

    .line 359
    return-void
.end method

.method public setDesiredCapacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->desiredCapacity:Ljava/lang/Integer;

    .line 321
    return-void
.end method

.method public setHealthCheckGracePeriod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "healthCheckGracePeriod"    # Ljava/lang/Integer;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckGracePeriod:Ljava/lang/Integer;

    .line 536
    return-void
.end method

.method public setHealthCheckType(Ljava/lang/String;)V
    .locals 0
    .param p1, "healthCheckType"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckType:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->launchConfigurationName:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setMaxSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->maxSize:Ljava/lang/Integer;

    .line 287
    return-void
.end method

.method public setMinSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minSize"    # Ljava/lang/Integer;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->minSize:Ljava/lang/Integer;

    .line 253
    return-void
.end method

.method public setPlacementGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementGroup"    # Ljava/lang/String;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->placementGroup:Ljava/lang/String;

    .line 594
    return-void
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
    .line 735
    .local p1, "terminationPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 736
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 741
    .local v0, "terminationPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 742
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public setVPCZoneIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "vPCZoneIdentifier"    # Ljava/lang/String;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->vPCZoneIdentifier:Ljava/lang/String;

    .line 662
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesiredCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultCooldown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheckType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheckGracePeriod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlacementGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPCZoneIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TerminationPolicies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :cond_b
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public withAvailabilityZones(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    .line 457
    :goto_0
    return-object p0

    .line 452
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 453
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAvailabilityZones([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 6
    .param p1, "availabilityZones"    # [Ljava/lang/String;

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->setAvailabilityZones(Ljava/util/Collection;)V

    .line 429
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

    .line 430
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withDefaultCooldown(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "defaultCooldown"    # Ljava/lang/Integer;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->defaultCooldown:Ljava/lang/Integer;

    .line 375
    return-object p0
.end method

.method public withDesiredCapacity(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->desiredCapacity:Ljava/lang/Integer;

    .line 335
    return-object p0
.end method

.method public withHealthCheckGracePeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "healthCheckGracePeriod"    # Ljava/lang/Integer;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckGracePeriod:Ljava/lang/Integer;

    .line 554
    return-object p0
.end method

.method public withHealthCheckType(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "healthCheckType"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckType:Ljava/lang/String;

    .line 508
    return-object p0
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->launchConfigurationName:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public withMaxSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->maxSize:Ljava/lang/Integer;

    .line 301
    return-object p0
.end method

.method public withMinSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "minSize"    # Ljava/lang/Integer;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->minSize:Ljava/lang/Integer;

    .line 267
    return-object p0
.end method

.method public withPlacementGroup(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "placementGroup"    # Ljava/lang/String;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->placementGroup:Ljava/lang/String;

    .line 618
    return-object p0
.end method

.method public withTerminationPolicies(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;"
        }
    .end annotation

    .prologue
    .line 798
    .local p1, "terminationPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 799
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    .line 806
    :goto_0
    return-object p0

    .line 801
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 802
    .local v0, "terminationPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 803
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTerminationPolicies([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 6
    .param p1, "terminationPolicies"    # [Ljava/lang/String;

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->setTerminationPolicies(Ljava/util/Collection;)V

    .line 769
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

    .line 770
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withVPCZoneIdentifier(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0
    .param p1, "vPCZoneIdentifier"    # Ljava/lang/String;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->vPCZoneIdentifier:Ljava/lang/String;

    .line 688
    return-object p0
.end method
