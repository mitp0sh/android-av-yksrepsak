.class public Lcom/amazonaws/auth/AWS3Signer;
.super Lcom/amazonaws/auth/AbstractAWSSigner;
.source "AWS3Signer.java"


# static fields
.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "X-Amzn-Authorization"

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "AWS3-HTTPS"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "AWS3"

.field private static final NONCE_HEADER:Ljava/lang/String; = "x-amz-nonce"

.field protected static final dateUtils:Lcom/amazonaws/util/DateUtils;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private overriddenDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/auth/AWS3Signer;->dateUtils:Lcom/amazonaws/util/DateUtils;

    .line 50
    const-class v0, Lcom/amazonaws/auth/AWS3Signer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/AWS3Signer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazonaws/auth/AbstractAWSSigner;-><init>()V

    return-void
.end method

.method private getSignedHeadersComponent(Lcom/amazonaws/Request;)Ljava/lang/String;
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
    .line 132
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "SignedHeaders="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/4 v1, 0x1

    .line 135
    .local v1, "first":Z
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/AWS3Signer;->getHeadersForStringToSign(Lcom/amazonaws/Request;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    .local v2, "header":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/4 v1, 0x0

    goto :goto_0

    .line 140
    .end local v2    # "header":Ljava/lang/String;
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
    .line 210
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const-string v0, "x-amz-security-token"

    invoke-interface {p2}, Lcom/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method protected getCanonicalizedHeadersForStringToSign(Lcom/amazonaws/Request;)Ljava/lang/String;
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
    .line 170
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/AWS3Signer;->getHeadersForStringToSign(Lcom/amazonaws/Request;)Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "headersToSign":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 173
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_0
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 177
    .local v5, "sortedHeaderMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 183
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 189
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected getHeadersForStringToSign(Lcom/amazonaws/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, "headersToSign":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "lowerCaseKey":Ljava/lang/String;
    const-string v5, "x-amz"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "lowerCaseKey":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 155
    return-object v1
.end method

.method overrideDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/auth/AWS3Signer;->overriddenDate:Ljava/lang/String;

    .line 167
    return-void
.end method

.method protected shouldUseHttpsScheme(Lcom/amazonaws/Request;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "protocol":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const/4 v2, 0x0

    .line 198
    :goto_0
    return v2

    .line 197
    :cond_0
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    const/4 v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown request endpoint protocol encountered while signing request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Unable to parse request endpoint during signing"

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 17
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
    .line 63
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    move-object/from16 v0, p2

    instance-of v14, v0, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    if-eqz v14, :cond_0

    .line 129
    :goto_0
    return-void

    .line 67
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/AWS3Signer;->sanitizeCredentials(Lcom/amazonaws/auth/AWSCredentials;)Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v11

    .line 69
    .local v11, "sanitizedCredentials":Lcom/amazonaws/auth/AWSCredentials;
    sget-object v2, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazonaws/auth/SigningAlgorithm;

    .line 70
    .local v2, "algorithm":Lcom/amazonaws/auth/SigningAlgorithm;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, "nonce":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getTimeOffset()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/amazonaws/auth/AWS3Signer;->getSignatureDate(I)Ljava/util/Date;

    move-result-object v6

    .line 72
    .local v6, "dateValue":Ljava/util/Date;
    sget-object v14, Lcom/amazonaws/auth/AWS3Signer;->dateUtils:Lcom/amazonaws/util/DateUtils;

    invoke-virtual {v14, v6}, Lcom/amazonaws/util/DateUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "date":Ljava/lang/String;
    const/4 v9, 0x0

    .line 75
    .local v9, "isHttps":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/auth/AWS3Signer;->overriddenDate:Ljava/lang/String;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/auth/AWS3Signer;->overriddenDate:Ljava/lang/String;

    .line 76
    :cond_1
    const-string v14, "Date"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v14, "X-Amz-Date"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "hostHeader":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v14

    invoke-static {v14}, Lcom/amazonaws/util/HttpUtils;->isUsingNonDefaultPort(Ljava/net/URI;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 83
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URI;->getPort()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    :cond_2
    const-string v14, "Host"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    instance-of v14, v11, Lcom/amazonaws/auth/AWSSessionCredentials;

    if-eqz v14, :cond_3

    move-object v14, v11

    .line 88
    check-cast v14, Lcom/amazonaws/auth/AWSSessionCredentials;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/amazonaws/auth/AWS3Signer;->addSessionCredentials(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V

    .line 92
    :cond_3
    if-eqz v9, :cond_5

    .line 93
    const-string v14, "x-amz-nonce"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v10}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, "stringToSign":Ljava/lang/String;
    :try_start_0
    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 114
    .local v4, "bytesToSign":[B
    :goto_1
    sget-object v14, Lcom/amazonaws/auth/AWS3Signer;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Calculated StringToSign: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 116
    invoke-interface {v11}, Lcom/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v2}, Lcom/amazonaws/auth/AWS3Signer;->signAndBase64Encode([BLjava/lang/String;Lcom/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "signature":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v3, "builder":Ljava/lang/StringBuilder;
    if-eqz v9, :cond_6

    const-string v14, "AWS3-HTTPS"

    :goto_2
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AWSAccessKeyId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Lcom/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Algorithm="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/amazonaws/auth/SigningAlgorithm;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    if-nez v9, :cond_4

    .line 124
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/auth/AWS3Signer;->getSignedHeadersComponent(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v14, "X-Amzn-Authorization"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "bytesToSign":[B
    .end local v12    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 98
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v14, Lcom/amazonaws/AmazonClientException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to serialize string to bytes: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 107
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v13    # "stringToSign":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v15

    invoke-virtual {v15}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/amazonaws/auth/AWS3Signer;->getCanonicalizedResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/amazonaws/auth/AWS3Signer;->getCanonicalizedQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lcom/amazonaws/auth/AWS3Signer;->getCanonicalizedHeadersForStringToSign(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lcom/amazonaws/auth/AWS3Signer;->getRequestPayloadWithoutQueryParams(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 112
    .restart local v13    # "stringToSign":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amazonaws/auth/AWS3Signer;->hash(Ljava/lang/String;)[B

    move-result-object v4

    .restart local v4    # "bytesToSign":[B
    goto/16 :goto_1

    .line 119
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v12    # "signature":Ljava/lang/String;
    :cond_6
    const-string v14, "AWS3"

    goto/16 :goto_2
.end method
