.class public Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "UpdateItemResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;

    .line 72
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    .locals 7
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v3, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;

    invoke-direct {v3}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;-><init>()V

    .line 40
    .local v3, "updateItemResult":Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    .line 41
    .local v0, "originalDepth":I
    add-int/lit8 v1, v0, 0x1

    .line 43
    .local v1, "targetDepth":I
    iget-object v2, p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    .line 44
    .local v2, "token":Lorg/codehaus/jackson/JsonToken;
    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 47
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 66
    :goto_1
    return-object v3

    .line 50
    :cond_1
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_5

    .line 51
    :cond_2
    const-string v4, "Attributes"

    invoke-virtual {p1, v4, v1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    new-instance v4, Lcom/amazonaws/transform/MapUnmarshaller;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v5

    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/AttributeValueJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/AttributeValueJsonUnmarshaller;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->setAttributes(Ljava/util/Map;)V

    .line 54
    :cond_3
    const-string v4, "ConsumedCapacityUnits"

    invoke-virtual {p1, v4, v1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 56
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->setConsumedCapacityUnits(Ljava/lang/Double;)V

    .line 63
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 58
    :cond_5
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_6

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_4

    .line 59
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-gt v4, v0, :cond_4

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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;

    move-result-object v0

    return-object v0
.end method
