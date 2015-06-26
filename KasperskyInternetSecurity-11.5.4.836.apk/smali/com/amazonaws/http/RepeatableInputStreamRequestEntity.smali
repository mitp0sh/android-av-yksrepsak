.class Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;
.super Lorg/apache/http/entity/BasicHttpEntity;
.source "RepeatableInputStreamRequestEntity.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private content:Ljava/io/InputStream;

.field private firstAttempt:Z

.field private inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

.field private originalException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/Request;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-direct {p0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 38
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->firstAttempt:Z

    .line 69
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setChunked(Z)V

    .line 81
    const-wide/16 v0, -0x1

    .line 83
    .local v0, "contentLength":J
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Length"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, "contentLengthString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 85
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 92
    .end local v2    # "contentLengthString":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    .local v3, "contentType":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/entity/InputStreamEntity;

    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v5, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    .line 95
    iget-object v5, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v5, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 96
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 98
    iget-object v5, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {p0, v5}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setContent(Ljava/io/InputStream;)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setContentType(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setContentLength(J)V

    .line 101
    return-void

    .line 87
    .end local v3    # "contentType":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 88
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Unable to parse content length from request.  Buffering contents in memory."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public isChunked()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v0}, Lorg/apache/http/entity/InputStreamEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->firstAttempt:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 139
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->firstAttempt:Z

    .line 140
    iget-object v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v1, p1}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->originalException:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->originalException:Ljava/io/IOException;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->originalException:Ljava/io/IOException;

    throw v1
.end method
