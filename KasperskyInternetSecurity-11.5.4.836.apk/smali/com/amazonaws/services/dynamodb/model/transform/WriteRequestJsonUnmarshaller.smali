.class public Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;
.super Ljava/lang/Object;
.source "WriteRequestJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/WriteRequest;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;

    .line 73
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/WriteRequest;
    .locals 5
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v3, Lcom/amazonaws/services/dynamodb/model/WriteRequest;

    invoke-direct {v3}, Lcom/amazonaws/services/dynamodb/model/WriteRequest;-><init>()V

    .line 40
    .local v3, "writeRequest":Lcom/amazonaws/services/dynamodb/model/WriteRequest;
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

    .line 67
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
    const-string v4, "PutRequest"

    invoke-virtual {p1, v4, v1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 53
    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/PutRequestJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/PutRequestJsonUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodb/model/transform/PutRequestJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/PutRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/dynamodb/model/WriteRequest;->setPutRequest(Lcom/amazonaws/services/dynamodb/model/PutRequest;)V

    .line 55
    :cond_3
    const-string v4, "DeleteRequest"

    invoke-virtual {p1, v4, v1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 56
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 57
    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteRequestJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/DeleteRequestJsonUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteRequestJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/DeleteRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/dynamodb/model/WriteRequest;->setDeleteRequest(Lcom/amazonaws/services/dynamodb/model/DeleteRequest;)V

    .line 64
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 59
    :cond_5
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_6

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_4

    .line 60
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/WriteRequestJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/WriteRequest;

    move-result-object v0

    return-object v0
.end method
