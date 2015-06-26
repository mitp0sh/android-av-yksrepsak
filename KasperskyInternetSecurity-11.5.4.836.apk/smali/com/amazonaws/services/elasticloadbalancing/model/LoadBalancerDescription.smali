.class public Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
.super Ljava/lang/Object;
.source "LoadBalancerDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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

.field private backendServerDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;",
            ">;"
        }
    .end annotation
.end field

.field private canonicalHostedZoneName:Ljava/lang/String;

.field private canonicalHostedZoneNameID:Ljava/lang/String;

.field private createdTime:Ljava/util/Date;

.field private dNSName:Ljava/lang/String;

.field private healthCheck:Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

.field private instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private listenerDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;",
            ">;"
        }
    .end annotation
.end field

.field private loadBalancerName:Ljava/lang/String;

.field private policies:Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

.field private scheme:Ljava/lang/String;

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

.field private sourceSecurityGroup:Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

.field private subnets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vPCId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
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

    .line 1081
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 1119
    :cond_0
    :goto_0
    return v3

    .line 1082
    :cond_1
    if-eqz p1, :cond_0

    .line 1084
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1085
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;

    .line 1087
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1088
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1090
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1092
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1094
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1095
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1096
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1098
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1100
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_20

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_21

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1102
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_22

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_23

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1104
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1106
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_26

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_27

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1108
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v1

    if-nez v1, :cond_28

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v4

    if-nez v4, :cond_29

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1110
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v1

    if-nez v1, :cond_2a

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v4

    if-nez v4, :cond_2b

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1112
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2c

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2d

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1114
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2e

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_2f

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1116
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    :cond_10
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    move v1, v2

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_31

    move v4, v2

    :goto_20
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1118
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    move v3, v2

    .line 1119
    goto/16 :goto_0

    :cond_12
    move v1, v3

    .line 1087
    goto/16 :goto_1

    :cond_13
    move v4, v3

    goto/16 :goto_2

    :cond_14
    move v1, v3

    .line 1089
    goto/16 :goto_3

    :cond_15
    move v4, v3

    goto/16 :goto_4

    :cond_16
    move v1, v3

    .line 1091
    goto/16 :goto_5

    :cond_17
    move v4, v3

    goto/16 :goto_6

    :cond_18
    move v1, v3

    .line 1093
    goto/16 :goto_7

    :cond_19
    move v4, v3

    goto/16 :goto_8

    :cond_1a
    move v1, v3

    .line 1095
    goto/16 :goto_9

    :cond_1b
    move v4, v3

    goto/16 :goto_a

    :cond_1c
    move v1, v3

    .line 1097
    goto/16 :goto_b

    :cond_1d
    move v4, v3

    goto/16 :goto_c

    :cond_1e
    move v1, v3

    .line 1099
    goto/16 :goto_d

    :cond_1f
    move v4, v3

    goto/16 :goto_e

    :cond_20
    move v1, v3

    .line 1101
    goto/16 :goto_f

    :cond_21
    move v4, v3

    goto/16 :goto_10

    :cond_22
    move v1, v3

    .line 1103
    goto/16 :goto_11

    :cond_23
    move v4, v3

    goto/16 :goto_12

    :cond_24
    move v1, v3

    .line 1105
    goto/16 :goto_13

    :cond_25
    move v4, v3

    goto/16 :goto_14

    :cond_26
    move v1, v3

    .line 1107
    goto/16 :goto_15

    :cond_27
    move v4, v3

    goto/16 :goto_16

    :cond_28
    move v1, v3

    .line 1109
    goto/16 :goto_17

    :cond_29
    move v4, v3

    goto/16 :goto_18

    :cond_2a
    move v1, v3

    .line 1111
    goto/16 :goto_19

    :cond_2b
    move v4, v3

    goto/16 :goto_1a

    :cond_2c
    move v1, v3

    .line 1113
    goto/16 :goto_1b

    :cond_2d
    move v4, v3

    goto/16 :goto_1c

    :cond_2e
    move v1, v3

    .line 1115
    goto/16 :goto_1d

    :cond_2f
    move v4, v3

    goto/16 :goto_1e

    :cond_30
    move v1, v3

    .line 1117
    goto :goto_1f

    :cond_31
    move v4, v3

    goto :goto_20
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
    .line 524
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    return-object v0
.end method

.method public getBackendServerDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getCanonicalHostedZoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalHostedZoneNameID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneNameID:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDNSName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->dNSName:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->healthCheck:Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    return-object v0
.end method

.method public getInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    return-object v0
.end method

.method public getListenerDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->policies:Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->scheme:Ljava/lang/String;

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
    .line 863
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->sourceSecurityGroup:Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    return-object v0
.end method

.method public getSubnets()Ljava/util/List;
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
    .line 593
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    return-object v0
.end method

.method public getVPCId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->vPCId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1057
    const/16 v1, 0x1f

    .line 1058
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 1060
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 1061
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1062
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1063
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1064
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1065
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1066
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1067
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 1068
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 1069
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 1070
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 1071
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 1072
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 1073
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 1074
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_e
    add-int v0, v4, v2

    .line 1075
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    :goto_f
    add-int v0, v2, v3

    .line 1076
    return v0

    .line 1060
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1061
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1062
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1063
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1064
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1065
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1066
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1067
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1068
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1069
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1070
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1071
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1072
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 1073
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 1074
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 1075
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_f
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
    .line 536
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 537
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public setBackendServerDescriptions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "backendServerDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;>;"
    if-nez p1, :cond_0

    .line 468
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

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
    .local v0, "backendServerDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 474
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public setCanonicalHostedZoneName(Ljava/lang/String;)V
    .locals 0
    .param p1, "canonicalHostedZoneName"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneName:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setCanonicalHostedZoneNameID(Ljava/lang/String;)V
    .locals 0
    .param p1, "canonicalHostedZoneNameID"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneNameID:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setCreatedTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "createdTime"    # Ljava/util/Date;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->createdTime:Ljava/util/Date;

    .line 941
    return-void
