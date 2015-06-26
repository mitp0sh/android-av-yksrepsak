.class public Lcom/amazonaws/auth/AWS4Signer;
.super Lcom/amazonaws/auth/AbstractAWSSigner;
.source "AWS4Signer.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AWS4-HMAC-SHA256"

.field private static final TERMINATOR:Ljava/lang/String; = "aws4_request"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private overriddenDate:Ljava/util/Date;

.field private regionName:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/amazonaws/auth/AWS4Signer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/AWS4Signer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazonaws/auth/AbstractAWSSigner;-><init>()V

    return-void
.end method

.method private extractRegionName(Ljava/net/URI;)Ljava/lang/String;
    .locals 1
    .param p1, "endpoint"    # Ljava/net/URI;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer;->regionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer;->regionName:Ljava/lang/String;

    .line 190
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/amazonaws/util/AwsHostNameUtils;->parseRegionName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private extractServiceName(Ljava/net/URI;)Ljava/lang/String;
    .locals 1
    .param p1, "endpoint"    # Ljava/net/URI;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer;->serviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer;->serviceName:Ljava/lang/String;

    .line 196
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/amazonaws/util/AwsHostNameUtils;->parseServiceName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCanonicalizedHeaderString(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v3, "sortedHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "header":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s+"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\\s+"

    const-string v7, " "

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    .end local v1    # "header":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getSignedHeadersString(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v3, "sortedHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .local v1, "header":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    .end local v1    # "header":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected addSessionCredentials(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V
    .locals 2
    .param p2, "credentials"    # Lcom/amazonaws/auth/AWSSessionCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/auth/AWSSessionCredentials;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const-string v0, "x-amz-security-token"

    invoke-interface {p2}, Lcom/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method overrideDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "overriddenDate"    # Ljava/util/Date;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/auth/AWS4Signer;->overriddenDate:Ljava/util/Date;

    .line 202
    return-void
.end method

.method public setRegionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "regionName"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amazonaws/auth/AWS4Signer;->regionName:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/auth/AWS4Signer;->serviceName:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 33
    .param p2, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 152
    :goto_0
    return-void

    .line 71
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/AWS4Signer;->sanitizeCredentials(Lcom/amazonaws/auth/AWSCredentials;)Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v22

    .line 72
    .local v22, "sanitizedCredentials":Lcom/amazonaws/auth/AWSCredentials;
    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/amazonaws/auth/AWSSessionCredentials;

    move/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v30, v22

    .line 73
    check-cast v30, Lcom/amazonaws/auth/AWSSessionCredentials;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/auth/AWS4Signer;->addSessionCredentials(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V

    .line 76
    :cond_1
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v30, "yyyyMMdd"

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v10, "dateStampFormat":Ljava/text/SimpleDateFormat;
    new-instance v30, Ljava/util/SimpleTimeZone;

    const/16 v31, 0x0

    const-string v32, "UTC"

    invoke-direct/range {v30 .. v32}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 79
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v30, "yyyyMMdd\'T\'HHmmss\'Z\'"

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .local v12, "dateTimeFormat":Ljava/text/SimpleDateFormat;
    new-instance v30, Ljava/util/SimpleTimeZone;

    const/16 v31, 0x0

    const-string v32, "UTC"

    invoke-direct/range {v30 .. v32}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/AWS4Signer;->extractRegionName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v21

    .line 83
    .local v21, "regionName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/AWS4Signer;->extractServiceName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v24

    .line 87
    .local v24, "serviceName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v14

    .line 88
    .local v14, "hostHeader":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/amazonaws/util/HttpUtils;->isUsingNonDefaultPort(Ljava/net/URI;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 89
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ":"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getPort()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 91
    :cond_2
    const-string v30, "Host"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v14}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getTimeOffset()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/AWS4Signer;->getSignatureDate(I)Ljava/util/Date;

    move-result-object v8

    .line 94
    .local v8, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/auth/AWS4Signer;->overriddenDate:Ljava/util/Date;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazonaws/auth/AWS4Signer;->overriddenDate:Ljava/util/Date;

    .line 96
    :cond_3
    invoke-virtual {v12, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, "dateTime":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "dateStamp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/amazonaws/auth/AWS4Signer;->getBinaryRequestPayloadStream(Lcom/amazonaws/Request;)Ljava/io/InputStream;

    move-result-object v20

    .line 100
    .local v20, "payloadStream":Ljava/io/InputStream;
    const/16 v30, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/AWS4Signer;->hash(Ljava/io/InputStream;)[B

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "contentSha256":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const-string v30, "X-Amz-Date"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v11}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v30, "x-amz-content-sha256"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-super {v0, v1}, Lcom/amazonaws/auth/AbstractAWSSigner;->getCanonicalizedResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p1}, Lcom/amazonaws/auth/AWS4Signer;->getCanonicalizedQueryString(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/auth/AWS4Signer;->getCanonicalizedHeaderString(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/auth/AWS4Signer;->getSignedHeadersString(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "canonicalRequest":Ljava/lang/String;
    sget-object v30, Lcom/amazonaws/auth/AWS4Signer;->log:Lorg/apache/commons/logging/Log;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "AWS4 Canonical Request: \'\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 121
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "aws4_request"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 122
    .local v23, "scope":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 123
    .local v28, "signingCredentials":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "AWS4-HMAC-SHA256\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/amazonaws/auth/AWS4Signer;->hash(Ljava/lang/String;)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 128
    .local v29, "stringToSign":Ljava/lang/String;
    sget-object v30, Lcom/amazonaws/auth/AWS4Signer;->log:Lorg/apache/commons/logging/Log;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "AWS4 String to Sign: \'\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 131
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "AWS4"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 132
    .local v17, "kSecret":[B
    sget-object v30, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazonaws/auth/SigningAlgorithm;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    invoke-virtual {v0, v9, v1, v2}, Lcom/amazonaws/auth/AWS4Signer;->sign(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v15

    .line 133
    .local v15, "kDate":[B
    sget-object v30, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazonaws/auth/SigningAlgorithm;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v15, v2}, Lcom/amazonaws/auth/AWS4Signer;->sign(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v16

    .line 134
    .local v16, "kRegion":[B
    sget-object v30, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazonaws/auth/SigningAlgorithm;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/auth/AWS4Signer;->sign(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v18

    .line 135
    .local v18, "kService":[B
    const-string v30, "aws4_request"

    sget-object v31, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazonaws/auth/SigningAlgorithm;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/auth/AWS4Signer;->sign(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v19

    .line 137
    .local v19, "kSigning":[B
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    sget-object v31, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazonaws/auth/SigningAlgorithm;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/auth/AWS4Signer;->sign([B[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v25

    .line 139
    .local v25, "signature":[B
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Credential="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "credentialsAuthorizationHeader":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "SignedHeaders="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/auth/AWS4Signer;->getSignedHeadersString(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 143
    .local v27, "signedHeadersAuthorizationHeader":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Signature="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v25 .. v25}, Lcom/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 146
    .local v26, "signatureAuthorizationHeader":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "AWS4-HMAC-SHA256 "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "authorizationHeader":Ljava/lang/String;
    const-string v30, "Authorization"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v4    # "authorizationHeader":Ljava/lang/String;
    .end local v5    # "canonicalRequest":Ljava/lang/String;
    .end local v7    # "credentialsAuthorizationHeader":Ljava/lang/String;
    .end local v15    # "kDate":[B
    .end local v16    # "kRegion":[B
    .end local v17    # "kSecret":[B
    .end local v18    # "kService":[B
    .end local v19    # "kSigning":[B
    .end local v23    # "scope":Ljava/lang/String;
    .end local v25    # "signature":[B
    .end local v26    # "signatureAuthorizationHeader":Ljava/lang/String;
    .end local v27    # "signedHeadersAuthorizationHeader":Ljava/lang/String;
    .end local v28    # "signingCredentials":Ljava/lang/String;
    .end local v29    # "stringToSign":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 105
    .local v13, "e":Ljava/io/IOException;
    new-instance v30, Lcom/amazonaws/AmazonClientException;

    const-string v31, "Unable to reset stream after calculating AWS4 signature"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v13}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v30
.end method
