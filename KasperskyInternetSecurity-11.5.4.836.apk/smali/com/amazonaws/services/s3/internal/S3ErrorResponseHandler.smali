.class public Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;
.super Ljava/lang/Object;
.source "S3ErrorResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler",
        "<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillInErrorType(Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/http/HttpResponse;)V
    .locals 2
    .param p1, "ase"    # Lcom/amazonaws/AmazonServiceException;
    .param p2, "errorResponse"    # Lcom/amazonaws/http/HttpResponse;

    .prologue
    .line 94
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 95
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 8
    .param p1, "errorResponse"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getRequest()Lcom/amazonaws/Request;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v6

    sget-object v7, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    if-ne v6, v7, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v7, "x-amz-request-id"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    .local v5, "requestId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v7, "x-amz-id-2"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, "extendedRequestId":Ljava/lang/String;
    new-instance v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 57
    invoke-virtual {v0, v5}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->fillInErrorType(Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/http/HttpResponse;)V

    .line 76
    :goto_0
    return-object v0

    .line 63
    .end local v0    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v3    # "extendedRequestId":Ljava/lang/String;
    .end local v5    # "requestId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/XpathUtils;->documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 64
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v6, "Error/Message"

    invoke-static {v6, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "message":Ljava/lang/String;
    const-string v6, "Error/Code"

    invoke-static {v6, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "errorCode":Ljava/lang/String;
    const-string v6, "Error/RequestId"

    invoke-static {v6, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .restart local v5    # "requestId":Ljava/lang/String;
    const-string v6, "Error/HostId"

    invoke-static {v6, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .restart local v3    # "extendedRequestId":Ljava/lang/String;
    new-instance v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v0, v4}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v0    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 71
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v5}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->fillInErrorType(Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/http/HttpResponse;)V

    goto :goto_0
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
    .line 38
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
