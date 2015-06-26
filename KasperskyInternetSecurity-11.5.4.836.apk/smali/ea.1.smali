.class public final Lea;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private synthetic e:LdZ;


# direct methods
.method public constructor <init>(LdZ;IILjava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 75
    iput-object p1, p0, Lea;->e:LdZ;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 70
    iput v0, p0, Lea;->a:I

    .line 71
    iput v0, p0, Lea;->b:I

    .line 72
    iput-object v1, p0, Lea;->c:Landroid/content/Context;

    .line 73
    iput-object v1, p0, Lea;->d:Ljava/lang/String;

    .line 76
    iput p2, p0, Lea;->a:I

    .line 77
    iput p3, p0, Lea;->b:I

    .line 78
    iput-object p5, p0, Lea;->c:Landroid/content/Context;

    .line 79
    iput-object p4, p0, Lea;->d:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private a()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lea;->e:LdZ;

    invoke-static {v1}, LdZ;->a(LdZ;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-object v0

    .line 104
    :cond_0
    :try_start_0
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 107
    iget-object v1, p0, Lea;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lea;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 111
    :try_start_1
    iget-object v1, p0, Lea;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 117
    new-instance v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v1, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 119
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    move-object v0, v1

    .line 120
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 5

    .prologue
    .line 85
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 86
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    iget v4, p0, Lea;->a:I

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 89
    invoke-direct {p0}, Lea;->a()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 93
    :cond_0
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    iget v4, p0, Lea;->a:I

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 94
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {p0}, Lea;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    goto :goto_0
.end method
