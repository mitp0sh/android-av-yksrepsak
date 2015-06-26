.class public Lcom/amazonaws/http/JsonResponseHandler;
.super Ljava/lang/Object;
.source "JsonResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler",
        "<",
        "Lcom/amazonaws/AmazonWebServiceResponse",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static jsonFactory:Lorg/codehaus/jackson/JsonFactory;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field public needsConnectionLeftOpen:Z

.field private responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    .line 47
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/http/JsonResponseHandler;->jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    .local p1, "responseUnmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TT;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    .line 62
    iput-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 71
    iget-object v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/amazonaws/transform/VoidJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/VoidJsonUnmarshaller;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 14
    .param p1, "response"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    sget-object v11, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v12, "Parsing service response JSON"

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v11

    const-string v12, "x-amz-crc32"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "CRC32Checksum":Ljava/lang/String;
    const/4 v4, 0x0

    .line 86
    .local v4, "crc32ChecksumInputStream":Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;
    const/4 v5, 0x0

    .line 88
    .local v5, "jsonParser":Lorg/codehaus/jackson/JsonParser;
    iget-boolean v11, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v11, :cond_0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    new-instance v4, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;

    .end local v4    # "crc32ChecksumInputStream":Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    .restart local v4    # "crc32ChecksumInputStream":Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;
    sget-object v11, Lcom/amazonaws/http/JsonResponseHandler;->jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v11, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    .line 98
    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v1}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 99
    .local v1, "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    new-instance v10, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-direct {v10, v5, p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;-><init>(Lorg/codehaus/jackson/JsonParser;Lcom/amazonaws/http/HttpResponse;)V

    .line 100
    .local v10, "unmarshallerContext":Lcom/amazonaws/transform/JsonUnmarshallerContext;
    invoke-virtual {p0, v10}, Lcom/amazonaws/http/JsonResponseHandler;->registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/JsonUnmarshallerContext;)V

    .line 102
    iget-object v11, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v11, v10}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 104
    .local v7, "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_3

    .line 105
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 106
    .local v8, "serverSideCRC":J
    invoke-virtual {v4}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->getCRC32Checksum()J

    move-result-wide v2

    .line 107
    .local v2, "clientSideCRC":J
    cmp-long v11, v2, v8

    if-eqz v11, :cond_3

    .line 108
    new-instance v11, Lcom/amazonaws/internal/CRC32MismatchException;

    const-string v12, "Client calculated crc32 checksum didn\'t match that calculated by server side"

    invoke-direct {v11, v12}, Lcom/amazonaws/internal/CRC32MismatchException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v1    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    .end local v2    # "clientSideCRC":J
    .end local v7    # "result":Ljava/lang/Object;, "TT;"
    .end local v8    # "serverSideCRC":J
    .end local v10    # "unmarshallerContext":Lcom/amazonaws/transform/JsonUnmarshallerContext;
    :catchall_0
    move-exception v11

    iget-boolean v12, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v12, :cond_1

    .line 122
    :try_start_1
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    throw v11

    .line 93
    :cond_2
    sget-object v11, Lcom/amazonaws/http/JsonResponseHandler;->jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    goto :goto_0

    .line 112
    .restart local v1    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    .restart local v7    # "result":Ljava/lang/Object;, "TT;"
    .restart local v10    # "unmarshallerContext":Lcom/amazonaws/transform/JsonUnmarshallerContext;
    :cond_3
    :try_start_2
    invoke-virtual {v1, v7}, Lcom/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v10}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getMetadata()Ljava/util/Map;

    move-result-object v6

    .line 115
    .local v6, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "AWS_REQUEST_ID"

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v12

    const-string v13, "x-amzn-RequestId"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v11, Lcom/amazonaws/ResponseMetadata;

    invoke-direct {v11, v6}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v11}, Lcom/amazonaws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/amazonaws/ResponseMetadata;)V

    .line 118
    sget-object v11, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v12, "Done parsing service response"

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    iget-boolean v11, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v11, :cond_4

    .line 122
    :try_start_3
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_2
    return-object v1

    :catch_0
    move-exception v11

    goto :goto_2

    .end local v1    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    .end local v6    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "result":Ljava/lang/Object;, "TT;"
    .end local v10    # "unmarshallerContext":Lcom/amazonaws/transform/JsonUnmarshallerContext;
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/JsonResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    iget-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    return v0
.end method

.method protected registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/JsonUnmarshallerContext;)V
    .locals 0
    .param p1, "unmarshallerContext"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;

    .prologue
    .line 135
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    return-void
.end method
