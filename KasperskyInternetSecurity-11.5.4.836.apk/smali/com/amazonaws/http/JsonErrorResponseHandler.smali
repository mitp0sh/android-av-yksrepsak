.class public Lcom/amazonaws/http/JsonErrorResponseHandler;
.super Ljava/lang/Object;
.source "JsonErrorResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler",
        "<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# instance fields
.field private unmarshallerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lcom/amazonaws/util/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lcom/amazonaws/util/json/JSONObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "exceptionUnmarshallers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/util/json/JSONObject;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazonaws/http/JsonErrorResponseHandler;->unmarshallerList:Ljava/util/List;

    .line 39
    return-void
.end method

.method private readStreamContents(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 97
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 102
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_1
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read error response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 107
    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 10
    .param p1, "response"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/amazonaws/http/JsonErrorResponseHandler;->readStreamContents(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "streamContents":Ljava/lang/String;
    move-object v5, v6

    .line 46
    .local v5, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const-string v5, "{}"

    .line 47
    :cond_1
    new-instance v4, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v4, v5}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v4, "jsonErrorMessage":Lcom/amazonaws/util/json/JSONObject;
    invoke-virtual {p0, p1, v4}, Lcom/amazonaws/http/JsonErrorResponseHandler;->runErrorUnmarshallers(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    .line 53
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 69
    .end local v0    # "ase":Lcom/amazonaws/AmazonServiceException;
    :cond_2
    return-object v0

    .line 48
    .end local v4    # "jsonErrorMessage":Lcom/amazonaws/util/json/JSONObject;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to parse error response: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ase":Lcom/amazonaws/AmazonServiceException;
    .restart local v4    # "jsonErrorMessage":Lcom/amazonaws/util/json/JSONObject;
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getRequest()Lcom/amazonaws/Request;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 57
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v7

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_5

    .line 58
    sget-object v7, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v0, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 63
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    .local v2, "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "X-Amzn-RequestId"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 65
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/amazonaws/AmazonServiceException;->setRequestId(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    .end local v2    # "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-object v7, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v0, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    goto :goto_0
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/JsonErrorResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method protected runErrorUnmarshallers(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/AmazonServiceException;
    .locals 4
    .param p1, "errorResponse"    # Lcom/amazonaws/http/HttpResponse;
    .param p2, "json"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v3, p0, Lcom/amazonaws/http/JsonErrorResponseHandler;->unmarshallerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/transform/Unmarshaller;

    .line 81
    .local v2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/util/json/JSONObject;>;"
    invoke-interface {v2, p2}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    .line 82
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 88
    .end local v0    # "ase":Lcom/amazonaws/AmazonServiceException;
    .end local v2    # "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/util/json/JSONObject;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
