.class public Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
.super Ljava/lang/Object;
.source "AutoScalingGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupARN:Ljava/lang/String;

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

.field private createdTime:Ljava/util/Date;

.field private defaultCooldown:Ljava/lang/Integer;

.field private desiredCapacity:Ljava/lang/Integer;

.field private enabledMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/EnabledMetric;",
            ">;"
        }
    .end annotation
.end field

.field private healthCheckGracePeriod:Ljava/lang/Integer;

.field private healthCheckType:Ljava/lang/String;

.field private instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Instance;",
            ">;"
        }
    .end annotation
.end field

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

.field private status:Ljava/lang/String;

.field private suspendedProcesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/TagDescription;",
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

    .line 1329
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 1375
    :cond_0
    :goto_0
    return v3

    .line 1330
    :cond_1
    if-eqz p1, :cond_0

    .line 1332
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1333
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;

    .line 1335
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1336
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupARN()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupARN()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1338
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupARN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupARN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1340
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1341
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMinSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1342
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMinSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMaxSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1344
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMaxSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1345
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_20

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_21

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1346
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1347
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_22

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_23

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1348
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1349
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_24

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_25

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1350
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_26

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_27

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1352
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1353
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_29

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1354
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2a

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2b

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1356
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1357
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2c

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2d

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1358
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1359
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2e

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getCreatedTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_2f

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1360
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getCreatedTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_30

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_31

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1362
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_32

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getPlacementGroup()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_33

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1364
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getPlacementGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    :cond_10
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_34

    move v1, v2

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_35

    move v4, v2

    :goto_20
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1366
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    :cond_11
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_36

    move v1, v2

    :goto_21
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_37

    move v4, v2

    :goto_22
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1368
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    :cond_12
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_38

    move v1, v2

    :goto_23
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_39

    move v4, v2

    :goto_24
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1370
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    :cond_13
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3a

    move v1, v2

    :goto_25
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3b

    move v4, v2

    :goto_26
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1372
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1373
    :cond_14
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3c

    move v1, v2

    :goto_27
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3d

    move v4, v2

    :goto_28
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1374
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    move v3, v2

    .line 1375
    goto/16 :goto_0

    :cond_16
    move v1, v3

    .line 1335
    goto/16 :goto_1

    :cond_17
    move v4, v3

    goto/16 :goto_2

    :cond_18
    move v1, v3

    .line 1337
    goto/16 :goto_3

    :cond_19
    move v4, v3

    goto/16 :goto_4

    :cond_1a
    move v1, v3

    .line 1339
    goto/16 :goto_5

    :cond_1b
    move v4, v3

    goto/16 :goto_6

    :cond_1c
    move v1, v3

    .line 1341
    goto/16 :goto_7

    :cond_1d
    move v4, v3

    goto/16 :goto_8

    :cond_1e
    move v1, v3

    .line 1343
    goto/16 :goto_9

    :cond_1f
    move v4, v3

    goto/16 :goto_a

    :cond_20
    move v1, v3

    .line 1345
    goto/16 :goto_b

    :cond_21
    move v4, v3

    goto/16 :goto_c

    :cond_22
    move v1, v3

    .line 1347
    goto/16 :goto_d

    :cond_23
    move v4, v3

    goto/16 :goto_e

    :cond_24
    move v1, v3

    .line 1349
    goto/16 :goto_f

    :cond_25
    move v4, v3

    goto/16 :goto_10

    :cond_26
    move v1, v3

    .line 1351
    goto/16 :goto_11

    :cond_27
    move v4, v3

    goto/16 :goto_12

    :cond_28
    move v1, v3

    .line 1353
    goto/16 :goto_13

    :cond_29
    move v4, v3

    goto/16 :goto_14

    :cond_2a
    move v1, v3

    .line 1355
    goto/16 :goto_15

    :cond_2b
    move v4, v3

    goto/16 :goto_16

    :cond_2c
    move v1, v3

    .line 1357
    goto/16 :goto_17

    :cond_2d
    move v4, v3

    goto/16 :goto_18

    :cond_2e
    move v1, v3

    .line 1359
    goto/16 :goto_19

    :cond_2f
    move v4, v3

    goto/16 :goto_1a

    :cond_30
    move v1, v3

    .line 1361
    goto/16 :goto_1b

    :cond_31
    move v4, v3

    goto/16 :goto_1c

    :cond_32
    move v1, v3

    .line 1363
    goto/16 :goto_1d

    :cond_33
    move v4, v3

    goto/16 :goto_1e

    :cond_34
    move v1, v3

    .line 1365
    goto/16 :goto_1f

    :cond_35
    move v4, v3

    goto/16 :goto_20

    :cond_36
    move v1, v3

    .line 1367
    goto/16 :goto_21

    :cond_37
    move v4, v3

    goto/16 :goto_22

    :cond_38
    move v1, v3

    .line 1369
    goto/16 :goto_23

    :cond_39
    move v4, v3

    goto/16 :goto_24

    :cond_3a
    move v1, v3

    .line 1371
    goto/16 :goto_25

    :cond_3b
    move v4, v3

    goto/16 :goto_26

    :cond_3c
    move v1, v3

    .line 1373
    goto/16 :goto_27

    :cond_3d
    move v4, v3

    goto/16 :goto_28
