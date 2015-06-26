.class public final Lgv;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lgu;


# direct methods
.method public constructor <init>(Lgu;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lgv;->a:Lgu;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-void
.end method

.method private a()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 3

    .prologue
    .line 56
    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 59
    iget-object v0, p0, Lgv;->a:Lgu;

    invoke-static {v0}, Lgu;->b(Lgu;)LbA;

    move-result-object v0

    invoke-interface {v0}, LbA;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    :try_start_1
    iget-object v0, p0, Lgv;->a:Lgu;

    invoke-static {v0}, Lgu;->c(Lgu;)[C

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 71
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 73
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 78
    :goto_0
    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 5

    .prologue
    .line 40
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 45
    invoke-direct {p0}, Lgv;->a()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    iget-object v4, p0, Lgv;->a:Lgu;

    invoke-static {v4}, Lgu;->a(Lgu;)I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 50
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {p0}, Lgv;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    goto :goto_0
.end method
