.class public Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "UpdateTableResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;

    .line 69
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;
    .locals 5
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v3, Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;

    invoke-direct {v3}, Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;-><init>()V

    .line 40
    .local v3, "updateTableResult":Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;
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

    .line 63
    :goto_1
    return-object v3

    .line 50
    :cond_1
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_4

    .line 51
    :cond_2
    const-string v4, "TableDescription"

    invoke-virtual {p1, v4, v1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 53
    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/TableDescription;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;->setTableDescription(Lcom/amazonaws/services/dynamodb/model/TableDescription;)V

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 55
    :cond_4
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_5

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_3

    .line 56
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-gt v4, v0, :cond_3

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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;

    move-result-object v0

    return-object v0
.end method
