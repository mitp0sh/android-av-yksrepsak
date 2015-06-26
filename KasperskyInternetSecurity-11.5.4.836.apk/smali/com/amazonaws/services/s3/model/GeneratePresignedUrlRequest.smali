.class public Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GeneratePresignedUrlRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private expiration:Ljava/util/Date;

.field private key:Ljava/lang/String;

.field private method:Lcom/amazonaws/HttpMethod;

.field private requestParameters:Ljava/util/Map;
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

.field private responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "method"    # Lcom/amazonaws/HttpMethod;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    .line 111
    return-void
.end method


# virtual methods
.method public addRequestParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/amazonaws/HttpMethod;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    return-object v0
.end method

.method public getRequestParameters()Ljava/util/Map;
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
    .line 294
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentType:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 0
    .param p1, "expiration"    # Ljava/util/Date;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    .line 249
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setMethod(Lcom/amazonaws/HttpMethod;)V
    .locals 0
    .param p1, "method"    # Lcom/amazonaws/HttpMethod;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    .line 136
    return-void
.end method

.method public setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 0
    .param p1, "responseHeaders"    # Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .line 314
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setBucketName(Ljava/lang/String;)V

    .line 189
    return-object p0
.end method

.method public withContentType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setContentType(Ljava/lang/String;)V

    .line 363
    return-object p0
.end method

.method public withExpiration(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0
    .param p1, "expiration"    # Ljava/util/Date;

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 267
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setKey(Ljava/lang/String;)V

    .line 223
    return-object p0
.end method

.method public withMethod(Lcom/amazonaws/HttpMethod;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0
    .param p1, "method"    # Lcom/amazonaws/HttpMethod;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setMethod(Lcom/amazonaws/HttpMethod;)V

    .line 155
    return-object p0
.end method

.method public withResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0
    .param p1, "responseHeaders"    # Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 328
    return-object p0
.end method
