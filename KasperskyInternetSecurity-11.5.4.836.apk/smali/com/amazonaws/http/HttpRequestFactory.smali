.class Lcom/amazonaws/http/HttpRequestFactory;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;Lcom/amazonaws/ClientConfiguration;)V
    .locals 7
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p3, "context"    # Lcom/amazonaws/http/ExecutionContext;
    .param p4, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/ExecutionContext;",
            "Lcom/amazonaws/ClientConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-interface {p2}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    .line 153
    .local v0, "endpoint":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "hostHeader":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/HttpUtils;->isUsingNonDefaultPort(Ljava/net/URI;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    :cond_0
    const-string v4, "Host"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {p2}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 167
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Content-Length"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Host"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v4, "Content-Type"

    invoke-virtual {p1, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "Content-Type"

    invoke-virtual {p1, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_4

    .line 174
    :cond_3
    const-string v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->getContextUserAgent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 181
    const-string v4, "User-Agent"

    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->getContextUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p4, v5}, Lcom/amazonaws/http/HttpRequestFactory;->createUserAgentString(Lcom/amazonaws/ClientConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_5
    return-void
.end method

.method private createUserAgentString(Lcom/amazonaws/ClientConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p2, "contextUserAgent"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private newBufferedHttpEntity(Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpEntity;
    .locals 4
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create HTTP entity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private newStringEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create HTTP entity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method createHttpRequest(Lcom/amazonaws/Request;Lcom/amazonaws/ClientConfiguration;Lorg/apache/http/HttpEntity;Lcom/amazonaws/http/ExecutionContext;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 17
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "previousEntity"    # Lorg/apache/http/HttpEntity;
    .param p4, "context"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/ClientConfiguration;",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lorg/apache/http/client/methods/HttpRequestBase;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v5

    .line 60
    .local v5, "endpoint":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v13

    .line 61
    .local v13, "uri":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_6

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 63
    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 64
    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 69
    :cond_0
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 74
    :cond_1
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/util/HttpUtils;->encodeParameters(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "encodedParams":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v14

    if-eqz v14, :cond_7

    const/4 v11, 0x1

    .line 82
    .local v11, "requestHasNoPayload":Z
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v14

    sget-object v15, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    if-ne v14, v15, :cond_8

    const/4 v12, 0x1

    .line 83
    .local v12, "requestIsPost":Z
    :goto_3
    if-eqz v12, :cond_2

    if-eqz v11, :cond_9

    :cond_2
    const/4 v10, 0x1

    .line 84
    .local v10, "putParamsInUri":Z
    :goto_4
    if-eqz v4, :cond_3

    if-eqz v10, :cond_3

    .line 85
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 89
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v14

    sget-object v15, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    if-ne v14, v15, :cond_b

    .line 90
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 99
    .local v8, "postMethod":Lorg/apache/http/client/methods/HttpPost;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v14

    if-nez v14, :cond_a

    if-eqz v4, :cond_a

    .line 100
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/amazonaws/http/HttpRequestFactory;->newStringEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 104
    :goto_5
    move-object v7, v8

    .line 137
    .end local v8    # "postMethod":Lorg/apache/http/client/methods/HttpPost;
    .local v7, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/amazonaws/http/HttpRequestFactory;->configureHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;Lcom/amazonaws/ClientConfiguration;)V

    .line 139
    return-object v7

    .line 66
    .end local v4    # "encodedParams":Ljava/lang/String;
    .end local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v10    # "putParamsInUri":Z
    .end local v11    # "requestHasNoPayload":Z
    .end local v12    # "requestIsPost":Z
    :cond_5
    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 67
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 70
    :cond_6
    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 71
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 81
    .restart local v4    # "encodedParams":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 82
    .restart local v11    # "requestHasNoPayload":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 83
    .restart local v12    # "requestIsPost":Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 102
    .restart local v8    # "postMethod":Lorg/apache/http/client/methods/HttpPost;
    .restart local v10    # "putParamsInUri":Z
    :cond_a
    new-instance v14, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;-><init>(Lcom/amazonaws/Request;)V

    invoke-virtual {v8, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_5

    .line 105
    .end local v8    # "postMethod":Lorg/apache/http/client/methods/HttpPost;
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v14

    sget-object v15, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    if-ne v14, v15, :cond_e

    .line 106
    new-instance v9, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v9, v13}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 107
    .local v9, "putMethod":Lorg/apache/http/client/methods/HttpPut;
    move-object v7, v9

    .line 116
    .restart local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPut;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.protocol.expect-continue"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 118
    if-eqz p3, :cond_c

    .line 119
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_6

    .line 120
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 121
    new-instance v6, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;-><init>(Lcom/amazonaws/Request;)V

    .line 122
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v14

    const-string v15, "Content-Length"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_d

    .line 123
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/amazonaws/http/HttpRequestFactory;->newBufferedHttpEntity(Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 125
    :cond_d
    invoke-virtual {v9, v6}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_6

    .line 127
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v9    # "putMethod":Lorg/apache/http/client/methods/HttpPut;
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v14

    sget-object v15, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    if-ne v14, v15, :cond_f

    .line 128
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_6

    .line 129
    .end local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v14

    sget-object v15, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    if-ne v14, v15, :cond_10

    .line 130
    new-instance v7, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v7, v13}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_6

    .line 131
    .end local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_10
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v14

    sget-object v15, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    if-ne v14, v15, :cond_11

    .line 132
    new-instance v7, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v7, v13}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .restart local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_6

    .line 134
    .end local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_11
    new-instance v14, Lcom/amazonaws/AmazonClientException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown HTTP method name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v14
.end method
