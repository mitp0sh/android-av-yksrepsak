.class public Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;
.super Ljava/lang/Object;
.source "InstanceStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/ec2/model/Instance;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;

    .line 208
    :cond_0
    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 6
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/ec2/model/Instance;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/Instance;-><init>()V

    .line 37
    .local v0, "instance":Lcom/amazonaws/services/ec2/model/Instance;
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

    add-int/lit8 v2, v2, 0x1

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

    .line 199
    :goto_1
    return-object v0

    .line 48
    :cond_1
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 49
    :cond_2
    const-string v4, "instanceId"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setInstanceId(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v4, "imageId"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 54
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setImageId(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string v4, "instanceState"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 58
    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/InstanceStateStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/InstanceStateStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/InstanceStateStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setState(Lcom/amazonaws/services/ec2/model/InstanceState;)V

    goto :goto_0

    .line 61
    :cond_5
    const-string v4, "privateDnsName"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 62
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setPrivateDnsName(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_6
    const-string v4, "dnsName"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 66
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setPublicDnsName(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_7
    const-string v4, "reason"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 70
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setStateTransitionReason(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_8
    const-string v4, "keyName"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 74
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setKeyName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_9
    const-string v4, "amiLaunchIndex"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 78
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setAmiLaunchIndex(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 81
    :cond_a
    const-string v4, "productCodes/item"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 82
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/ProductCodeStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/ProductCodeStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/ec2/model/transform/ProductCodeStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/ProductCode;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    :cond_b
    const-string v4, "instanceType"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 86
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setInstanceType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_c
    const-string v4, "launchTime"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 90
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setLaunchTime(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 93
    :cond_d
    const-string v4, "placement"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 94
    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/PlacementStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/PlacementStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/PlacementStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setPlacement(Lcom/amazonaws/services/ec2/model/Placement;)V

    goto/16 :goto_0

    .line 97
    :cond_e
    const-string v4, "kernelId"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 98
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setKernelId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_f
    const-string v4, "ramdiskId"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 102
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setRamdiskId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_10
    const-string v4, "platform"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 106
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setPlatform(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_11
    const-string v4, "monitoring"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 110
    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/MonitoringStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/MonitoringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/MonitoringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setMonitoring(Lcom/amazonaws/services/ec2/model/Monitoring;)V

    goto/16 :goto_0

    .line 113
    :cond_12
    const-string v4, "subnetId"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 114
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setSubnetId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_13
    const-string v4, "vpcId"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 118
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setVpcId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_14
    const-string v4, "privateIpAddress"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 122
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setPrivateIpAddress(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_15
    const-string v4, "ipAddress"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 126
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setPublicIpAddress(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_16
    const-string v4, "stateReason"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 130
    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/StateReasonStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/StateReasonStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/StateReasonStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setStateReason(Lcom/amazonaws/services/ec2/model/StateReason;)V

    goto/16 :goto_0

    .line 133
    :cond_17
    const-string v4, "architecture"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 134
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setArchitecture(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_18
    const-string v4, "rootDeviceType"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 138
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setRootDeviceType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_19
    const-string v4, "rootDeviceName"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 142
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setRootDeviceName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_1a
    const-string v4, "blockDeviceMapping/item"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 146
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/InstanceBlockDeviceMappingStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/InstanceBlockDeviceMappingStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/ec2/model/transform/InstanceBlockDeviceMappingStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    :cond_1b
    const-string v4, "virtualizationType"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 150
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setVirtualizationType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_1c
    const-string v4, "instanceLifecycle"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 154
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setInstanceLifecycle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_1d
    const-string v4, "spotInstanceRequestId"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 158
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setSpotInstanceRequestId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_1e
    const-string v4, "license"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 162
    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/InstanceLicenseStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/InstanceLicenseStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/InstanceLicenseStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setLicense(Lcom/amazonaws/services/ec2/model/InstanceLicense;)V

    goto/16 :goto_0

    .line 165
    :cond_1f
    const-string v4, "clientToken"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 166
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setClientToken(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_20
    const-string v4, "tagSet/item"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 170
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/TagStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/TagStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/ec2/model/transform/TagStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/Tag;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    :cond_21
    const-string v4, "groupSet/item"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 174
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/GroupIdentifierStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/GroupIdentifierStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/ec2/model/transform/GroupIdentifierStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 177
    :cond_22
    const-string v4, "sourceDestCheck"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 178
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setSourceDestCheck(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 181
    :cond_23
    const-string v4, "hypervisor"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 182
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setHypervisor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_24
    const-string v4, "networkInterfaceSet/item"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 186
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/InstanceNetworkInterfaceStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/InstanceNetworkInterfaceStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/ec2/model/transform/InstanceNetworkInterfaceStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 189
    :cond_25
    const-string v4, "iamInstanceProfile"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 190
    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/IamInstanceProfileStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/IamInstanceProfileStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/IamInstanceProfileStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfile;)V

    goto/16 :goto_0

    .line 193
    :cond_26
    const-string v4, "ebsOptimized"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/Instance;->setEbsOptimized(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 197
    :cond_27
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/InstanceStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/Instance;

    move-result-object v0

    return-object v0
.end method
