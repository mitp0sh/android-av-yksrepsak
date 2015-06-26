.class public Lbo;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private volatile b:Z

.field private volatile c:Z

.field private d:Ljava/net/ServerSocket;

.field private e:Lorg/apache/http/protocol/BasicHttpContext;

.field private f:Lorg/apache/http/protocol/HttpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lbo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v0, "KisWebServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object v1, p0, Lbo;->e:Lorg/apache/http/protocol/BasicHttpContext;

    .line 34
    iput-object v1, p0, Lbo;->f:Lorg/apache/http/protocol/HttpService;

    .line 38
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 39
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v1, p0, Lbo;->e:Lorg/apache/http/protocol/BasicHttpContext;

    .line 40
    new-instance v1, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 41
    new-instance v1, Lorg/apache/http/protocol/ResponseServer;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 42
    new-instance v1, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 43
    new-instance v1, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 45
    new-instance v1, Lorg/apache/http/protocol/HttpService;

    new-instance v2, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v3, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    iput-object v1, p0, Lbo;->f:Lorg/apache/http/protocol/HttpService;

    .line 49
    new-instance v0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    .line 50
    const-string v1, "/kis/*"

    new-instance v2, Lbl;

    invoke-direct {v2, p1}, Lbl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 52
    iget-object v1, p0, Lbo;->f:Lorg/apache/http/protocol/HttpService;

    invoke-virtual {v1, v0}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 53
    return-void
.end method

.method private static a(Ljava/net/ServerSocket;)Z
    .locals 1

    .prologue
    .line 140
    if-eqz p0, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 144
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-boolean v0, p0, Lbo;->b:Z

    if-nez v0, :cond_0

    .line 97
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lbo;->d:Ljava/net/ServerSocket;

    .line 98
    iget-object v0, p0, Lbo;->d:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbo;->b:Z

    .line 100
    invoke-virtual {p0}, Lbo;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lbo;->b:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lbo;->b:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbo;->b:Z

    .line 116
    iget-boolean v0, p0, Lbo;->c:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lbo;->d:Ljava/net/ServerSocket;

    invoke-static {v0}, Lbo;->a(Ljava/net/ServerSocket;)Z

    .line 120
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lbo;->d:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lbo;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lbo;->b:Z

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lbo;->c:Z

    .line 64
    iget-object v0, p0, Lbo;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbo;->c:Z

    .line 69
    new-instance v1, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    .line 70
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 71
    iget-object v0, p0, Lbo;->f:Lorg/apache/http/protocol/HttpService;

    iget-object v2, p0, Lbo;->e:Lorg/apache/http/protocol/BasicHttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V

    .line 72
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lbo;->c:Z

    if-eqz v0, :cond_0

    .line 75
    iput-boolean v3, p0, Lbo;->c:Z

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lbo;->d:Ljava/net/ServerSocket;

    invoke-static {v0}, Lbo;->a(Ljava/net/ServerSocket;)Z

    .line 92
    return-void
.end method