.end method

.method public getAutoScalingGroupARN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->autoScalingGroupARN:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->autoScalingGroupName:Ljava/lang/String;

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
    .line 458
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->availabilityZones:Ljava/util/List;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->availabilityZones:Ljava/util/List;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->availabilityZones:Ljava/util/List;

    return-object v0
.end method

.method public getCreatedTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDefaultCooldown()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->defaultCooldown:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDesiredCapacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->desiredCapacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEnabledMetrics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/EnabledMetric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->enabledMetrics:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->enabledMetrics:Ljava/util/List;

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->enabledMetrics:Ljava/util/List;

    return-object v0
.end method

.method public getHealthCheckGracePeriod()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->healthCheckGracePeriod:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHealthCheckType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->healthCheckType:Ljava/lang/String;

    return-object v0
.end method

.method public getInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->instances:Ljava/util/List;

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->instances:Ljava/util/List;

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->instances:Ljava/util/List;

    return-object v0
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->launchConfigurationName:Ljava/lang/String;

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
    .line 536
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->loadBalancerNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->loadBalancerNames:Ljava/util/List;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->loadBalancerNames:Ljava/util/List;

    return-object v0
.end method

.method public getMaxSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->maxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->minSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPlacementGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->placementGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSuspendedProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->suspendedProcesses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->suspendedProcesses:Ljava/util/List;

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->suspendedProcesses:Ljava/util/List;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/TagDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->tags:Ljava/util/List;

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->tags:Ljava/util/List;

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
    .line 1195
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->terminationPolicies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->terminationPolicies:Ljava/util/List;

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->terminationPolicies:Ljava/util/List;

    return-object v0
.end method

.method public getVPCZoneIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->vPCZoneIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1301
    const/16 v1, 0x1f

    .line 1302
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 1304
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 1305
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupARN()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1306
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1307
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1308
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1309
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1310
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1311
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 1312
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 1313
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 1314
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 1315
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 1316
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 1317
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 1318
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getPlacementGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_e
    add-int v0, v4, v2

    .line 1319
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v3

    :goto_f
    add-int v0, v4, v2

    .line 1320
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_10

    move v2, v3

    :goto_10
    add-int v0, v4, v2

    .line 1321
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    move v2, v3

    :goto_11
    add-int v0, v4, v2

    .line 1322
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_12

    move v2, v3

    :goto_12
    add-int v0, v4, v2

    .line 1323
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_13

    :goto_13
    add-int v0, v2, v3

    .line 1324
    return v0

    .line 1304
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1305
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1306
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1307
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1308
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1309
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1310
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1311
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1312
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1313
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1314
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1315
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1316
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 1317
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 1318
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getPlacementGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 1319
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 1320
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 1321
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 1322
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 1323
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_13
.end method

