.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "RegisterInstancesWithLoadBalancerResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;

    .line 64
    :cond_0
    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;
    .locals 6
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;-><init>()V

    .line 37
    .local v1, "registerInstancesWithLoadBalancerResult":Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    .line 38
    .local v0, "originalDepth":I
    add-int/lit8 v2, v0, 0x1

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

    .line 55
    :goto_1
    return-object v1

    .line 48
    :cond_1
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    :cond_2
    const-string v4, "Instances/member"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InstanceStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/InstanceStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InstanceStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/Instance;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-ge v4, v0, :cond_0

    goto :goto_1
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;

    move-result-object v0

    return-object v0
.end method
