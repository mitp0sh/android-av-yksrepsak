.class public Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "BatchWriteItemResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;

    .line 71
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    .locals 8
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;-><init>()V

    .line 40
    .local v0, "batchWriteItemResult":Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
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

    .line 65
    :goto_1
    return-object v0

    .line 50
    :cond_1
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_5

    .line 51
    :cond_2
    const-string v4, "Responses"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    new-instance v4, Lcom/amazonaws/transform/MapUnmarshaller;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v5

    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteResponseJsonUnmarshaller;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->setResponses(Ljava/util/Map;)V

    .line 54
    :cond_3
    const-string v4, "UnprocessedItems"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    new-instance v4, Lcom/amazonaws/transform/MapUnmarshaller;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v5

    new-instance v6, Lcom/amazonaws/transform/ListUnmarshaller;

    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;->setUnprocessedItems(Ljava/util/Map;)V

    .line 62
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 57
    :cond_5
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_6

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_4

    .line 58
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-gt v4, v1, :cond_4

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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;

    move-result-object v0

    return-object v0
.end method
