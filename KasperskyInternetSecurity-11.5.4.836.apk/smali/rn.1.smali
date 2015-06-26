.class final Lrn;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lrn;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Ljava/net/URL;
    .locals 5

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    const-string v0, "location"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 136
    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lorg/apache/http/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received redirect response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no location header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 145
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid redirect URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
