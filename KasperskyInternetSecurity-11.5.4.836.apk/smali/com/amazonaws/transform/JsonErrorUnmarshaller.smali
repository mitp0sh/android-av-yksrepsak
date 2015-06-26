.class public Lcom/amazonaws/transform/JsonErrorUnmarshaller;
.super Lcom/amazonaws/transform/AbstractErrorUnmarshaller;
.source "JsonErrorUnmarshaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/transform/AbstractErrorUnmarshaller",
        "<",
        "Lcom/amazonaws/util/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/amazonaws/AmazonServiceException;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    .line 29
    return-void
.end method


# virtual methods
.method public parseErrorCode(Lcom/amazonaws/util/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1, "json"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const-string v2, "__type"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const-string v2, "__type"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "type":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "separator":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .end local v0    # "separator":I
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parseMessage(Lcom/amazonaws/util/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "json"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, ""

    .line 43
    .local v0, "message":Ljava/lang/String;
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lcom/amazonaws/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    const-string v1, "Message"

    invoke-virtual {p1, v1}, Lcom/amazonaws/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "Message"

    invoke-virtual {p1, v1}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public unmarshall(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/AmazonServiceException;
    .locals 3
    .param p1, "json"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->parseMessage(Lcom/amazonaws/util/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->newException(Ljava/lang/String;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    .line 36
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->parseErrorCode(Lcom/amazonaws/util/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "errorCode":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 38
    return-object v0
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
    .line 23
    check-cast p1, Lcom/amazonaws/util/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->unmarshall(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method
