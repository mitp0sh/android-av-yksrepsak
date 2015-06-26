.class public Lcom/amazonaws/http/DefaultErrorResponseHandler;
.super Ljava/lang/Object;
.source "DefaultErrorResponseHandler.java"

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


# instance fields
.field private unmarshallerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "unmarshallerList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/AmazonServiceException;Lorg/w3c/dom/Node;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/amazonaws/http/DefaultErrorResponseHandler;->unmarshallerList:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 11
    .param p1, "errorResponse"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/XpathUtils;->documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    .local v1, "document":Lorg/w3c/dom/Document;
    iget-object v6, p0, Lcom/amazonaws/http/DefaultErrorResponseHandler;->unmarshallerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/transform/Unmarshaller;

    .line 87
    .local v5, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/AmazonServiceException;Lorg/w3c/dom/Node;>;"
    invoke-interface {v5, v1}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    .line 88
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 90
    .end local v0    # "ase":Lcom/amazonaws/AmazonServiceException;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/AmazonServiceException;Lorg/w3c/dom/Node;>;"
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Lorg/xml/sax/SAXParseException;
    new-instance v3, Lcom/amazonaws/AmazonServiceException;

    const-string v6, "Unable to unmarshall error response (%s)"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    .local v3, "exception":Lcom/amazonaws/AmazonServiceException;
    const-string v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 73
    sget-object v6, Lcom/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v3, v6}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 74
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    move-object v0, v3

    .line 76
    goto :goto_0

    .line 94
    .end local v2    # "e":Lorg/xml/sax/SAXParseException;
    .end local v3    # "exception":Lcom/amazonaws/AmazonServiceException;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Unable to unmarshall error response from service"

    invoke-direct {v6, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v6
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
    .line 37
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/DefaultErrorResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method
