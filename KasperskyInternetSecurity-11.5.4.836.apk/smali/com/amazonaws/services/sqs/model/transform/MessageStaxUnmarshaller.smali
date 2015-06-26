.class public Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;
.super Ljava/lang/Object;
.source "MessageStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller$AttributesMapEntryUnmarshaller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/sqs/model/Message;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;->instance:Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;->instance:Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;

    .line 117
    :cond_0
    sget-object v0, Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;->instance:Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/sqs/model/Message;
    .locals 8
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Lcom/amazonaws/services/sqs/model/Message;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/Message;-><init>()V

    .line 73
    .local v1, "message":Lcom/amazonaws/services/sqs/model/Message;
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    .line 74
    .local v2, "originalDepth":I
    add-int/lit8 v3, v2, 0x1

    .line 77
    .local v3, "targetDepth":I
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x2

    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v4

    .line 82
    .local v4, "xmlEvent":Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    :goto_1
    return-object v1

    .line 84
    :cond_1
    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 85
    :cond_2
    const-string v5, "MessageId"

    invoke-virtual {p1, v5, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/sqs/model/Message;->setMessageId(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    const-string v5, "ReceiptHandle"

    invoke-virtual {p1, v5, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 90
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/sqs/model/Message;->setReceiptHandle(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_4
    const-string v5, "MD5OfBody"

    invoke-virtual {p1, v5, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 94
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/sqs/model/Message;->setMD5OfBody(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_5
    const-string v5, "Body"

    invoke-virtual {p1, v5, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 98
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/sqs/model/Message;->setBody(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_6
    const-string v5, "Attribute"

    invoke-virtual {p1, v5, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    invoke-static {}, Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller$AttributesMapEntryUnmarshaller;->getInstance()Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller$AttributesMapEntryUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller$AttributesMapEntryUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 103
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 106
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v5

    if-ge v5, v2, :cond_0

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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/model/transform/MessageStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/sqs/model/Message;

    move-result-object v0

    return-object v0
.end method
