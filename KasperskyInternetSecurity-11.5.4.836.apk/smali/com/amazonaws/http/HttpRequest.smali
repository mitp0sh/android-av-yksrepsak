.class public Lcom/amazonaws/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private endpoint:Ljava/net/URI;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;

.field private methodName:Lcom/amazonaws/http/HttpMethodName;

.field private originalRequest:Lcom/amazonaws/AmazonWebServiceRequest;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resourcePath:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/http/HttpMethodName;)V
    .locals 1
    .param p1, "methodName"    # Lcom/amazonaws/http/HttpMethodName;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/HttpRequest;->parameters:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->methodName:Lcom/amazonaws/http/HttpMethodName;

    .line 45
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->endpoint:Ljava/net/URI;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMethodName()Lcom/amazonaws/http/HttpMethodName;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->methodName:Lcom/amazonaws/http/HttpMethodName;

    return-object v0
.end method

.method public getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->originalRequest:Lcom/amazonaws/AmazonWebServiceRequest;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 179
    return-void
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0
    .param p1, "endpoint"    # Ljava/net/URI;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->endpoint:Ljava/net/URI;

    .line 95
    return-void
.end method

.method public setOriginalRequest(Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->originalRequest:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 201
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->parameters:Ljava/util/Map;

    .line 143
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->resourcePath:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->serviceName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getMethodName()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getEndpoint()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getResourcePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getResourcePath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 226
    const-string v4, "Parameters: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 228
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 221
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 231
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 235
    const-string v4, "Headers: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    .restart local v3    # "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 240
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public withParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/http/HttpRequest;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/http/HttpRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-object p0
.end method
