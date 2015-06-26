.class public Lcom/amazonaws/http/HttpMethodReleaseInputStream;
.super Ljava/io/InputStream;
.source "HttpMethodReleaseInputStream.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private alreadyReleased:Z

.field private httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

.field private inputStream:Ljava/io/InputStream;

.field private underlyingStreamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 4
    .param p1, "httpMethod"    # Lorg/apache/http/HttpEntityEnclosingRequest;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    .line 50
    iput-object v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 51
    iput-boolean v3, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    .line 52
    iput-boolean v3, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    .line 67
    iput-object p1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 70
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Unable to obtain HttpMethod\'s response data stream"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 76
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :goto_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v2, v3, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 77
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 182
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 185
    :cond_0
    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 198
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Released HttpMethod as its response data stream is closed"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 203
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v0, :cond_1

    .line 218
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Attempting to release HttpMethod in finalize() as its response data stream has gone out of scope. This attempt will not always succeed and cannot be relied upon! Please ensure S3 response data streams are always fully consumed or closed to avoid HTTP connection starvation."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 224
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Successfully released HttpMethod in finalize(). You were lucky this time... Please ensure S3 response data streams are always fully consumed or closed."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 229
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 230
    return-void
.end method

.method public getHttpRequest()Lorg/apache/http/HttpEntityEnclosingRequest;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 123
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    .line 125
    iget-boolean v2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 127
    sget-object v2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    sget-object v2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released HttpMethod as its response data stream is fully consumed"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    return v1

    .line 133
    .end local v1    # "read":I
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 135
    sget-object v2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    sget-object v2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 138
    :cond_1
    throw v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 151
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    .line 153
    iget-boolean v2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v2, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 155
    sget-object v2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    sget-object v2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released HttpMethod as its response data stream is fully consumed"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    return v1

    .line 161
    .end local v1    # "read":I
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 163
    sget-object v2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    sget-object v2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 166
    :cond_1
    throw v0
.end method

.method protected releaseConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-boolean v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v1, :cond_1

    .line 101
    iget-boolean v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

    instance-of v1, v1, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 106
    .local v0, "abortableHttpRequest":Lorg/apache/http/client/methods/AbortableHttpRequest;
    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    .line 109
    .end local v0    # "abortableHttpRequest":Lorg/apache/http/client/methods/AbortableHttpRequest;
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    .line 112
    :cond_1
    return-void
.end method