.method public setAutoScalingGroupARN(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupARN"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->autoScalingGroupARN:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->autoScalingGroupName:Ljava/lang/String;

    .line 192
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
    .line 473
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 474
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->availabilityZones:Ljava/util/List;

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 479
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public setCreatedTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "createdTime"    # Ljava/util/Date;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->createdTime:Ljava/util/Date;

    .line 781
    return-void
.end method

.method public setDefaultCooldown(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "defaultCooldown"    # Ljava/lang/Integer;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->defaultCooldown:Ljava/lang/Integer;

    .line 428
    return-void
.end method

.method public setDesiredCapacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->desiredCapacity:Ljava/lang/Integer;

    .line 390
    return-void
.end method

.method public setEnabledMetrics(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/EnabledMetric;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p1, "enabledMetrics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/EnabledMetric;>;"
    if-nez p1, :cond_0

    .line 1022
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->enabledMetrics:Ljava/util/List;

    .line 1029
    :goto_0
    return-void

    .line 1026
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1027
    .local v0, "enabledMetricsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/EnabledMetric;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1028
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->enabledMetrics:Ljava/util/List;

    goto :goto_0
.end method

.method public setHealthCheckGracePeriod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "healthCheckGracePeriod"    # Ljava/lang/Integer;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->healthCheckGracePeriod:Ljava/lang/Integer;

    .line 674
    return-void
.end method

.method public setHealthCheckType(Ljava/lang/String;)V
    .locals 0
    .param p1, "healthCheckType"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->healthCheckType:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public setInstances(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Instance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, "instances":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/Instance;>;"
    if-nez p1, :cond_0

    .line 716
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->instances:Ljava/util/List;

    .line 723
    :goto_0
    return-void

    .line 720
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 721
    .local v0, "instancesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/Instance;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 722
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->launchConfigurationName:Ljava/lang/String;

    .line 284
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
    .line 548
    .local p1, "loadBalancerNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 549
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->loadBalancerNames:Ljava/util/List;

    .line 556
    :goto_0
    return-void

    .line 553
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 554
    .local v0, "loadBalancerNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 555
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->loadBalancerNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setMaxSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->maxSize:Ljava/lang/Integer;

    .line 356
    return-void
.end method

.method public setMinSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minSize"    # Ljava/lang/Integer;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->minSize:Ljava/lang/Integer;

    .line 322
    return-void
.end method

.method public setPlacementGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementGroup"    # Ljava/lang/String;

    .prologue
    .line 903
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->placementGroup:Ljava/lang/String;

    .line 904
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->status:Ljava/lang/String;

    .line 1095
    return-void
.end method

.method public setSuspendedProcesses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    .local p1, "suspendedProcesses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;>;"
    if-nez p1, :cond_0

    .line 819
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->suspendedProcesses:Ljava/util/List;

    .line 826
    :goto_0
    return-void

    .line 823
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 824
    .local v0, "suspendedProcessesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 825
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->suspendedProcesses:Ljava/util/List;

    goto :goto_0
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/TagDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1136
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/TagDescription;>;"
    if-nez p1, :cond_0

    .line 1137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->tags:Ljava/util/List;

    .line 1144
    :goto_0
    return-void

    .line 1141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1142
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/TagDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1143
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->tags:Ljava/util/List;

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
    .line 1209
    .local p1, "terminationPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->terminationPolicies:Ljava/util/List;

    .line 1217
    :goto_0
    return-void

    .line 1214
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1215
    .local v0, "terminationPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1216
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->terminationPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public setVPCZoneIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "vPCZoneIdentifier"    # Ljava/lang/String;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->vPCZoneIdentifier:Ljava/lang/String;

    .line 972
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1274
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAutoScalingGroupARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesiredCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultCooldown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheckType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheckGracePeriod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuspendedProcesses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlacementGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getPlacementGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPCZoneIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnabledMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TerminationPolicies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    :cond_13
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupARN(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "autoScalingGroupARN"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->autoScalingGroupARN:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->autoScalingGroupName:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public withAvailabilityZones(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 519
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->availabilityZones:Ljava/util/List;

    .line 526
    :goto_0
    return-object p0

    .line 521
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 522
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 523
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAvailabilityZones([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 6
    .param p1, "availabilityZones"    # [Ljava/lang/String;

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setAvailabilityZones(Ljava/util/Collection;)V

    .line 498
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

    .line 499
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withCreatedTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "createdTime"    # Ljava/util/Date;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->createdTime:Ljava/util/Date;

    .line 795
    return-object p0
.end method

.method public withDefaultCooldown(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "defaultCooldown"    # Ljava/lang/Integer;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->defaultCooldown:Ljava/lang/Integer;

    .line 444
    return-object p0
.end method

.method public withDesiredCapacity(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->desiredCapacity:Ljava/lang/Integer;

    .line 404
    return-object p0
.end method

.method public withEnabledMetrics(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/EnabledMetric;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;"
        }
    .end annotation

    .prologue
    .line 1060
    .local p1, "enabledMetrics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/EnabledMetric;>;"
    if-nez p1, :cond_0

    .line 1061
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->enabledMetrics:Ljava/util/List;

    .line 1068
    :goto_0
    return-object p0

    .line 1063
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1064
    .local v0, "enabledMetricsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/EnabledMetric;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1065
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->enabledMetrics:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withEnabledMetrics([Lcom/amazonaws/services/autoscaling/model/EnabledMetric;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 6
    .param p1, "enabledMetrics"    # [Lcom/amazonaws/services/autoscaling/model/EnabledMetric;

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setEnabledMetrics(Ljava/util/Collection;)V

    .line 1043
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/EnabledMetric;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1044
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/EnabledMetric;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/EnabledMetric;
    :cond_1
    return-object p0
.end method

.method public withHealthCheckGracePeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "healthCheckGracePeriod"    # Ljava/lang/Integer;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->healthCheckGracePeriod:Ljava/lang/Integer;

    .line 692
    return-object p0
.end method

.method public withHealthCheckType(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "healthCheckType"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->healthCheckType:Ljava/lang/String;

    .line 646
    return-object p0
.end method

.method public withInstances(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/Instance;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "instances":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/Instance;>;"
    if-nez p1, :cond_0

    .line 755
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->instances:Ljava/util/List;

    .line 762
    :goto_0
    return-object p0

    .line 757
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 758
    .local v0, "instancesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/Instance;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 759
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInstances([Lcom/amazonaws/services/autoscaling/model/Instance;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 6
    .param p1, "instances"    # [Lcom/amazonaws/services/autoscaling/model/Instance;

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setInstances(Ljava/util/Collection;)V

    .line 737
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/Instance;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 738
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/Instance;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/Instance;
    :cond_1
    return-object p0
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->launchConfigurationName:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public withLoadBalancerNames(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "loadBalancerNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 588
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->loadBalancerNames:Ljava/util/List;

    .line 595
    :goto_0
    return-object p0

    .line 590
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 591
    .local v0, "loadBalancerNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 592
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->loadBalancerNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withLoadBalancerNames([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 6
    .param p1, "loadBalancerNames"    # [Ljava/lang/String;

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setLoadBalancerNames(Ljava/util/Collection;)V

    .line 570
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

    .line 571
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withMaxSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->maxSize:Ljava/lang/Integer;

    .line 370
    return-object p0
.end method

.method public withMinSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "minSize"    # Ljava/lang/Integer;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->minSize:Ljava/lang/Integer;

    .line 336
    return-object p0
.end method

.method public withPlacementGroup(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "placementGroup"    # Ljava/lang/String;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->placementGroup:Ljava/lang/String;

    .line 928
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->status:Ljava/lang/String;

    .line 1113
    return-object p0
.end method

.method public withSuspendedProcesses(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;"
        }
    .end annotation

    .prologue
    .line 857
    .local p1, "suspendedProcesses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;>;"
    if-nez p1, :cond_0

    .line 858
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->suspendedProcesses:Ljava/util/List;

    .line 865
    :goto_0
    return-object p0

    .line 860
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 861
    .local v0, "suspendedProcessesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 862
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->suspendedProcesses:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSuspendedProcesses([Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 6
    .param p1, "suspendedProcesses"    # [Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setSuspendedProcesses(Ljava/util/Collection;)V

    .line 840
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 841
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;
    :cond_1
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/TagDescription;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;"
        }
    .end annotation

    .prologue
    .line 1175
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/TagDescription;>;"
    if-nez p1, :cond_0

    .line 1176
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->tags:Ljava/util/List;

    .line 1183
    :goto_0
    return-object p0

    .line 1178
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1179
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/TagDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1180
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/autoscaling/model/TagDescription;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/autoscaling/model/TagDescription;

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setTags(Ljava/util/Collection;)V

    .line 1158
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/TagDescription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1159
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/TagDescription;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1161
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/TagDescription;
    :cond_1
    return-object p0
.end method

.method public withTerminationPolicies(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;"
        }
    .end annotation

    .prologue
    .line 1252
    .local p1, "terminationPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1253
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->terminationPolicies:Ljava/util/List;

    .line 1260
    :goto_0
    return-object p0

    .line 1255
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1256
    .local v0, "terminationPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1257
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->terminationPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTerminationPolicies([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 6
    .param p1, "terminationPolicies"    # [Ljava/lang/String;

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setTerminationPolicies(Ljava/util/Collection;)V

    .line 1233
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

    .line 1234
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1236
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withVPCZoneIdentifier(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 0
    .param p1, "vPCZoneIdentifier"    # Ljava/lang/String;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->vPCZoneIdentifier:Ljava/lang/String;

    .line 998
    return-object p0
.end method
