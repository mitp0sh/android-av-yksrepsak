.class public Lcom/amazonaws/services/dynamodb/model/transform/ResourceInUseExceptionUnmarshaller;
.super Lcom/amazonaws/transform/JsonErrorUnmarshaller;
.source "ResourceInUseExceptionUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/amazonaws/services/dynamodb/model/ResourceInUseException;

    invoke-direct {p0, v0}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    .line 27
    return-void
.end method


# virtual methods
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ResourceInUseExceptionUnmarshaller;->parseErrorCode(Lcom/amazonaws/util/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "errorCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "ResourceInUseException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-super {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->unmarshall(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ResourceInUseException;

    .line 39
    .local v0, "e":Lcom/amazonaws/services/dynamodb/model/ResourceInUseException;
    goto :goto_0
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ResourceInUseExceptionUnmarshaller;->unmarshall(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method
