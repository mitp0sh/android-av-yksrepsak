.class public Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "DescribeSpotPriceHistoryResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;

    .line 68
    :cond_0
    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;
    .locals 6
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;-><init>()V

    .line 37
    .local v0, "describeSpotPriceHistoryResult":Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;
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

    .line 59
    :goto_1
    return-object v0

    .line 48
    :cond_1
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 49
    :cond_2
    const-string v4, "spotPriceHistorySet/item"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;->getSpotPriceHistory()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/SpotPriceStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/SpotPriceStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/ec2/model/transform/SpotPriceStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/SpotPrice;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    const-string v4, "nextToken"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;->setNextToken(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-ge v4, v1, :cond_0

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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;

    move-result-object v0

    return-object v0
.end method
