.class public Lcom/amazonaws/transform/MapUnmarshaller;
.super Ljava/lang/Object;
.source "MapUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TK;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field

.field private final valueUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TV;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TK;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TV;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/amazonaws/transform/MapUnmarshaller;, "Lcom/amazonaws/transform/MapUnmarshaller<TK;TV;>;"
    .local p1, "keyUnmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TK;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    .local p2, "valueUnmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TV;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/transform/MapUnmarshaller;->keyUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 34
    iput-object p2, p0, Lcom/amazonaws/transform/MapUnmarshaller;->valueUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/amazonaws/transform/MapUnmarshaller;, "Lcom/amazonaws/transform/MapUnmarshaller<TK;TV;>;"
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/amazonaws/transform/MapUnmarshaller;, "Lcom/amazonaws/transform/MapUnmarshaller<TK;TV;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    .line 42
    .local v2, "originalDepth":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 43
    .local v3, "token":Lorg/codehaus/jackson/JsonToken;
    if-nez v3, :cond_1

    .line 51
    :goto_1
    return-object v1

    .line 45
    :cond_1
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v5, :cond_2

    .line 46
    iget-object v5, p0, Lcom/amazonaws/transform/MapUnmarshaller;->keyUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v5, p1}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 48
    iget-object v5, p0, Lcom/amazonaws/transform/MapUnmarshaller;->valueUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v5, p1}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 49
    .local v4, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v5, :cond_3

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v5, :cond_0

    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v5

    if-gt v5, v2, :cond_0

    goto :goto_1
.end method
