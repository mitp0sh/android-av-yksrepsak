.class public Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;
.super Ljava/lang/Object;
.source "AutoScalingGroupStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;->instance:Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;->instance:Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;

    .line 140
    :cond_0
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;->instance:Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    .locals 6
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;-><init>()V

    .line 37
    .local v0, "autoScalingGroup":Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    .line 38
    .local v1, "originalDepth":I
    add-int/lit8 v2, v1, 0x1

    .line 41
    .local v2, "targetDepth":I
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x2

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v3

    .line 46
    .local v3, "xmlEvent":Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    :goto_1
    return-object v0

    .line 48
    :cond_1
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 49
    :cond_2
    const-string v4, "AutoScalingGroupName"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setAutoScalingGroupName(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v4, "AutoScalingGroupARN"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 54
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setAutoScalingGroupARN(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string v4, "LaunchConfigurationName"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 58
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setLaunchConfigurationName(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_5
    const-string v4, "MinSize"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 62
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setMinSize(Ljava/lang/Integer;)V

    goto :goto_0

    .line 65
    :cond_6
    const-string v4, "MaxSize"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 66
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setMaxSize(Ljava/lang/Integer;)V

    goto :goto_0

    .line 69
    :cond_7
    const-string v4, "DesiredCapacity"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 70
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setDesiredCapacity(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 73
    :cond_8
    const-string v4, "DefaultCooldown"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 74
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setDefaultCooldown(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 77
    :cond_9
    const-string v4, "AvailabilityZones/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 78
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :cond_a
    const-string v4, "LoadBalancerNames/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 82
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    :cond_b
    const-string v4, "HealthCheckType"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 86
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setHealthCheckType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_c
    const-string v4, "HealthCheckGracePeriod"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 90
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setHealthCheckGracePeriod(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 93
    :cond_d
    const-string v4, "Instances/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 94
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/autoscaling/model/transform/InstanceStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/autoscaling/model/transform/InstanceStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/autoscaling/model/transform/InstanceStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/autoscaling/model/Instance;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 97
    :cond_e
    const-string v4, "CreatedTime"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 98
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setCreatedTime(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 101
    :cond_f
    const-string v4, "SuspendedProcesses/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 102
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getSuspendedProcesses()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/autoscaling/model/transform/SuspendedProcessStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/autoscaling/model/transform/SuspendedProcessStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/autoscaling/model/transform/SuspendedProcessStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/autoscaling/model/SuspendedProcess;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 105
    :cond_10
    const-string v4, "PlacementGroup"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 106
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setPlacementGroup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_11
    const-string v4, "VPCZoneIdentifier"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 110
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setVPCZoneIdentifier(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_12
    const-string v4, "EnabledMetrics/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 114
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getEnabledMetrics()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/autoscaling/model/transform/EnabledMetricStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/autoscaling/model/transform/EnabledMetricStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/autoscaling/model/transform/EnabledMetricStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/autoscaling/model/EnabledMetric;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    :cond_13
    const-string v4, "Status"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 118
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_14
    const-string v4, "Tags/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 122
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/autoscaling/model/transform/TagDescriptionStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/autoscaling/model/transform/TagDescriptionStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/autoscaling/model/transform/TagDescriptionStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/autoscaling/model/TagDescription;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 125
    :cond_15
    const-string v4, "TerminationPolicies/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;->getTerminationPolicies()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 129
    :cond_16
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-ge v4, v1, :cond_0

    goto/16 :goto_1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/AutoScalingGroupStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;

    move-result-object v0

    return-object v0
.end method
