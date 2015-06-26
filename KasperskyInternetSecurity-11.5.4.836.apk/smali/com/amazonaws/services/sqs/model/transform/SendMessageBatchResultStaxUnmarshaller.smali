.class public Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "SendMessageBatchResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;

    .line 68
    :cond_0
    sget-object v0, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    .locals 6
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;-><init>()V

    .line 37
    .local v1, "sendMessageBatchResult":Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
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

    .line 59
    :goto_1
    return-object v1

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
    const-string v4, "SendMessageBatchResultEntry"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultEntryStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultEntryStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultEntryStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    const-string v4, "BatchResultErrorEntry"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/amazonaws/services/sqs/model/transform/BatchResultErrorEntryStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/sqs/model/transform/BatchResultErrorEntryStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/sqs/model/transform/BatchResultErrorEntryStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_4
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    move-result-object v0

    return-object v0
.end method
