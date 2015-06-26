.class public Lcom/amazonaws/transform/ListUnmarshaller;
.super Ljava/lang/Object;
.source "ListUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/util/List",
        "<TT;>;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/amazonaws/transform/ListUnmarshaller;, "Lcom/amazonaws/transform/ListUnmarshaller<TT;>;"
    .local p1, "itemUnmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TT;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazonaws/transform/ListUnmarshaller;->itemUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 31
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
    .line 25
    .local p0, "this":Lcom/amazonaws/transform/ListUnmarshaller;, "Lcom/amazonaws/transform/ListUnmarshaller<TT;>;"
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/amazonaws/transform/ListUnmarshaller;, "Lcom/amazonaws/transform/ListUnmarshaller<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    .line 36
    .local v1, "originalDepth":I
    add-int/lit8 v2, v1, 0x1

    .line 39
    .local v2, "targetDepth":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 40
    .local v3, "token":Lorg/codehaus/jackson/JsonToken;
    if-nez v3, :cond_1

    .line 45
    :goto_1
    return-object v0

    .line 42
    :cond_1
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_0

    .line 44
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_3

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-ge v4, v1, :cond_0

    goto :goto_1

    .line 47
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/transform/ListUnmarshaller;->itemUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v4, p1}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