.end method

.method public setDNSName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dNSName"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->dNSName:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setHealthCheck(Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;)V
    .locals 0
    .param p1, "healthCheck"    # Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->healthCheck:Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    .line 778
    return-void
.end method

.method public setInstances(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Instance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p1, "instances":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/Instance;>;"
    if-nez p1, :cond_0

    .line 709
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    .line 716
    :goto_0
    return-void

    .line 713
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 714
    .local v0, "instancesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Instance;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 715
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public setListenerDescriptions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "listenerDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;>;"
    if-nez p1, :cond_0

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v0, "listenerDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->loadBalancerName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/Policies;)V
    .locals 0
    .param p1, "policies"    # Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->policies:Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    .line 430
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 994
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->scheme:Ljava/lang/String;

    .line 995
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
    .line 875
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 876
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    .line 883
    :goto_0
    return-void

    .line 880
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 881
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 882
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSourceSecurityGroup(Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;)V
    .locals 0
    .param p1, "sourceSecurityGroup"    # Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->sourceSecurityGroup:Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    .line 830
    return-void
.end method

.method public setSubnets(Ljava/util/Collection;)V
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
    .line 605
    .local p1, "subnets":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 606
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    .line 613
    :goto_0
    return-void

    .line 610
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 611
    .local v0, "subnetsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    goto :goto_0
.end method

.method public setVPCId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vPCId"    # Ljava/lang/String;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->vPCId:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1034
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNSName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CanonicalHostedZoneName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CanonicalHostedZoneNameID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListenerDescriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackendServerDescriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subnets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPCId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceSecurityGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :cond_f
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZones(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 576
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    .line 583
    :goto_0
    return-object p0

    .line 578
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 580
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAvailabilityZones([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 6
    .param p1, "availabilityZones"    # [Ljava/lang/String;

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setAvailabilityZones(Ljava/util/Collection;)V

    .line 558
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

    .line 559
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withBackendServerDescriptions(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "backendServerDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;>;"
    if-nez p1, :cond_0

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

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
    .local v0, "backendServerDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 511
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBackendServerDescriptions([Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 6
    .param p1, "backendServerDescriptions"    # [Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setBackendServerDescriptions(Ljava/util/Collection;)V

    .line 489
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 490
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;
    :cond_1
    return-object p0
.end method

.method public withCanonicalHostedZoneName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "canonicalHostedZoneName"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneName:Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public withCanonicalHostedZoneNameID(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "canonicalHostedZoneNameID"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneNameID:Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method public withCreatedTime(Ljava/util/Date;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "createdTime"    # Ljava/util/Date;

    .prologue
    .line 954
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->createdTime:Ljava/util/Date;

    .line 955
    return-object p0
.end method

.method public withDNSName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "dNSName"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->dNSName:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public withHealthCheck(Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "healthCheck"    # Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->healthCheck:Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    .line 794
    return-object p0
.end method

.method public withInstances(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Instance;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "instances":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/Instance;>;"
    if-nez p1, :cond_0

    .line 748
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    .line 755
    :goto_0
    return-object p0

    .line 750
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    .local v0, "instancesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Instance;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 752
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInstances([Lcom/amazonaws/services/elasticloadbalancing/model/Instance;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 6
    .param p1, "instances"    # [Lcom/amazonaws/services/elasticloadbalancing/model/Instance;

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setInstances(Ljava/util/Collection;)V

    .line 730
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/Instance;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 731
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/Instance;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/Instance;
    :cond_1
    return-object p0
.end method

.method public withListenerDescriptions(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "listenerDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;>;"
    if-nez p1, :cond_0

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    .line 411
    :goto_0
    return-object p0

    .line 406
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v0, "listenerDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withListenerDescriptions([Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 6
    .param p1, "listenerDescriptions"    # [Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setListenerDescriptions(Ljava/util/Collection;)V

    .line 382
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 383
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;
    :cond_1
    return-object p0
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->loadBalancerName:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public withPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/Policies;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "policies"    # Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->policies:Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    .line 444
    return-object p0
.end method

.method public withScheme(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->scheme:Ljava/lang/String;

    .line 1019
    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 915
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    .line 922
    :goto_0
    return-object p0

    .line 917
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 918
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 919
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 6
    .param p1, "securityGroups"    # [Ljava/lang/String;

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setSecurityGroups(Ljava/util/Collection;)V

    .line 897
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

    .line 898
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withSourceSecurityGroup(Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "sourceSecurityGroup"    # Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->sourceSecurityGroup:Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    .line 852
    return-object p0
.end method

.method public withSubnets(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, "subnets":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 645
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    .line 652
    :goto_0
    return-object p0

    .line 647
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 648
    .local v0, "subnetsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 649
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSubnets([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 6
    .param p1, "subnets"    # [Ljava/lang/String;

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setSubnets(Ljava/util/Collection;)V

    .line 627
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

    .line 628
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withVPCId(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0
    .param p1, "vPCId"    # Ljava/lang/String;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->vPCId:Ljava/lang/String;

    .line 685
    return-object p0
.end method
