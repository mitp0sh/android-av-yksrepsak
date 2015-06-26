.class Lcom/amazonaws/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHttpClient(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;
    .locals 17
    .param p1, "config"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v13

    .line 75
    .local v13, "userAgent":Ljava/lang/String;
    sget-object v14, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 76
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 80
    :cond_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 81
    .local v3, "httpClientParams":Lorg/apache/http/params/HttpParams;
    const/4 v14, 0x0

    invoke-static {v3, v14}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 82
    invoke-static {v3, v13}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getConnectionTimeout()I

    move-result v14

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getSocketTimeout()I

    move-result v14

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 85
    const/4 v14, 0x0

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 86
    const/4 v14, 0x1

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v12, v14, v15

    .line 89
    .local v12, "socketSendBufferSizeHint":I
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v14

    const/4 v15, 0x1

    aget v11, v14, v15

    .line 90
    .local v11, "socketReceiveBufferSizeHint":I
    if-gtz v12, :cond_1

    if-lez v11, :cond_2

    .line 91
    :cond_1
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 96
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/amazonaws/http/ConnectionManagerFactory;->createThreadSafeClientConnManager(Lcom/amazonaws/ClientConfiguration;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-result-object v1

    .line 97
    .local v1, "connectionManager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 100
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "proxyHost":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyPort()I

    move-result v8

    .line 102
    .local v8, "proxyPort":I
    if-eqz v5, :cond_3

    if-lez v8, :cond_3

    .line 103
    sget-object v14, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Configuring Proxy. Proxy Host: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Proxy Port: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 104
    new-instance v6, Lorg/apache/http/HttpHost;

    invoke-direct {v6, v5, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 105
    .local v6, "proxyHttpHost":Lorg/apache/http/HttpHost;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.route.default-proxy"

    invoke-interface {v14, v15, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyUsername()Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "proxyUsername":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyPassword()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "proxyPassword":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyDomain()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "proxyDomain":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyWorkstation()Ljava/lang/String;

    move-result-object v10

    .line 112
    .local v10, "proxyWorkstation":Ljava/lang/String;
    if-eqz v9, :cond_3

    if-eqz v7, :cond_3

    .line 113
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v14

    new-instance v15, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v15, v5, v8}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v16, Lorg/apache/http/auth/NTCredentials;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v7, v10, v4}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 119
    .end local v4    # "proxyDomain":Ljava/lang/String;
    .end local v6    # "proxyHttpHost":Lorg/apache/http/HttpHost;
    .end local v7    # "proxyPassword":Ljava/lang/String;
    .end local v9    # "proxyUsername":Ljava/lang/String;
    .end local v10    # "proxyWorkstation":Ljava/lang/String;
    :cond_3
    return-object v2
.end method
