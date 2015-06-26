.class public Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
.super Ljava/io/FilterInputStream;
.source "S3ObjectInputStream.java"


# instance fields
.field private final httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 39
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method
