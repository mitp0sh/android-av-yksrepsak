.class final Lro;
.super Lorg/apache/http/impl/client/DefaultRequestDirector;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p12}, Lorg/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected final handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .locals 7

    .prologue
    .line 86
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    iget-object v1, p0, Lro;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v1}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lro;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    invoke-interface {v1, p2, p3}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lro;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    invoke-static {p2}, Lrn;->a(Lorg/apache/http/HttpResponse;)Ljava/net/URL;

    move-result-object v2

    .line 96
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    .line 109
    new-instance v1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 110
    iget-object v0, p0, Lro;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 112
    invoke-virtual {p0, v3, v1, p3}, Lro;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 114
    new-instance v0, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    throw v0

    .line 119
    :cond_0
    throw v0
.end method
