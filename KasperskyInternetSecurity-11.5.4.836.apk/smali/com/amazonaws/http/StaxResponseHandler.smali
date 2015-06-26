.class public Lcom/amazonaws/http/StaxResponseHandler;
.super Ljava/lang/Object;
.source "StaxResponseHandler.java"

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
.field private static final log:Lorg/apache/commons/logging/Log;

.field private static xmlInputFactory:Lcom/amazonaws/javax/xml/stream/XMLInputFactory;


# instance fields
.field private responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/StaxResponseHandler;->log:Lorg/apache/commons/logging/Log;

    .line 50
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/XMLInputFactory;->newInstance()Lcom/amazonaws/javax/xml/stream/XMLInputFactory;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/StaxResponseHandler;->xmlInputFactory:Lcom/amazonaws/javax/xml/stream/XMLInputFactory;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TT;>;"
    .local p1, "responseUnmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TT;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazonaws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 72
    iget-object v0, p0, Lcom/amazonaws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/amazonaws/transform/VoidStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/VoidStaxUnmarshaller;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 9
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
    .line 82
    .local p0, "this":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TT;>;"
    sget-object v6, Lcom/amazonaws/http/StaxResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Parsing service response XML"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 84
    .local v1, "content":Ljava/io/InputStream;
    if-nez v1, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1    # "content":Ljava/io/InputStream;
    const-string v6, "<eof/>"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    .restart local v1    # "content":Ljava/io/InputStream;
    :cond_0
    sget-object v6, Lcom/amazonaws/http/StaxResponseHandler;->xmlInputFactory:Lcom/amazonaws/javax/xml/stream/XMLInputFactory;

    invoke-virtual {v6, v1}, Lcom/amazonaws/javax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    move-result-object v2

    .line 87
    .local v2, "eventReader":Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    :try_start_0
    new-instance v0, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v0}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 88
    .local v0, "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    new-instance v5, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/amazonaws/transform/StaxUnmarshallerContext;-><init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;Ljava/util/Map;)V

    .line 89
    .local v5, "unmarshallerContext":Lcom/amazonaws/transform/StaxUnmarshallerContext;
    const-string v6, "ResponseMetadata/RequestId"

    const/4 v7, 0x2

    const-string v8, "AWS_REQUEST_ID"

    invoke-virtual {v5, v6, v7, v8}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    const-string v6, "requestId"

    const/4 v7, 0x2

    const-string v8, "AWS_REQUEST_ID"

    invoke-virtual {v5, v6, v7, v8}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    invoke-virtual {p0, v5}, Lcom/amazonaws/http/StaxResponseHandler;->registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/StaxUnmarshallerContext;)V

    .line 93
    iget-object v6, p0, Lcom/amazonaws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v6, v5}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 94
    .local v4, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v4}, Lcom/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v5}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getMetadata()Ljava/util/Map;

    move-result-object v3

    .line 97
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/amazonaws/ResponseMetadata;

    invoke-direct {v6, v3}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v6}, Lcom/amazonaws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/amazonaws/ResponseMetadata;)V

    .line 99
    sget-object v6, Lcom/amazonaws/http/StaxResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Done parsing service response"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    .end local v0    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    .end local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    .end local v5    # "unmarshallerContext":Lcom/amazonaws/transform/StaxUnmarshallerContext;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v6

    .restart local v0    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    .restart local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "result":Ljava/lang/Object;, "TT;"
    .restart local v5    # "unmarshallerContext":Lcom/amazonaws/transform/StaxUnmarshallerContext;
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v0    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    .end local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    .end local v5    # "unmarshallerContext":Lcom/amazonaws/transform/StaxUnmarshallerContext;
    :catch_1
    move-exception v7

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
    .line 41
    .local p0, "this":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TT;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/StaxResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/StaxUnmarshallerContext;)V
    .locals 0
    .param p1, "unmarshallerContext"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;

    .prologue
    .line 114
    .local p0, "this":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TT;>;"
    return-void
.end method
