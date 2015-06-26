.class public Lcom/amazonaws/transform/JsonUnmarshallerContext;
.super Ljava/lang/Object;
.source "JsonUnmarshallerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/transform/JsonUnmarshallerContext$1;,
        Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;
    }
.end annotation


# instance fields
.field private currentField:Ljava/lang/String;

.field public currentToken:Lorg/codehaus/jackson/JsonToken;

.field private final httpResponse:Lcom/amazonaws/http/HttpResponse;

.field private final jsonParser:Lorg/codehaus/jackson/JsonParser;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadataExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;",
            ">;"
        }
    .end annotation
.end field

.field private nextToken:Lorg/codehaus/jackson/JsonToken;

.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stackString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .param p1, "jsonParser"    # Lorg/codehaus/jackson/JsonParser;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/transform/JsonUnmarshallerContext;-><init>(Lorg/codehaus/jackson/JsonParser;Lcom/amazonaws/http/HttpResponse;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;Lcom/amazonaws/http/HttpResponse;)V
    .locals 1
    .param p1, "jsonParser"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "httpResponse"    # Lcom/amazonaws/http/HttpResponse;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->metadata:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    .line 58
    iput-object p2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->httpResponse:Lcom/amazonaws/http/HttpResponse;

    .line 59
    return-void
.end method

.method private rebuildStackString()V
    .locals 4

    .prologue
    .line 283
    const-string v2, ""

    iput-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    .line 285
    iget-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    goto :goto_0

    .line 291
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentField:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentField:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    .line 295
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_3

    const-string v2, "/"

    iput-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    .line 296
    :cond_3
    return-void
.end method

.method private updateContext()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 251
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    if-nez v3, :cond_0

    .line 275
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v6, :cond_3

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentField:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    iget-object v4, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentField:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    iget-object v4, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iput-object v7, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentField:Ljava/lang/String;

    .line 274
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->rebuildStackString()V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v6, :cond_4

    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v6, :cond_9

    .line 260
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 261
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v6, :cond_7

    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v4

    .line 262
    .local v1, "squareBracketsMatch":Z
    :goto_2
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v4

    .line 263
    .local v0, "curlyBracketsMatch":Z
    :goto_3
    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    .line 264
    :cond_5
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 265
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 268
    .end local v0    # "curlyBracketsMatch":Z
    .end local v1    # "squareBracketsMatch":Z
    :cond_6
    iput-object v7, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentField:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move v1, v5

    .line 261
    goto :goto_2

    .restart local v1    # "squareBracketsMatch":Z
    :cond_8
    move v0, v5

    .line 262
    goto :goto_3

    .line 269
    .end local v1    # "squareBracketsMatch":Z
    :cond_9
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_2

    .line 270
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "t":Ljava/lang/String;
    iput-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentField:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getCurrentDepth()I
    .locals 4

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "depth":I
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "s":Ljava/lang/String;
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentField:Ljava/lang/String;

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 97
    :cond_2
    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->httpResponse:Lcom/amazonaws/http/HttpResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->httpResponse:Lcom/amazonaws/http/HttpResponse;

    invoke-virtual {v0}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHttpResponse()Lcom/amazonaws/http/HttpResponse;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->httpResponse:Lcom/amazonaws/http/HttpResponse;

    return-object v0
.end method

.method public getJsonParser()Lorg/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public isStartOfDocument()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Lorg/codehaus/jackson/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 181
    .local v0, "token":Lorg/codehaus/jackson/JsonToken;
    :goto_0
    iput-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 184
    invoke-direct {p0}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->updateContext()V

    .line 185
    return-object v0

    .line 178
    .end local v0    # "token":Lorg/codehaus/jackson/JsonToken;
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method public peek()Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 192
    :goto_0
    return-object v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 192
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public readText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    sget-object v1, Lcom/amazonaws/transform/JsonUnmarshallerContext$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We expected a VALUE token but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 113
    :pswitch_1
    const-string v0, "false"

    goto :goto_0

    .line 114
    :pswitch_2
    const-string v0, "true"

    goto :goto_0

    .line 115
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :pswitch_4
    iget-object v1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_5
    iget-object v1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->jsonParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "targetDepth"    # I
    .param p3, "storageKey"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;-><init>(Lcom/amazonaws/transform/JsonUnmarshallerContext;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public testExpression(Ljava/lang/String;)Z
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public testExpression(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "stackDepth"    # I

    .prologue
    const/4 v1, 0x1

    .line 161
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    const/4 v0, -0x1

    .line 164
    .local v0, "index":I
    :cond_2
    :goto_1
    const-string v2, "/"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    .line 166
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    .line 167
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 171
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    if-eq p2, v2, :cond_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->stackString:Ljava/lang/String;

    return-object v0
.end method
