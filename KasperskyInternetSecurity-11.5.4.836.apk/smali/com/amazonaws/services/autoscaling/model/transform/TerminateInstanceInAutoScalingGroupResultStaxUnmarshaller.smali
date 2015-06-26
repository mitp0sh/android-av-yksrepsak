.class public Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;

    .line 64
    :cond_0
    sget-object v0, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;
    .locals 5
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;

    invoke-direct {v2}, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;-><init>()V

    .line 37
    .local v2, "terminateInstanceInAutoScalingGroupResult":Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    .line 38
    .local v0, "originalDepth":I
    add-int/lit8 v1, v0, 0x1

    .line 41
    .local v1, "targetDepth":I
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x2

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
    return-object v2

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
    const-string v4, "Activity"

    invoke-virtual {p1, v4, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-static {}, Lcom/amazonaws/services/autoscaling/model/transform/ActivityStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/autoscaling/model/transform/ActivityStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/autoscaling/model/transform/ActivityStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/autoscaling/model/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;->setActivity(Lcom/amazonaws/services/autoscaling/model/Activity;)V

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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;

    move-result-object v0

    return-object v0
.end method
