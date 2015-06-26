.class public Lcom/amazonaws/util/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeParameters(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const/4 v3, 0x0

    .line 92
    .local v3, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .restart local v3    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    .line 100
    .local v0, "encodedParams":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 101
    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_1
    return-object v0
.end method

.method public static isUsingNonDefaultPort(Ljava/net/URI;)Z
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 66
    .local v0, "port":I
    if-gtz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 67
    :cond_1
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x50

    if-eq v0, v3, :cond_0

    .line 68
    :cond_2
    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1bb

    if-eq v0, v3, :cond_0

    .line 70
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "path"    # Z

    .prologue
    .line 36
    if-nez p0, :cond_1

    const-string v0, ""

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    const-string v4, "%2A"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%7E"

    const-string v4, "~"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "encoded":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 43
    const-string v2, "%2F"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 47
    .end local v0    # "encoded":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static usePayloadForQueryParameters(Lcom/amazonaws/Request;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 74
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {p0}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/http/HttpMethodName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 75
    .local v1, "requestIsPOST":Z
    invoke-interface {p0}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    .line 77
    .local v0, "requestHasNoPayload":Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "requestHasNoPayload":Z
    :cond_0
    move v0, v3

    .line 75
    goto :goto_0

    .restart local v0    # "requestHasNoPayload":Z
    :cond_1
    move v2, v3

    .line 77
    goto :goto_1
.end method
