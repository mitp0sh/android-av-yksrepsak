.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;
.super Ljava/lang/Object;
.source "LoadBalancerDescriptionStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;

    .line 124
    :cond_0
    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 6
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;-><init>()V

    .line 37
    .local v0, "loadBalancerDescription":Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
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

    .line 115
    :goto_1
    return-object v0

    .line 48
    :cond_1
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 49
    :cond_2
    const-string v4, "LoadBalancerName"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setLoadBalancerName(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v4, "DNSName"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 54
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setDNSName(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string v4, "CanonicalHostedZoneName"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 58
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setCanonicalHostedZoneName(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_5
    const-string v4, "CanonicalHostedZoneNameID"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 62
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setCanonicalHostedZoneNameID(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_6
    const-string v4, "ListenerDescriptions/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 66
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ListenerDescriptionStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/ListenerDescriptionStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ListenerDescriptionStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_7
    const-string v4, "Policies"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 70
    invoke-static {}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PoliciesStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/PoliciesStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PoliciesStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/Policies;)V

    goto/16 :goto_0

    .line 73
    :cond_8
    const-string v4, "BackendServerDescriptions/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 74
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/BackendServerDescriptionStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/BackendServerDescriptionStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/BackendServerDescriptionStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 77
    :cond_9
    const-string v4, "AvailabilityZones/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 78
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :cond_a
    const-string v4, "Subnets/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 82
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    :cond_b
    const-string v4, "VPCId"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 86
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setVPCId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_c
    const-string v4, "Instances/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 90
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InstanceStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/InstanceStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InstanceStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/Instance;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 93
    :cond_d
    const-string v4, "HealthCheck"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 94
    invoke-static {}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/HealthCheckStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/HealthCheckStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/HealthCheckStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setHealthCheck(Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;)V

    goto/16 :goto_0

    .line 97
    :cond_e
    const-string v4, "SourceSecurityGroup"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 98
    invoke-static {}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SourceSecurityGroupStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/SourceSecurityGroupStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SourceSecurityGroupStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setSourceSecurityGroup(Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;)V

    goto/16 :goto_0

    .line 101
    :cond_f
    const-string v4, "SecurityGroups/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 102
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 105
    :cond_10
    const-string v4, "CreatedTime"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 106
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setCreatedTime(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 109
    :cond_11
    const-string v4, "Scheme"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setScheme(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_12
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerDescriptionStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;

    move-result-object v0

    return-object v0
.end method
