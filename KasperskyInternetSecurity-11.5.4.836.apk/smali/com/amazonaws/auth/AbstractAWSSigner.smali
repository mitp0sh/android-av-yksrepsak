.class public abstract Lcom/amazonaws/auth/AbstractAWSSigner;
.super Ljava/lang/Object;
.source "AbstractAWSSigner.java"

# interfaces
.implements Lcom/amazonaws/auth/Signer;


# static fields
.field protected static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract addSessionCredentials(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/auth/AWSSessionCredentials;",
            ")V"
        }
    .end annotation
.end method

.method protected getBinaryRequestPayload(Lcom/amazonaws/Request;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)[B"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-static {p1}, Lcom/amazonaws/util/HttpUtils;->usePayloadForQueryParameters(Lcom/amazonaws/Request;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-static {p1}, Lcom/amazonaws/util/HttpUtils;->encodeParameters(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "encodedParameters":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 222
    .end local v1    # "encodedParameters":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 216
    .restart local v1    # "encodedParameters":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Unable to encode string into bytes"

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "encodedParameters":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/AbstractAWSSigner;->getBinaryRequestPayloadWithoutQueryParams(Lcom/amazonaws/Request;)[B

    move-result-object v2

    goto :goto_0
.end method

.method protected getBinaryRequestPayloadStream(Lcom/amazonaws/Request;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-static {p1}, Lcom/amazonaws/util/HttpUtils;->usePayloadForQueryParameters(Lcom/amazonaws/Request;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    invoke-static {p1}, Lcom/amazonaws/util/HttpUtils;->encodeParameters(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "encodedParameters":Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 292
    .end local v1    # "encodedParameters":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 286
    .restart local v1    # "encodedParameters":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Unable to encode string into bytes"

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "encodedParameters":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/AbstractAWSSigner;->getBinaryRequestPayloadStreamWithoutQueryParams(Lcom/amazonaws/Request;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method protected getBinaryRequestPayloadStreamWithoutQueryParams(Lcom/amazonaws/Request;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 298
    .local v0, "content":Ljava/io/InputStream;
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    .end local v0    # "content":Ljava/io/InputStream;
    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 308
    :cond_0
    :goto_0
    return-object v0

    .line 300
    .restart local v0    # "content":Ljava/io/InputStream;
    :cond_1
    instance-of v2, v0, Lcom/amazonaws/util/StringInputStream;

    if-nez v2, :cond_0

    .line 304
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 305
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Unable to read request payload to sign request."

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v0    # "content":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read request payload to sign request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "content":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method protected getBinaryRequestPayloadWithoutQueryParams(Lcom/amazonaws/Request;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)[B"
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const/4 v6, -0x1

    .line 259
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/AbstractAWSSigner;->getBinaryRequestPayloadStreamWithoutQueryParams(Lcom/amazonaws/Request;)Ljava/io/InputStream;

    move-result-object v3

    .line 262
    .local v3, "content":Ljava/io/InputStream;
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->mark(I)V

    .line 263
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 264
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x1400

    new-array v0, v5, [B

    .line 266
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 267
    .local v2, "bytesRead":I
    if-ne v2, v6, :cond_0

    .line 272
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 273
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 275
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 269
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v0    # "buffer":[B
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v4

    .line 277
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read request payload to sign request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected getCanonicalizedEndpoint(Ljava/net/URI;)Ljava/lang/String;
    .locals 3
    .param p1, "endpoint"    # Ljava/net/URI;

    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "endpointForStringToSign":Ljava/lang/String;
    invoke-static {p1}, Lcom/amazonaws/util/HttpUtils;->isUsingNonDefaultPort(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_0
    return-object v0
.end method

.method protected getCanonicalizedQueryString(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-static {p1}, Lcom/amazonaws/util/HttpUtils;->usePayloadForQueryParameters(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 201
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/AbstractAWSSigner;->getCanonicalizedQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCanonicalizedQueryString(Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 169
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 171
    .local v4, "sorted":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 172
    .local v3, "pairs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 174
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 176
    .local v5, "value":Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v8}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 181
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 183
    .restart local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    const-string v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected getCanonicalizedResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 315
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 316
    :cond_0
    const-string v0, "/"

    .line 322
    :cond_1
    :goto_0
    return-object v0

    .line 318
    :cond_2
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "value":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRequestPayload(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/AbstractAWSSigner;->getBinaryRequestPayload(Lcom/amazonaws/Request;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/AbstractAWSSigner;->newString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestPayloadWithoutQueryParams(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/AbstractAWSSigner;->getBinaryRequestPayloadWithoutQueryParams(Lcom/amazonaws/Request;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/AbstractAWSSigner;->newString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignatureDate(I)Ljava/util/Date;
    .locals 5
    .param p1, "timeOffset"    # I

    .prologue
    .line 393
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 394
    .local v0, "dateValue":Ljava/util/Date;
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 396
    .local v1, "epochMillis":J
    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 397
    new-instance v0, Ljava/util/Date;

    .end local v0    # "dateValue":Ljava/util/Date;
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 399
    .end local v1    # "epochMillis":J
    .restart local v0    # "dateValue":Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method protected hash(Ljava/io/InputStream;)[B
    .locals 7
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 123
    .local v3, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p1, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 124
    .local v1, "digestInputStream":Ljava/security/DigestInputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 125
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {v1, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_0

    .line 126
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 127
    .end local v0    # "buffer":[B
    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to compute hash while signing request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected hash(Ljava/lang/String;)[B
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 113
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 114
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 115
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to compute hash while signing request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected hash([B)[B
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 147
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 148
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 149
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to compute hash while signing request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected newString([B)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 386
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Unable to encode bytes to String"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected sanitizeCredentials(Lcom/amazonaws/auth/AWSCredentials;)Lcom/amazonaws/auth/AWSCredentials;
    .locals 5
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "accessKeyId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 358
    .local v2, "secretKey":Ljava/lang/String;
    const/4 v3, 0x0

    .line 359
    .local v3, "token":Ljava/lang/String;
    monitor-enter p1

    .line 360
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-interface {p1}, Lcom/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v2

    .line 362
    instance-of v4, p1, Lcom/amazonaws/auth/AWSSessionCredentials;

    if-eqz v4, :cond_0

    .line 363
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/auth/AWSSessionCredentials;

    move-object v4, v0

    invoke-interface {v4}, Lcom/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 365
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 367
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 368
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 370
    :cond_3
    instance-of v4, p1, Lcom/amazonaws/auth/AWSSessionCredentials;

    if-eqz v4, :cond_4

    .line 371
    new-instance v4, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-direct {v4, v1, v2, v3}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_0
    return-object v4

    .line 365
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 374
    :cond_4
    new-instance v4, Lcom/amazonaws/auth/BasicAWSCredentials;

    invoke-direct {v4, v1, v2}, Lcom/amazonaws/auth/BasicAWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sign(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B
    .locals 5
    .param p1, "stringData"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "algorithm"    # Lcom/amazonaws/auth/SigningAlgorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 82
    .local v0, "data":[B
    invoke-virtual {p0, v0, p2, p3}, Lcom/amazonaws/auth/AbstractAWSSigner;->sign([B[BLcom/amazonaws/auth/SigningAlgorithm;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 83
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to calculate a request signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected sign([B[BLcom/amazonaws/auth/SigningAlgorithm;)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .param p3, "algorithm"    # Lcom/amazonaws/auth/SigningAlgorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p3}, Lcom/amazonaws/auth/SigningAlgorithm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 91
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Lcom/amazonaws/auth/SigningAlgorithm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 92
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 93
    .end local v1    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to calculate a request signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected signAndBase64Encode(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "algorithm"    # Lcom/amazonaws/auth/SigningAlgorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/amazonaws/auth/AbstractAWSSigner;->signAndBase64Encode([BLjava/lang/String;Lcom/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to calculate a request signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected signAndBase64Encode([BLjava/lang/String;Lcom/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "algorithm"    # Lcom/amazonaws/auth/SigningAlgorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lcom/amazonaws/auth/AbstractAWSSigner;->sign([B[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v1

    .line 73
    .local v1, "signature":[B
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 74
    .end local v1    # "signature":[B
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to calculate a request signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
