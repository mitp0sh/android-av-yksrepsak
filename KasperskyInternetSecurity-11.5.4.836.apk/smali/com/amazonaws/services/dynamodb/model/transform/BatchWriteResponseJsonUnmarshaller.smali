.class public Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;
.super Ljava/lang/Object;
.source "BatchWriteResponseJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;

    .line 69
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;
    .locals 5
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;-><init>()V

    .line 40
    .local v0, "batchWriteResponse":Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    .line 41
    .local v1, "originalDepth":I
    add-int/lit8 v2, v1, 0x1

    .line 43
    .local v2, "targetDepth":I
    iget-object v3, p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    .line 44
    .local v3, "token":Lorg/codehaus/jackson/JsonToken;
    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 47
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 63
    :goto_1
    return-object v0

    .line 50
    :cond_1
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_4

    .line 51
    :cond_2
    const-string v4, "ConsumedCapacityUnits"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 53
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->setConsumedCapacityUnits(Ljava/lang/Double;)V

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 55
    :cond_4
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_5

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_3

    .line 56
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-gt v4, v1, :cond_3

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
    .line 31
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;

    move-result-object v0

    return-object v0
.end method
