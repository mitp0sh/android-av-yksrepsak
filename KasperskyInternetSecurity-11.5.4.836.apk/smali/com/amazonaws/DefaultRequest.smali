.class public Lcom/amazonaws/DefaultRequest;
.super Ljava/lang/Object;
.source "DefaultRequest.java"

# interfaces
.implements Lcom/amazonaws/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/Request",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

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

.field private httpMethod:Lcom/amazonaws/http/HttpMethodName;

.field private final originalRequest:Lcom/amazonaws/AmazonWebServiceRequest;

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

.field private timeOffset:I


# direct methods
.method public constructor <init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 1
    .param p1, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    iput-object v0, p0, Lcom/amazonaws/DefaultRequest;->httpMethod:Lcom/amazonaws/http/HttpMethodName;

    .line 73
    iput-object p2, p0, Lcom/amazonaws/DefaultRequest;->serviceName:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->originalRequest:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 85
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 132
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->endpoint:Ljava/net/URI;

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
    .line 111
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpMethod()Lcom/amazonaws/http/HttpMethodName;
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->httpMethod:Lcom/amazonaws/http/HttpMethodName;

    return-object v0
.end method

.method public getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->originalRequest:Lcom/amazonaws/AmazonWebServiceRequest;

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
    .line 139
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget v0, p0, Lcom/amazonaws/DefaultRequest;->timeOffset:I

    return v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    .line 196
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->content:Ljava/io/InputStream;

    .line 197
    return-void
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0
    .param p1, "endpoint"    # Ljava/net/URI;

    .prologue
    .line 168
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->endpoint:Ljava/net/URI;

    .line 169
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
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
    .line 203
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 204
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 205
    return-void
.end method

.method public setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V
    .locals 0
    .param p1, "httpMethod"    # Lcom/amazonaws/http/HttpMethodName;

    .prologue
    .line 161
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->httpMethod:Lcom/amazonaws/http/HttpMethodName;

    .line 162
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 1
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
    .line 211
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 213
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 118
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->resourcePath:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0
    .param p1, "timeOffset"    # I

    .prologue
    .line 226
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput p1, p0, Lcom/amazonaws/DefaultRequest;->timeOffset:I

    .line 227
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 239
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

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

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getEndpoint()Ljava/net/URI;

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

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getResourcePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getResourcePath()Ljava/lang/String;

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

    .line 248
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 249
    const-string v4, "Parameters: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

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

    .line 251
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
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

    .line 244
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 254
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 258
    const-string v4, "Headers: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

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

    .line 260
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 261
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

    .line 263
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public withParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/Request;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/Request",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/DefaultRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-object p0
.end method

.method public withTimeOffset(I)Lcom/amazonaws/Request;
    .locals 0
    .param p1, "timeOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazonaws/Request",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/DefaultRequest;->setTimeOffset(I)V

    .line 234
    return-object p0
.end method
