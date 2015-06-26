.class public Lcom/amazonaws/services/s3/AmazonS3Client;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonS3Client.java"

# interfaces
.implements Lcom/amazonaws/services/s3/AmazonS3;


# static fields
.field private static final bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field private final bucketNameUtils:Lcom/amazonaws/services/s3/internal/BucketNameUtils;

.field private clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

.field private errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

.field private voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    .line 204
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 251
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazonaws/auth/AWSCredentialsProvider;

    const/4 v2, 0x0

    new-instance v3, Lcom/amazonaws/auth/SystemPropertiesCredentialsProvider;

    invoke-direct {v3}, Lcom/amazonaws/auth/SystemPropertiesCredentialsProvider;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;

    invoke-direct {v3}, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client$1;-><init>([Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 278
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 279
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 296
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 195
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 198
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 201
    new-instance v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketNameUtils:Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    .line 207
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 297
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 298
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->init()V

    .line 299
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 310
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 311
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 325
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 195
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 198
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 201
    new-instance v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketNameUtils:Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    .line 207
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 326
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 327
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->init()V

    .line 328
    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method private static addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 14
    .param p1, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1197
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<+Lcom/amazonaws/AmazonWebServiceRequest;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object v5

    .line 1198
    .local v5, "grants":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazonaws/services/s3/model/Grant;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1199
    .local v6, "grantsByPermission":Ljava/util/Map;, "Ljava/util/Map<Lcom/amazonaws/services/s3/model/Permission;Ljava/util/Collection<Lcom/amazonaws/services/s3/model/Grantee;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Grant;

    .line 1200
    .local v1, "grant":Lcom/amazonaws/services/s3/model/Grant;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1201
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v12

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    :cond_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1205
    .end local v1    # "grant":Lcom/amazonaws/services/s3/model/Grant;
    :cond_1
    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v0

    .local v0, "arr$":[Lcom/amazonaws/services/s3/model/Permission;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v10, v0, v8

    .line 1206
    .local v10, "permission":Lcom/amazonaws/services/s3/model/Permission;
    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1207
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 1208
    .local v4, "grantees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/s3/model/Grantee;>;"
    const/4 v11, 0x0

    .line 1209
    .local v11, "seenOne":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1210
    .local v3, "granteeString":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8    # "i$":I
    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/Grantee;

    .line 1211
    .local v2, "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    if-nez v11, :cond_2

    .line 1212
    const/4 v11, 0x1

    .line 1215
    :goto_3
    invoke-interface {v2}, Lcom/amazonaws/services/s3/model/Grantee;->getTypeIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Lcom/amazonaws/services/s3/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1214
    :cond_2
    const-string v12, ", "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1218
    .end local v2    # "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    :cond_3
    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/Permission;->getHeaderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {p0, v12, v13}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .end local v3    # "granteeString":Ljava/lang/StringBuilder;
    .end local v4    # "grantees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/s3/model/Grantee;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "seenOne":Z
    :cond_4
    add-int/lit8 v7, v8, 0x1

    .local v7, "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_1

    .line 1221
    .end local v10    # "permission":Lcom/amazonaws/services/s3/model/Permission;
    :cond_5
    return-void
.end method

.method private static addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2784
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-eqz p2, :cond_0

    .line 2785
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    :cond_0
    return-void
.end method

.method private static addResponseHeaderParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 2
    .param p1, "responseHeaders"    # Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2821
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-eqz p1, :cond_5

    .line 2822
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2823
    const-string v0, "response-cache-control"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2826
    const-string v0, "response-content-disposition"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2830
    const-string v0, "response-content-encoding"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2834
    const-string v0, "response-content-language"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2838
    const-string v0, "response-content-type"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2841
    const-string v0, "response-expires"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    :cond_5
    return-void
.end method

.method private static addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2805
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2806
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    :cond_0
    return-void
.end method

.method private assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterValue"    # Ljava/lang/Object;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 2414
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2415
    :cond_0
    return-void
.end method

.method private convertToVirtualHostEndpoint(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 2605
    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bucket name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/amazonaws/services/s3/model/ProgressListener;
    .param p2, "eventType"    # I

    .prologue
    .line 2427
    if-nez p1, :cond_0

    .line 2431
    :goto_0
    return-void

    .line 2428
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    .line 2429
    .local v0, "event":Lcom/amazonaws/services/s3/model/ProgressEvent;
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/ProgressEvent;->setEventCode(I)V

    .line 2430
    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    goto :goto_0
.end method

.method private getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 2456
    if-nez p4, :cond_0

    new-instance p4, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    .end local p4    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-direct {p4, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 2458
    .restart local p4    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    :cond_0
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2459
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/AmazonWebServiceRequest;>;"
    const-string v1, "acl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    if-eqz p3, :cond_1

    const-string v1, "versionId"

    invoke-interface {v0, v1, p3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    :cond_1
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$AccessControlListUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$AccessControlListUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v1
.end method

.method private init()V
    .locals 5

    .prologue
    .line 333
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v2}, Lcom/amazonaws/http/AmazonHttpClient;->disableStrictHostnameVerification()V

    .line 335
    sget-object v2, Lcom/amazonaws/services/s3/internal/Constants;->S3_HOSTNAME:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->setEndpoint(Ljava/lang/String;)V

    .line 337
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 338
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandlers:Ljava/util/List;

    const-string v3, "/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {v0, v3}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    const-string v2, "org.xml.sax.driver"

    const-string v3, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Lorg/xml/sax/SAXException;
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load XMLReader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p3, "bucket"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TY;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TX;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 2954
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TX;>;>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->copyPrivateRequestParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2955
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2957
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->timeOffset:I

    invoke-interface {p1, v5}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 2965
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2966
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-interface {p1, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    :cond_1
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v5}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 2970
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v4

    .line 2971
    .local v4, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2972
    invoke-virtual {v4}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 2975
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v2

    .line 2976
    .local v2, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createSigner(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 2977
    invoke-virtual {v2, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 2979
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    iget-object v6, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-virtual {v5, p1, p2, v6, v2}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p3, "bucketName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TY;>;",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TX;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 2950
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Ljava/io/InputStream;>;"
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 13
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2624
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v5

    .line 2625
    .local v5, "rawMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_0

    .line 2626
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2627
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2631
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    .line 2632
    .local v2, "expirationTime":Ljava/util/Date;
    if-eqz v2, :cond_1

    .line 2633
    const-string v8, "Expires"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v6

    .line 2637
    .local v6, "userMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    .line 2638
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2639
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2640
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2641
    .local v7, "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2642
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2643
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "x-amz-meta-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8, v7}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2646
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static populateRequestWithCopyObjectParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyObjectRequest;)V
    .locals 4
    .param p1, "copyObjectRequest"    # Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/CopyObjectRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2691
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<+Lcom/amazonaws/AmazonWebServiceRequest;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2694
    .local v0, "copySourceHeader":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?versionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2697
    :cond_0
    const-string v2, "x-amz-copy-source"

    invoke-interface {p0, v2, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    const-string v2, "x-amz-copy-source-if-modified-since"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 2701
    const-string v2, "x-amz-copy-source-if-unmodified-since"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 2704
    const-string v2, "x-amz-copy-source-if-match"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 2706
    const-string v2, "x-amz-copy-source-if-none-match"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 2709
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2710
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 2716
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2717
    const-string v2, "x-amz-storage-class"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2721
    const-string v2, "x-amz-website-redirect-location"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getNewObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    .line 2725
    .local v1, "newObjectMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-eqz v1, :cond_4

    .line 2726
    const-string v2, "x-amz-metadata-directive"

    const-string v3, "REPLACE"

    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    invoke-static {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 2729
    :cond_4
    return-void

    .line 2711
    .end local v1    # "newObjectMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2712
    const-string v2, "x-amz-acl"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static populateRequestWithCopyPartParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V
    .locals 4
    .param p1, "copyPartRequest"    # Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/CopyPartRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2745
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2748
    .local v0, "copySourceHeader":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?versionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2751
    :cond_0
    const-string v2, "x-amz-copy-source"

    invoke-interface {p0, v2, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    const-string v2, "x-amz-copy-source-if-modified-since"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 2755
    const-string v2, "x-amz-copy-source-if-unmodified-since"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 2758
    const-string v2, "x-amz-copy-source-if-match"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 2760
    const-string v2, "x-amz-copy-source-if-none-match"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 2763
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getFirstByte()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getLastByte()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getFirstByte()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getLastByte()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2765
    .local v1, "range":Ljava/lang/String;
    const-string v2, "x-amz-copy-source-range"

    invoke-interface {p0, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    .end local v1    # "range":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 5
    .param p2, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2663
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-nez p2, :cond_0

    .line 2675
    :goto_0
    return-void

    .line 2665
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2666
    .local v0, "endpoint":Ljava/lang/String;
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2667
    const-string v2, "http://"

    const-string v3, "https://"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2668
    .local v1, "httpsEndpoint":Ljava/lang/String;
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 2669
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Overriding current endpoint to use HTTPS as required by S3 for requests containing an MFA header"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 2673
    .end local v1    # "httpsEndpoint":Ljava/lang/String;
    :cond_1
    const-string v2, "x-amz-mfa"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .param p5, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 2514
    if-nez p5, :cond_0

    new-instance p5, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    .end local p5    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-direct {p5, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 2516
    .restart local p5    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    :cond_0
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p5, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2517
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/AmazonWebServiceRequest;>;"
    const-string v2, "acl"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    if-eqz p3, :cond_1

    const-string v2, "versionId"

    invoke-interface {v1, v2, p3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    :cond_1
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;-><init>()V

    invoke-virtual {v2, p4}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/AccessControlList;)[B

    move-result-object v0

    .line 2521
    .local v0, "aclAsXml":[B
    const-string v2, "Content-Type"

    const-string v3, "text/plain"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    const-string v2, "Content-Length"

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2525
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2526
    return-void
.end method

.method private setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .param p5, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 2485
    if-nez p5, :cond_0

    new-instance p5, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    .end local p5    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-direct {p5, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 2487
    .restart local p5    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    :cond_0
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p5, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2488
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/AmazonWebServiceRequest;>;"
    const-string v1, "acl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    const-string v1, "x-amz-acl"

    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    if-eqz p3, :cond_1

    const-string v1, "versionId"

    invoke-interface {v0, v1, p3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2493
    return-void
.end method

.method private validIP(Ljava/lang/String;)Z
    .locals 10
    .param p1, "IP"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2924
    if-nez p1, :cond_1

    .line 2943
    :cond_0
    :goto_0
    return v7

    .line 2927
    :cond_1
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2928
    .local v6, "tokens":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 2931
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 2934
    .local v4, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2938
    .local v5, "tokenInt":I
    if-ltz v5, :cond_0

    const/16 v8, 0xff

    if-gt v5, v8, :cond_0

    .line 2931
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2935
    .end local v5    # "tokenInt":I
    :catch_0
    move-exception v1

    .line 2936
    .local v1, "ase":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 2943
    .end local v1    # "ase":Ljava/lang/NumberFormatException;
    .end local v4    # "token":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 5
    .param p1, "abortMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2084
    const-string v3, "The request parameter must be specified when aborting a multipart upload"

    invoke-direct {p0, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2086
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "The bucket name parameter must be specified when aborting a multipart upload"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "The key parameter must be specified when aborting a multipart upload"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "The upload ID parameter must be specified when aborting a multipart upload"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2093
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2094
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2096
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 2097
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;>;"
    const-string v3, "uploadId"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2100
    return-void
.end method

.method public addRequestHandler(Lcom/amazonaws/handlers/RequestHandler;)V
    .locals 1
    .param p1, "requestHandler"    # Lcom/amazonaws/handlers/RequestHandler;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public changeObjectStorageClass(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newStorageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 852
    const-string v0, "The bucketName parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    const-string v0, "The key parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    const-string v0, "The newStorageClass parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    .line 861
    return-void
.end method

.method public completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 12
    .param p1, "completeMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2108
    const-string v8, "The request parameter must be specified when completing a multipart upload"

    invoke-direct {p0, p1, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2111
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2112
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 2113
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v5

    .line 2114
    .local v5, "uploadId":Ljava/lang/String;
    const-string v8, "The bucket name parameter must be specified when completing a multipart upload"

    invoke-direct {p0, v0, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    const-string v8, "The key parameter must be specified when completing a multipart upload"

    invoke-direct {p0, v2, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2118
    const-string v8, "The upload ID parameter must be specified when completing a multipart upload"

    invoke-direct {p0, v5, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2120
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v8

    const-string v9, "The part ETags parameter must be specified when completing a multipart upload"

    invoke-direct {p0, v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2123
    sget-object v8, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v2, p1, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 2124
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;>;"
    const-string v8, "uploadId"

    invoke-interface {v3, v8, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->convertToXmlByteArray(Ljava/util/List;)[B

    move-result-object v7

    .line 2127
    .local v7, "xml":[B
    const-string v8, "Content-Type"

    const-string v9, "text/plain"

    invoke-interface {v3, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const-string v8, "Content-Length"

    array-length v9, v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v8}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2133
    new-instance v4, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v8, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;

    invoke-direct {v8}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v10, 0x0

    new-instance v11, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v11}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v11}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    aput-object v11, v9, v10

    invoke-direct {v4, v8, v9}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 2137
    .local v4, "responseHandler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;>;"
    invoke-direct {p0, v3, v4, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    .line 2138
    .local v1, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2139
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    const-string v9, "x-amz-version-id"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2140
    .local v6, "versionId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setVersionId(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v8

    return-object v8

    .line 2143
    .end local v6    # "versionId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getAmazonS3Exception()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v8

    throw v8
.end method

.method public copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
    .locals 17
    .param p1, "copyObjectRequest"    # Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1238
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The source bucket name must be specified when copying an object"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The source object key must be specified when copying an object"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1242
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The destination bucket name must be specified when copying an object"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The destination object key must be specified when copying an object"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v6

    .line 1248
    .local v6, "destinationKey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v5

    .line 1250
    .local v5, "destinationBucketName":Ljava/lang/String;
    sget-object v13, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v6, v1, v13}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v11

    .line 1252
    .local v11, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/CopyObjectRequest;>;"
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithCopyObjectParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyObjectRequest;)V

    .line 1258
    invoke-interface {v11}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v13

    const-string v14, "Content-Length"

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    const/4 v4, 0x0

    .line 1263
    .local v4, "copyObjectResultHandler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    :try_start_0
    new-instance v9, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v13, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;

    invoke-direct {v13}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;-><init>()V

    const/4 v14, 0x3

    new-array v14, v14, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v15, 0x0

    new-instance v16, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    invoke-direct {v9, v13, v14}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 1266
    .local v9, "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;

    move-object v4, v0
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1296
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    .line 1297
    .local v7, "errorCode":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    .line 1298
    .local v8, "errorMessage":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorRequestId()Ljava/lang/String;

    move-result-object v12

    .line 1299
    .local v12, "requestId":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorHostId()Ljava/lang/String;

    move-result-object v10

    .line 1301
    .local v10, "hostId":Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v2, v8}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v2, "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v2, v7}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 1303
    sget-object v13, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 1304
    invoke-virtual {v2, v12}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v2, v10}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 1306
    invoke-interface {v11}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setServiceName(Ljava/lang/String;)V

    .line 1307
    const/16 v13, 0xc8

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 1309
    throw v2

    .line 1267
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v7    # "errorCode":Ljava/lang/String;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    .end local v10    # "hostId":Ljava/lang/String;
    .end local v12    # "requestId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1275
    .restart local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v13

    const/16 v14, 0x19c

    if-ne v13, v14, :cond_0

    .line 1276
    const/4 v3, 0x0

    .line 1321
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    :goto_0
    return-object v3

    .line 1279
    .restart local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    :cond_0
    throw v2

    .line 1313
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .restart local v9    # "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    :cond_1
    new-instance v3, Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/CopyObjectResult;-><init>()V

    .line 1314
    .local v3, "copyObjectResult":Lcom/amazonaws/services/s3/model/CopyObjectResult;
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getETag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setETag(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getLastModified()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setLastModifiedDate(Ljava/util/Date;)V

    .line 1316
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getVersionId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setVersionId(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getServerSideEncryption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setServerSideEncryption(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getExpirationTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setExpirationTime(Ljava/util/Date;)V

    .line 1319
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
    .locals 1
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceKey"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "destinationKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1229
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 17
    .param p1, "copyPartRequest"    # Lcom/amazonaws/services/s3/model/CopyPartRequest;

    .prologue
    .line 1360
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The source bucket name must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The source object key must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The destination bucket name must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The upload id must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The destination object key must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getPartNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "The part number must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v6

    .line 1374
    .local v6, "destinationKey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v5

    .line 1376
    .local v5, "destinationBucketName":Ljava/lang/String;
    sget-object v13, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v6, v1, v13}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v11

    .line 1379
    .local v11, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/CopyPartRequest;>;"
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithCopyPartParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V

    .line 1381
    const-string v13, "uploadId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v13, "partNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getPartNumber()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-interface {v11}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v13

    const-string v14, "Content-Length"

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    const/4 v3, 0x0

    .line 1394
    .local v3, "copyObjectResultHandler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    :try_start_0
    new-instance v9, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v13, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;

    invoke-direct {v13}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;-><init>()V

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v15, 0x0

    new-instance v16, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    invoke-direct {v9, v13, v14}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 1397
    .local v9, "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;

    move-object v3, v0
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1426
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    .line 1427
    .local v7, "errorCode":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    .line 1428
    .local v8, "errorMessage":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorRequestId()Ljava/lang/String;

    move-result-object v12

    .line 1429
    .local v12, "requestId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorHostId()Ljava/lang/String;

    move-result-object v10

    .line 1431
    .local v10, "hostId":Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v2, v8}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 1432
    .local v2, "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v2, v7}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 1433
    sget-object v13, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 1434
    invoke-virtual {v2, v12}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v2, v10}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 1436
    invoke-interface {v11}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setServiceName(Ljava/lang/String;)V

    .line 1437
    const/16 v13, 0xc8

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 1439
    throw v2

    .line 1398
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v7    # "errorCode":Ljava/lang/String;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    .end local v10    # "hostId":Ljava/lang/String;
    .end local v12    # "requestId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1406
    .restart local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v13

    const/16 v14, 0x19c

    if-ne v13, v14, :cond_0

    .line 1407
    const/4 v4, 0x0

    .line 1449
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    :goto_0
    return-object v4

    .line 1410
    .restart local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    :cond_0
    throw v2

    .line 1442
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .restart local v9    # "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    :cond_1
    new-instance v4, Lcom/amazonaws/services/s3/model/CopyPartResult;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/CopyPartResult;-><init>()V

    .line 1443
    .local v4, "copyPartResult":Lcom/amazonaws/services/s3/model/CopyPartResult;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getETag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setETag(Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getPartNumber()I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setPartNumber(I)V

    .line 1445
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getLastModified()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setLastModifiedDate(Ljava/util/Date;)V

    .line 1446
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getVersionId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setVersionId(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getServerSideEncryption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setServerSideEncryption(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 9
    .param p1, "createBucketRequest"    # Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 593
    const-string v5, "The CreateBucketRequest parameter must be specified when creating a bucket"

    invoke-direct {p0, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "region":Ljava/lang/String;
    const-string v5, "The bucket name parameter must be specified when creating a bucket"

    invoke-direct {p0, v0, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 602
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketNameUtils:Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-virtual {v5, v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->validateBucketName(Ljava/lang/String;)V

    .line 604
    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v8, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 606
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/CreateBucketRequest;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 607
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 617
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 618
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "endpoint":Ljava/lang/String;
    const-string v5, "us-west-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 620
    sget-object v5, Lcom/amazonaws/services/s3/model/Region;->US_West:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v2

    .line 638
    .end local v1    # "endpoint":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 639
    new-instance v4, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 640
    .local v4, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v5, "CreateBucketConfiguration"

    const-string v6, "xmlns"

    const-string v7, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v4, v5, v6, v7}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 641
    const-string v5, "LocationConstraint"

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 642
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 644
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v5}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 647
    .end local v4    # "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    :cond_3
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v5, v0, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 649
    new-instance v5, Lcom/amazonaws/services/s3/model/Bucket;

    invoke-direct {v5, v0}, Lcom/amazonaws/services/s3/model/Bucket;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 608
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 609
    const-string v5, "x-amz-acl"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    .restart local v1    # "endpoint":Ljava/lang/String;
    :cond_5
    const-string v5, "us-west-2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 622
    sget-object v5, Lcom/amazonaws/services/s3/model/Region;->US_West_2:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 623
    :cond_6
    const-string v5, "eu-west-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 624
    sget-object v5, Lcom/amazonaws/services/s3/model/Region;->EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 625
    :cond_7
    const-string v5, "ap-southeast-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 626
    sget-object v5, Lcom/amazonaws/services/s3/model/Region;->AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 627
    :cond_8
    const-string v5, "ap-northeast-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 628
    sget-object v5, Lcom/amazonaws/services/s3/model/Region;->AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 629
    :cond_9
    const-string v5, "sa-east-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 630
    sget-object v5, Lcom/amazonaws/services/s3/model/Region;->SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public createBucket(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object v0

    return-object v0
.end method

.method public createBucket(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/amazonaws/services/s3/model/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object v0

    return-object v0
.end method

.method public createBucket(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object v0

    return-object v0
.end method

.method protected createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p4, "httpMethod"    # Lcom/amazonaws/http/HttpMethodName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            ")",
            "Lcom/amazonaws/Request",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 2898
    .local p3, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;, "TX;"
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    sget-object v1, Lcom/amazonaws/services/s3/internal/Constants;->S3_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v0, p3, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 2899
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TX;>;"
    invoke-interface {v0, p4}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 2901
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/S3ClientOptions;->isPathStyleAccess()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketNameUtils:Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->validIP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2904
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->convertToVirtualHostEndpoint(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 2905
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 2920
    :cond_0
    :goto_0
    return-object v0

    .line 2907
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 2909
    if-eqz p1, :cond_0

    .line 2915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method protected createSigner(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .locals 4
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/auth/Signer;"
        }
    .end annotation

    .prologue
    .line 2529
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2534
    .local v0, "resourcePath":Ljava/lang/String;
    new-instance v1, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-interface {p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 2529
    .end local v0    # "resourcePath":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public deleteBucket(Lcom/amazonaws/services/s3/model/DeleteBucketRequest;)V
    .locals 4
    .param p1, "deleteBucketRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 994
    const-string v2, "The DeleteBucketRequest parameter must be specified when deleting a bucket"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 997
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when deleting a bucket"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 1002
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketRequest;>;"
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1003
    return-void
.end method

.method public deleteBucket(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 986
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucket(Lcom/amazonaws/services/s3/model/DeleteBucketRequest;)V

    .line 987
    return-void
.end method

.method public deleteBucketCrossOriginConfiguration(Ljava/lang/String;)V
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1719
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1720
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v1, "cors"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1722
    return-void
.end method

.method public deleteBucketLifecycleConfiguration(Ljava/lang/String;)V
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1668
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1669
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v1, "lifecycle"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1672
    return-void
.end method

.method public deleteBucketPolicy(Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;)V
    .locals 4
    .param p1, "deleteBucketPolicyRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2006
    const-string v2, "The request object must be specified when deleting a bucket policy"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2010
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name must be specified when deleting a bucket policy"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2014
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;>;"
    const-string v2, "policy"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2017
    return-void
.end method

.method public deleteBucketPolicy(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1941
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketPolicy(Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;)V

    .line 1942
    return-void
.end method

.method public deleteBucketTaggingConfiguration(Ljava/lang/String;)V
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1769
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1770
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v1, "tagging"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1773
    return-void
.end method

.method public deleteBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;)V
    .locals 5
    .param p1, "deleteBucketWebsiteConfigurationRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1825
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1827
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when deleting a bucket\'s website configuration"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1830
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v4, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 1831
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;>;"
    const-string v2, "website"

    invoke-interface {v1, v2, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1835
    return-void
.end method

.method public deleteBucketWebsiteConfiguration(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1817
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;)V

    .line 1818
    return-void
.end method

.method public deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V
    .locals 4
    .param p1, "deleteObjectRequest"    # Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1465
    const-string v1, "The delete object request must be specified when deleting an object"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1468
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name must be specified when deleting an object"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The key must be specified when deleting an object"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1472
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteObjectRequest;>;"
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1473
    return-void
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1457
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    .line 1458
    return-void
.end method

.method public deleteObjects(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
    .locals 9
    .param p1, "deleteObjectsRequest"    # Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;

    .prologue
    const/4 v8, 0x0

    .line 1479
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v6, v8, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v4

    .line 1480
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;>;"
    const-string v6, "delete"

    invoke-interface {v4, v6, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1483
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 1486
    :cond_0
    new-instance v6, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;-><init>()V

    invoke-virtual {v6, p1}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)[B

    move-result-object v0

    .line 1487
    .local v0, "content":[B
    const-string v6, "Content-Length"

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const-string v6, "Content-Type"

    const-string v7, "application/xml"

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v4, v6}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1491
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v2

    .line 1492
    .local v2, "md5":[B
    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v3

    .line 1493
    .local v3, "md5Base64":Ljava/lang/String;
    const-string v6, "Content-MD5"

    invoke-interface {v4, v6, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    new-instance v6, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectsResultUnmarshaller;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectsResultUnmarshaller;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    .line 1503
    .local v5, "response":Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getErrors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1504
    new-instance v6, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getErrors()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getDeletedObjects()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    throw v6

    .line 1494
    .end local v2    # "md5":[B
    .end local v3    # "md5Base64":Ljava/lang/String;
    .end local v5    # "response":Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
    :catch_0
    move-exception v1

    .line 1495
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Couldn\'t compute md5 sum"

    invoke-direct {v6, v7, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1507
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "md5":[B
    .restart local v3    # "md5Base64":Ljava/lang/String;
    .restart local v5    # "response":Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
    :cond_1
    new-instance v6, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getDeletedObjects()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;-><init>(Ljava/util/List;)V

    return-object v6
.end method

.method public deleteVersion(Lcom/amazonaws/services/s3/model/DeleteVersionRequest;)V
    .locals 5
    .param p1, "deleteVersionRequest"    # Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1523
    const-string v4, "The delete version request object must be specified when deleting a version"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1528
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    .line 1530
    .local v3, "versionId":Ljava/lang/String;
    const-string v4, "The bucket name must be specified when deleting a version"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1531
    const-string v4, "The key must be specified when deleting a version"

    invoke-direct {p0, v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1532
    const-string v4, "The version ID must be specified when deleting a version"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1534
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 1535
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteVersionRequest;>;"
    if-eqz v3, :cond_0

    const-string v4, "versionId"

    invoke-interface {v2, v4, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1538
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 1541
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1542
    return-void
.end method

.method public deleteVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1515
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteVersion(Lcom/amazonaws/services/s3/model/DeleteVersionRequest;)V

    .line 1516
    return-void
.end method

.method public doesBucketExist(Ljava/lang/String;)Z
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 816
    :try_start_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 840
    :goto_0
    return v0

    .line 820
    :catch_0
    move-exception v6

    .line 826
    .local v6, "ase":Lcom/amazonaws/AmazonServiceException;
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    if-nez v0, :cond_0

    throw v6

    .line 827
    :cond_0
    invoke-virtual {v6}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InvalidAccessKeyId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignatureDoesNotMatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    :cond_1
    throw v6

    .line 832
    :cond_2
    invoke-virtual {v6}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 842
    throw v6

    :sswitch_0
    move v0, v7

    .line 835
    goto :goto_0

    :sswitch_1
    move v0, v7

    .line 838
    goto :goto_0

    :sswitch_2
    move v0, v8

    .line 840
    goto :goto_0

    .line 832
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x193 -> :sswitch_1
        0x194 -> :sswitch_2
    .end sparse-switch
.end method

.method public generatePresignedUrl(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;
    .locals 12
    .param p1, "generatePresignedUrlRequest"    # Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2045
    const-string v0, "The request parameter must be specified when generating a pre-signed URL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2048
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 2049
    .local v3, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 2051
    .local v4, "key":Ljava/lang/String;
    const-string v0, "The bucket name parameter must be specified when generating a pre-signed URL"

    invoke-direct {p0, v3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2053
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazonaws/HttpMethod;

    move-result-object v0

    const-string v2, "The HTTP method request parameter must be specified when generating a pre-signed URL"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2057
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v10, 0xdbba0

    add-long/2addr v5, v10

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 2061
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazonaws/HttpMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/http/HttpMethodName;->valueOf(Ljava/lang/String;)Lcom/amazonaws/http/HttpMethodName;

    move-result-object v8

    .line 2062
    .local v8, "httpMethod":Lcom/amazonaws/http/HttpMethodName;
    invoke-virtual {p0, v3, v4, p1, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2063
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2064
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2067
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2068
    const-string v0, "content-type"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->addResponseHeaderParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 2073
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazonaws/HttpMethod;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->presignRequest(Lcom/amazonaws/Request;Lcom/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 2076
    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->convertRequestToUrl(Lcom/amazonaws/Request;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2026
    sget-object v0, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazonaws/HttpMethod;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazonaws/HttpMethod;)Ljava/net/URL;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expiration"    # Ljava/util/Date;
    .param p4, "method"    # Lcom/amazonaws/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2034
    new-instance v0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    invoke-direct {v0, p1, p2, p4}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V

    .line 2035
    .local v0, "request":Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 2037
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public getBucketAcl(Lcom/amazonaws/services/s3/model/GetBucketAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 3
    .param p1, "getBucketAclRequest"    # Lcom/amazonaws/services/s3/model/GetBucketAclRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 726
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "bucketName":Ljava/lang/String;
    const-string v1, "The bucket name parameter must be specified when requesting a bucket\'s ACL"

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-direct {p0, v0, v2, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    return-object v1
.end method

.method public getBucketAcl(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 716
    const-string v0, "The bucket name parameter must be specified when requesting a bucket\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-direct {p0, p1, v1, v1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    return-object v0
.end method

.method public getBucketCrossOriginConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1678
    new-instance v2, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 1679
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v2, "cors"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketCrossOriginConfigurationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketCrossOriginConfigurationUnmarshaller;-><init>()V

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    :goto_0
    return-object v2

    .line 1683
    :catch_0
    move-exception v0

    .line 1684
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1688
    throw v0

    :pswitch_0
    move-object v2, v3

    .line 1686
    goto :goto_0

    .line 1684
    nop

    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
    .end packed-switch
.end method

.method public getBucketLifecycleConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1627
    new-instance v2, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 1628
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v2, "lifecycle"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLifecycleConfigurationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLifecycleConfigurationUnmarshaller;-><init>()V

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :goto_0
    return-object v2

    .line 1632
    :catch_0
    move-exception v0

    .line 1633
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1637
    throw v0

    :pswitch_0
    move-object v2, v3

    .line 1635
    goto :goto_0

    .line 1633
    nop

    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
    .end packed-switch
.end method

.method public getBucketLocation(Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;)Ljava/lang/String;
    .locals 4
    .param p1, "getBucketLocationRequest"    # Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 546
    const-string v2, "The request parameter must be specified when requesting a bucket\'s location"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when requesting a bucket\'s location"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 551
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;>;"
    const-string v2, "location"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;-><init>()V

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getBucketLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 561
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketLocation(Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBucketLoggingConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1877
    const-string v1, "The bucket name parameter must be specified when requesting a bucket\'s logging status"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1880
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1881
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v1, "logging"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLoggingConfigurationnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLoggingConfigurationnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    return-object v1
.end method

.method public getBucketNotificationConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1863
    const-string v1, "The bucket name parameter must be specified when querying notification configuration"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1866
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1867
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v1, "notification"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketNotificationConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketNotificationConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-object v1
.end method

.method public getBucketPolicy(Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;)Lcom/amazonaws/services/s3/model/BucketPolicy;
    .locals 7
    .param p1, "getBucketPolicyRequest"    # Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1950
    const-string v5, "The request object must be specified when getting a bucket policy"

    invoke-direct {p0, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1953
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 1954
    .local v1, "bucketName":Ljava/lang/String;
    const-string v5, "The bucket name must be specified when getting a bucket policy"

    invoke-direct {p0, v1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1957
    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v6, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 1958
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;>;"
    const-string v5, "policy"

    invoke-interface {v3, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    new-instance v4, Lcom/amazonaws/services/s3/model/BucketPolicy;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/BucketPolicy;-><init>()V

    .line 1962
    .local v4, "result":Lcom/amazonaws/services/s3/model/BucketPolicy;
    :try_start_0
    new-instance v5, Lcom/amazonaws/services/s3/internal/S3StringResponseHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/S3StringResponseHandler;-><init>()V

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1963
    .local v2, "policyText":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/model/BucketPolicy;->setPolicyText(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    .end local v2    # "policyText":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 1965
    :catch_0
    move-exception v0

    .line 1972
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NoSuchBucketPolicy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1973
    throw v0
.end method

.method public getBucketPolicy(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketPolicy;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1916
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketPolicy(Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;)Lcom/amazonaws/services/s3/model/BucketPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getBucketTaggingConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1728
    new-instance v2, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 1729
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v2, "tagging"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketTaggingConfigurationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketTaggingConfigurationUnmarshaller;-><init>()V

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    :goto_0
    return-object v2

    .line 1733
    :catch_0
    move-exception v0

    .line 1734
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1738
    throw v0

    :pswitch_0
    move-object v2, v3

    .line 1736
    goto :goto_0

    .line 1734
    nop

    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
    .end packed-switch
.end method

.method public getBucketVersioningConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1584
    const-string v1, "The bucket name parameter must be specified when querying versioning configuration"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1587
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1588
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v1, "versioning"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketVersioningConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketVersioningConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    return-object v1
.end method

.method public getBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 6
    .param p1, "getBucketWebsiteConfigurationRequest"    # Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1606
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 1608
    .local v1, "bucketName":Ljava/lang/String;
    const-string v3, "The bucket name parameter must be specified when requesting a bucket\'s website configuration"

    invoke-direct {p0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1611
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 1612
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;>;"
    const-string v3, "website"

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v3, "Content-Type"

    const-string v5, "application/xml"

    invoke-interface {v2, v3, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketWebsiteConfigurationUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketWebsiteConfigurationUnmarshaller;-><init>()V

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    :goto_0
    return-object v3

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v3

    const/16 v5, 0x194

    if-ne v3, v5, :cond_0

    move-object v3, v4

    goto :goto_0

    .line 1619
    :cond_0
    throw v0
.end method

.method public getBucketWebsiteConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1598
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/S3ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/S3ResponseMetadata;

    return-object v0
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 2
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 969
    const-string v1, "The destination file parameter must be specified when downloading an object directly to a file"

    invoke-direct {p0, p2, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    .line 974
    .local v0, "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 978
    :goto_0
    return-object v1

    .line 976
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, p2, v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->downloadObjectToFile(Lcom/amazonaws/services/s3/model/S3Object;Ljava/io/File;Z)V

    .line 978
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    goto :goto_0

    .line 976
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 13
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 884
    const-string v8, "The GetObjectRequest parameter must be specified when requesting an object"

    invoke-direct {p0, p1, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "The bucket name parameter must be specified when requesting an object"

    invoke-direct {p0, v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "The key parameter must be specified when requesting an object"

    invoke-direct {p0, v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v8, v9, p1, v10}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v6

    .line 893
    .local v6, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetObjectRequest;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 894
    const-string v8, "versionId"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v8

    if-eqz v8, :cond_1

    .line 899
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v5

    .line 900
    .local v5, "range":[J
    const-string v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v5, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .end local v5    # "range":[J
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->addResponseHeaderParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 905
    const-string v8, "If-Modified-Since"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 907
    const-string v8, "If-Unmodified-Since"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 909
    const-string v8, "If-Match"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 911
    const-string v8, "If-None-Match"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 914
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v3

    .line 916
    .local v3, "progressListener":Lcom/amazonaws/services/s3/model/ProgressListener;
    :try_start_0
    new-instance v8, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;

    invoke-direct {v8}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v6, v8, v9, v10}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazonaws/services/s3/model/S3Object;

    .line 923
    .local v7, "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/model/S3Object;->setBucketName(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/model/S3Object;->setKey(Ljava/lang/String;)V

    .line 926
    if-eqz v3, :cond_2

    .line 927
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    .line 928
    .local v1, "input":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    new-instance v4, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;

    invoke-direct {v4, v1, v3}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 929
    .local v4, "progressReportingInputStream":Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->setFireCompletedEvent(Z)V

    .line 930
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v8

    invoke-direct {v2, v4, v8}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 931
    .end local v1    # "input":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    .local v2, "input":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    invoke-virtual {v7, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 932
    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    .end local v2    # "input":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    .end local v4    # "progressReportingInputStream":Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;
    .end local v7    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    :cond_2
    :goto_0
    return-object v7

    .line 946
    :catch_0
    move-exception v0

    .line 954
    .local v0, "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v8

    const/16 v9, 0x19c

    if-eq v8, v9, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v8

    const/16 v9, 0x130

    if-ne v8, v9, :cond_4

    .line 955
    :cond_3
    const/16 v8, 0x8

    invoke-direct {p0, v3, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    .line 956
    const/4 v7, 0x0

    goto :goto_0

    .line 959
    :cond_4
    const/4 v8, 0x4

    invoke-direct {p0, v3, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    .line 960
    throw v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 657
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 665
    const-string v0, "The bucket name parameter must be specified when requesting an object\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    const-string v0, "The key parameter must be specified when requesting an object\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    return-object v0
.end method

.method public getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 5
    .param p1, "getObjectMetadataRequest"    # Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 786
    const-string v4, "The GetObjectMetadataRequest parameter must be specified when requesting an object\'s metadata"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, "versionId":Ljava/lang/String;
    const-string v4, "The bucket name parameter must be specified when requesting an object\'s metadata"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    const-string v4, "The key parameter must be specified when requesting an object\'s metadata"

    invoke-direct {p0, v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 796
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;>;"
    if-eqz v3, :cond_0

    const-string v4, "versionId"

    invoke-interface {v2, v4, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_0
    new-instance v4, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v4
.end method

.method public getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getResourceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2853
    const/4 v2, 0x0

    .line 2854
    .local v2, "requestEndpoint":Ljava/net/URI;
    const/4 v1, 0x0

    .line 2855
    .local v1, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketNameUtils:Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2856
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->convertToVirtualHostEndpoint(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 2857
    move-object v1, p2

    .line 2867
    .end local p2    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2869
    :goto_1
    return-object v3

    .line 2859
    .restart local p2    # "key":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    .line 2861
    if-eqz p1, :cond_0

    .line 2862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_2

    .end local p2    # "key":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local p2    # "key":Ljava/lang/String;
    :cond_2
    const-string p2, ""

    goto :goto_2

    .line 2868
    .end local p2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2869
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public getS3AccountOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 520
    new-instance v1, Lcom/amazonaws/services/s3/model/ListBucketsRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ListBucketsRequest;-><init>()V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 521
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListBucketsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsOwnerUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsOwnerUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Owner;

    return-object v1
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    const-string v0, "s3"

    return-object v0
.end method

.method public initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 6
    .param p1, "initiateMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2153
    const-string v2, "The request parameter must be specified when initiating a multipart upload"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2156
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name parameter must be specified when initiating a multipart upload"

    invoke-direct {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2158
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The key parameter must be specified when initiating a multipart upload"

    invoke-direct {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2161
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v2, v3, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2162
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;>;"
    const-string v2, "uploads"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2165
    const-string v2, "x-amz-storage-class"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2168
    const-string v2, "x-amz-website-redirect-location"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2172
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 2177
    :cond_2
    :goto_0
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-static {v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 2181
    :cond_3
    invoke-interface {v0}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v3, v5, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2187
    new-instance v1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v4, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 2190
    .local v1, "responseHandler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    return-object v2

    .line 2173
    .end local v1    # "responseHandler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;>;"
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2174
    const-string v2, "x-amz-acl"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public listBuckets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listBuckets(Lcom/amazonaws/services/s3/model/ListBucketsRequest;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listBuckets(Lcom/amazonaws/services/s3/model/ListBucketsRequest;)Ljava/util/List;
    .locals 3
    .param p1, "listBucketsRequest"    # Lcom/amazonaws/services/s3/model/ListBucketsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/ListBucketsRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 529
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v2, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 530
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListBucketsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;
    .locals 4
    .param p1, "listMultipartUploadsRequest"    # Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2199
    const-string v1, "The request parameter must be specified when listing multipart uploads"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when listing multipart uploads"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2205
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2206
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;>;"
    const-string v1, "uploads"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "key-marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "max-uploads"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "upload-id-marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :cond_4
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListMultipartUploadsResultUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListMultipartUploadsResultUnmarshaller;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    return-object v1
.end method

.method public listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 8
    .param p1, "previousObjectListing"    # Lcom/amazonaws/services/s3/model/ObjectListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 491
    const-string v0, "The previous object listing parameter must be specified when listing the next batch of objects in a bucket"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    new-instance v6, Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/model/ObjectListing;-><init>()V

    .line 496
    .local v6, "emptyListing":Lcom/amazonaws/services/s3/model/ObjectListing;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setBucketName(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setDelimiter(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getNextMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMarker(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getMaxKeys()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMaxKeys(I)V

    .line 500
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setPrefix(Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setTruncated(Z)V

    .line 506
    .end local v6    # "emptyListing":Lcom/amazonaws/services/s3/model/ObjectListing;
    :goto_0
    return-object v6

    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getNextMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getDelimiter()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getMaxKeys()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v6

    goto :goto_0
.end method

.method public listNextBatchOfVersions(Lcom/amazonaws/services/s3/model/VersionListing;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 9
    .param p1, "previousVersionListing"    # Lcom/amazonaws/services/s3/model/VersionListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 386
    const-string v0, "The previous version listing parameter must be specified when listing the next batch of versions in a bucket"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->isTruncated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v7, Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/model/VersionListing;-><init>()V

    .line 391
    .local v7, "emptyListing":Lcom/amazonaws/services/s3/model/VersionListing;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setBucketName(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setDelimiter(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setKeyMarker(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextVersionIdMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setVersionIdMarker(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getMaxKeys()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setMaxKeys(I)V

    .line 396
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setPrefix(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setTruncated(Z)V

    .line 402
    .end local v7    # "emptyListing":Lcom/amazonaws/services/s3/model/VersionListing;
    :goto_0
    return-object v7

    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextVersionIdMarker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getDelimiter()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getMaxKeys()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v7

    goto :goto_0
.end method

.method public listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 4
    .param p1, "listObjectsRequest"    # Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 475
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when listing objects in a bucket"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 478
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListObjectsRequest;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "max-keys"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_3
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/ObjectListing;

    return-object v1
.end method

.method public listObjects(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 459
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    return-object v0
.end method

.method public listObjects(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 467
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    return-object v0
.end method

.method public listParts(Lcom/amazonaws/services/s3/model/ListPartsRequest;)Lcom/amazonaws/services/s3/model/PartListing;
    .locals 4
    .param p1, "listPartsRequest"    # Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2222
    const-string v1, "The request parameter must be specified when listing parts"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2225
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when listing parts"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2227
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The key parameter must be specified when listing parts"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2229
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The upload ID parameter must be specified when listing parts"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2232
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2233
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListPartsRequest;>;"
    const-string v1, "uploadId"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "max-parts"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "part-number-marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    :cond_1
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListPartsResultUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListPartsResultUnmarshaller;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/PartListing;

    return-object v1
.end method

.method public listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 4
    .param p1, "listVersionsRequest"    # Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 440
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when listing versions in a bucket"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 443
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListVersionsRequest;>;"
    const-string v1, "versions"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "key-marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "version-id-marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_4

    const-string v1, "max-keys"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_4
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$VersionListUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$VersionListUnmarshaller;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/VersionListing;

    return-object v1
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 416
    new-instance v0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v0

    return-object v0
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "keyMarker"    # Ljava/lang/String;
    .param p4, "versionIdMarker"    # Ljava/lang/String;
    .param p5, "delimiter"    # Ljava/lang/String;
    .param p6, "maxKeys"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v1, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withVersionIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withMaxResults(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v0

    .line 432
    .local v0, "request":Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v1

    return-object v1
.end method

.method protected presignRequest(Lcom/amazonaws/Request;Lcom/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 9
    .param p2, "methodName"    # Lcom/amazonaws/HttpMethod;
    .param p3, "bucketName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "expiration"    # Ljava/util/Date;
    .param p6, "subResource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TT;>;",
            "Lcom/amazonaws/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2562
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TT;>;"
    iget-object v6, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandlers:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 2563
    iget-object v6, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/handlers/RequestHandler;

    .line 2564
    .local v3, "requestHandler":Lcom/amazonaws/handlers/RequestHandler;
    invoke-interface {v3, p1}, Lcom/amazonaws/handlers/RequestHandler;->beforeRequest(Lcom/amazonaws/Request;)V

    goto :goto_0

    .line 2568
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "requestHandler":Lcom/amazonaws/handlers/RequestHandler;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p4, :cond_4

    invoke-static {p4}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2573
    .local v4, "resourcePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v6}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 2574
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    .line 2575
    .local v2, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2576
    invoke-virtual {v2}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 2579
    :cond_1
    new-instance v6, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;

    invoke-virtual {p2}, Lcom/amazonaws/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4, p5}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v6, p1, v0}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 2584
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v7, "x-amz-security-token"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2585
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v7, "x-amz-security-token"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2586
    .local v5, "value":Ljava/lang/String;
    const-string v6, "x-amz-security-token"

    invoke-interface {p1, v6, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v7, "x-amz-security-token"

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2589
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    return-void

    .line 2568
    .end local v0    # "credentials":Lcom/amazonaws/auth/AWSCredentials;
    .end local v2    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    .end local v4    # "resourcePath":Ljava/lang/String;
    :cond_3
    const-string v6, ""

    goto :goto_1

    :cond_4
    const-string v6, ""

    goto :goto_2

    :cond_5
    const-string v6, ""

    goto :goto_3
.end method

.method public putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 30
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1028
    const-string v26, "The PutObjectRequest parameter must be specified when uploading an object"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 1031
    .local v4, "bucketName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 1032
    .local v15, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v19

    .line 1033
    .local v19, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 1034
    .local v13, "input":Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v20

    .line 1035
    .local v20, "progressListener":Lcom/amazonaws/services/s3/model/ProgressListener;
    if-nez v19, :cond_0

    new-instance v19, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v19    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 1037
    .restart local v19    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    const-string v26, "The bucket name parameter must be specified when uploading an object"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    const-string v26, "The key parameter must be specified when uploading an object"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 1043
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v9

    .line 1046
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v26

    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 1049
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_1

    .line 1050
    invoke-static {}, Lcom/amazonaws/services/s3/internal/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/internal/Mimetypes;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/amazonaws/services/s3/internal/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 1053
    :cond_1
    const/4 v10, 0x0

    .line 1055
    .local v10, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .local v11, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v11}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v18

    .line 1057
    .local v18, "md5Hash":[B
    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1062
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 1066
    :goto_0
    :try_start_3
    new-instance v13, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .end local v13    # "input":Ljava/io/InputStream;
    invoke-direct {v13, v9}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1072
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "md5Hash":[B
    .restart local v13    # "input":Ljava/io/InputStream;
    :cond_2
    sget-object v26, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v4, v15, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v21

    .line 1074
    .local v21, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/PutObjectRequest;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v26

    if-eqz v26, :cond_d

    .line 1075
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 1080
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_4

    .line 1081
    const-string v26, "x-amz-storage-class"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_5

    .line 1085
    const-string v26, "x-amz-website-redirect-location"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    if-nez v13, :cond_5

    .line 1087
    new-instance v13, Ljava/io/ByteArrayInputStream;

    .end local v13    # "input":Ljava/io/InputStream;
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1092
    .restart local v13    # "input":Ljava/io/InputStream;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v26

    const-string v27, "Content-Length"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_6

    .line 1100
    sget-object v26, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v27, "No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors."

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1105
    :cond_6
    if-eqz v20, :cond_7

    .line 1106
    new-instance v14, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;

    move-object/from16 v0, v20

    invoke-direct {v14, v13, v0}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 1107
    .end local v13    # "input":Ljava/io/InputStream;
    .local v14, "input":Ljava/io/InputStream;
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    move-object v13, v14

    .line 1110
    .end local v14    # "input":Ljava/io/InputStream;
    .restart local v13    # "input":Ljava/io/InputStream;
    :cond_7
    invoke-virtual {v13}, Ljava/io/InputStream;->markSupported()Z

    move-result v26

    if-nez v26, :cond_9

    .line 1111
    const/high16 v25, 0x20000

    .line 1112
    .local v25, "streamBufferSize":I
    const-string v26, "com.amazonaws.sdk.s3.defaultStreamBufferSize"

    invoke-static/range {v26 .. v26}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1113
    .local v5, "bufferSizeOverride":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 1115
    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v25

    .line 1121
    :cond_8
    :goto_2
    new-instance v14, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;

    move/from16 v0, v25

    invoke-direct {v14, v13, v0}, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "input":Ljava/io/InputStream;
    move-object v13, v14

    .line 1124
    .end local v5    # "bufferSizeOverride":Ljava/lang/String;
    .end local v14    # "input":Ljava/io/InputStream;
    .end local v25    # "streamBufferSize":I
    .restart local v13    # "input":Ljava/io/InputStream;
    :cond_9
    const/16 v16, 0x0

    .line 1125
    .local v16, "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_a

    .line 1133
    :try_start_5
    new-instance v17, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1134
    .end local v16    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .local v17, "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    move-object/from16 v13, v17

    move-object/from16 v16, v17

    .line 1141
    .end local v17    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .restart local v16    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    :cond_a
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_b

    .line 1146
    const-string v26, "application/octet-stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 1149
    :cond_b
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1150
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1152
    const/16 v23, 0x0

    .line 1154
    .local v23, "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_start_6
    new-instance v26, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct/range {v26 .. v26}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v4, v15}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    check-cast v23, Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_6
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1159
    .restart local v23    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1164
    :goto_4
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v7

    .line 1165
    .local v7, "contentMd5":Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 1166
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->getMd5Digest()[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v7

    .line 1169
    :cond_c
    if-eqz v23, :cond_e

    if-eqz v7, :cond_e

    .line 1170
    invoke-static {v7}, Lcom/amazonaws/util/BinaryUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object v6

    .line 1171
    .local v6, "clientSideHash":[B
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v24

    .line 1173
    .local v24, "serverSideHash":[B
    move-object/from16 v0, v24

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v26

    if-nez v26, :cond_e

    .line 1174
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    .line 1175
    new-instance v26, Lcom/amazonaws/AmazonClientException;

    const-string v27, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct/range {v26 .. v27}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 1058
    .end local v6    # "clientSideHash":[B
    .end local v7    # "contentMd5":Ljava/lang/String;
    .end local v16    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .end local v21    # "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/PutObjectRequest;>;"
    .end local v23    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .end local v24    # "serverSideHash":[B
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    .line 1059
    .local v8, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    new-instance v26, Lcom/amazonaws/AmazonClientException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unable to calculate MD5 hash: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v8}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1062
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v26

    :goto_6
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :goto_7
    throw v26

    .line 1067
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v18    # "md5Hash":[B
    :catch_1
    move-exception v12

    .line 1068
    .local v12, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v26, Lcom/amazonaws/AmazonClientException;

    const-string v27, "Unable to find file to upload"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    .line 1076
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v12    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v18    # "md5Hash":[B
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v21    # "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/PutObjectRequest;>;"
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v26

    if-eqz v26, :cond_3

    .line 1077
    const-string v26, "x-amz-acl"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1116
    .restart local v5    # "bufferSizeOverride":Ljava/lang/String;
    .restart local v25    # "streamBufferSize":I
    :catch_2
    move-exception v8

    .line 1117
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v26, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unable to parse buffer size override from value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1135
    .end local v5    # "bufferSizeOverride":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v25    # "streamBufferSize":I
    .restart local v16    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    :catch_3
    move-exception v8

    .line 1136
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v26, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v27, "No MD5 digest algorithm available.  Unable to calculate checksum and verify data integrity."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1159
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v23    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :catch_4
    move-exception v8

    .line 1160
    .local v8, "e":Ljava/lang/Exception;
    sget-object v26, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unable to cleanly close input stream: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1155
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v23    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :catch_5
    move-exception v3

    .line 1156
    .local v3, "ace":Lcom/amazonaws/AmazonClientException;
    const/16 v26, 0x4

    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    .line 1157
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1159
    .end local v3    # "ace":Lcom/amazonaws/AmazonClientException;
    :catchall_1
    move-exception v26

    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 1161
    :goto_8
    throw v26

    .line 1159
    :catch_6
    move-exception v8

    .line 1160
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v27, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unable to cleanly close input stream: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1181
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "contentMd5":Ljava/lang/String;
    .restart local v23    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_e
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    .line 1183
    new-instance v22, Lcom/amazonaws/services/s3/model/PutObjectResult;

    invoke-direct/range {v22 .. v22}, Lcom/amazonaws/services/s3/model/PutObjectResult;-><init>()V

    .line 1184
    .local v22, "result":Lcom/amazonaws/services/s3/model/PutObjectResult;
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setETag(Ljava/lang/String;)V

    .line 1185
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getVersionId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setVersionId(Ljava/lang/String;)V

    .line 1186
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getServerSideEncryption()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setServerSideEncryption(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTime()Ljava/util/Date;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTime(Ljava/util/Date;)V

    .line 1188
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 1190
    return-object v22

    .line 1062
    .end local v7    # "contentMd5":Ljava/lang/String;
    .end local v16    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .end local v21    # "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/PutObjectRequest;>;"
    .end local v22    # "result":Lcom/amazonaws/services/s3/model/PutObjectResult;
    .end local v23    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v18    # "md5Hash":[B
    :catch_7
    move-exception v26

    goto/16 :goto_0

    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "md5Hash":[B
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v27

    goto/16 :goto_7

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v26

    move-object v10, v11

    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 1058
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v8

    move-object v10, v11

    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1010
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1019
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public restoreObject(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)V
    .locals 10
    .param p1, "restoreObjectRequest"    # Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2359
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2360
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 2361
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getExpirationInDays()I

    move-result v3

    .line 2363
    .local v3, "expirationIndays":I
    const-string v8, "The bucket name parameter must be specified when copying a glacier object"

    invoke-direct {p0, v0, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2364
    const-string v8, "The key parameter must be specified when copying a glacier object"

    invoke-direct {p0, v4, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2365
    const/4 v8, -0x1

    if-ne v3, v8, :cond_0

    .line 2366
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The expiration in days parameter must be specified when copying a glacier object"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2370
    :cond_0
    sget-object v8, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v4, p1, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v7

    .line 2371
    .local v7, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/RestoreObjectRequest;>;"
    const-string v8, "restore"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)[B

    move-result-object v1

    .line 2374
    .local v1, "content":[B
    const-string v8, "Content-Length"

    array-length v9, v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    const-string v8, "Content-Type"

    const-string v9, "application/xml"

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v7, v8}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2378
    :try_start_0
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v5

    .line 2379
    .local v5, "md5":[B
    invoke-static {v5}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v6

    .line 2380
    .local v6, "md5Base64":Ljava/lang/String;
    const-string v8, "Content-MD5"

    invoke-interface {v7, v8, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2385
    iget-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v7, v8, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2386
    return-void

    .line 2381
    .end local v5    # "md5":[B
    .end local v6    # "md5Base64":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2382
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    const-string v9, "Couldn\'t compute md5 sum"

    invoke-direct {v8, v9, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public restoreObject(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expirationInDays"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2393
    new-instance v0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->restoreObject(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)V

    .line 2394
    return-void
.end method

.method public setBucketAcl(Lcom/amazonaws/services/s3/model/SetBucketAclRequest;)V
    .locals 11
    .param p1, "setBucketAclRequest"    # Lcom/amazonaws/services/s3/model/SetBucketAclRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 748
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->getAcl()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v4

    .line 750
    .local v4, "acl":Lcom/amazonaws/services/s3/model/AccessControlList;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v9

    .line 751
    .local v9, "cannedAcl":Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    if-eqz v4, :cond_0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    .line 754
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 760
    :goto_0
    return-void

    .line 755
    :cond_0
    if-eqz v9, :cond_1

    move-object v5, p0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v2

    move-object v10, p1

    .line 756
    invoke-direct/range {v5 .. v10}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    goto :goto_0

    .line 758
    :cond_1
    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, v2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 737
    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    .line 740
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 741
    return-void
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 767
    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    .line 770
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 771
    return-void
.end method

.method public setBucketCrossOriginConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "bucketCrossOriginConfiguration"    # Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    .prologue
    const/4 v7, 0x0

    .line 1697
    new-instance v5, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v5, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v7, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v4

    .line 1698
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v5, "cors"

    invoke-interface {v4, v5, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    new-instance v5, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    invoke-virtual {v5, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)[B

    move-result-object v0

    .line 1701
    .local v0, "content":[B
    const-string v5, "Content-Length"

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const-string v5, "Content-Type"

    const-string v6, "application/xml"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v4, v5}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1705
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v2

    .line 1706
    .local v2, "md5":[B
    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v3

    .line 1707
    .local v3, "md5Base64":Ljava/lang/String;
    const-string v5, "Content-MD5"

    invoke-interface {v4, v5, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v4, v5, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1713
    return-void

    .line 1708
    .end local v2    # "md5":[B
    .end local v3    # "md5Base64":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1709
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    const-string v6, "Couldn\'t compute md5 sum"

    invoke-direct {v5, v6, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setBucketLifecycleConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "bucketLifecycleConfiguration"    # Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    .prologue
    const/4 v7, 0x0

    .line 1646
    new-instance v5, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v5, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v7, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v4

    .line 1647
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v5, "lifecycle"

    invoke-interface {v4, v5, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    new-instance v5, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    invoke-virtual {v5, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)[B

    move-result-object v0

    .line 1650
    .local v0, "content":[B
    const-string v5, "Content-Length"

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v5, "Content-Type"

    const-string v6, "application/xml"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v4, v5}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1654
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v2

    .line 1655
    .local v2, "md5":[B
    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v3

    .line 1656
    .local v3, "md5Base64":Ljava/lang/String;
    const-string v5, "Content-MD5"

    invoke-interface {v4, v5, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v4, v5, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1662
    return-void

    .line 1657
    .end local v2    # "md5":[B
    .end local v3    # "md5Base64":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1658
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    const-string v6, "Couldn\'t compute md5 sum"

    invoke-direct {v5, v6, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setBucketLoggingConfiguration(Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;)V
    .locals 6
    .param p1, "setBucketLoggingConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1891
    const-string v4, "The set bucket logging configuration request object must be specified when enabling server access logging"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1894
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1895
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->getLoggingConfiguration()Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    move-result-object v2

    .line 1897
    .local v2, "loggingConfiguration":Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
    const-string v4, "The bucket name parameter must be specified when enabling server access logging"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1899
    const-string v4, "The logging configuration parameter must be specified when enabling server access logging"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1902
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v5, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 1903
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;>;"
    const-string v4, "logging"

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)[B

    move-result-object v1

    .line 1906
    .local v1, "bytes":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1908
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1909
    return-void
.end method

.method public setBucketNotificationConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "bucketNotificationConfiguration"    # Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1842
    const-string v3, "The bucket name parameter must be specified when setting notification configuration"

    invoke-direct {p0, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1844
    const-string v3, "The bucket notification parameter must be specified when setting notification configuration"

    invoke-direct {p0, p2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1847
    new-instance v1, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;

    invoke-direct {v1, p2, p1}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;-><init>(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;Ljava/lang/String;)V

    .line 1849
    .local v1, "notificationRequest":Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v4, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 1850
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;>;"
    const-string v3, "notification"

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    sget-object v3, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v3, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)[B

    move-result-object v0

    .line 1853
    .local v0, "bytes":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v3}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1855
    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1856
    return-void
.end method

.method public setBucketPolicy(Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;)V
    .locals 6
    .param p1, "setBucketPolicyRequest"    # Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1982
    const-string v3, "The request object must be specified when setting a bucket policy"

    invoke-direct {p0, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1985
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1986
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->getPolicyText()Ljava/lang/String;

    move-result-object v1

    .line 1988
    .local v1, "policyText":Ljava/lang/String;
    const-string v3, "The bucket name must be specified when setting a bucket policy"

    invoke-direct {p0, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1990
    const-string v3, "The policy text must be specified when setting a bucket policy"

    invoke-direct {p0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1993
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v5, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 1994
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;>;"
    const-string v3, "policy"

    invoke-interface {v2, v3, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v3}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1997
    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, v3, v0, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1998
    return-void
.end method

.method public setBucketPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "policyText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1924
    const-string v1, "The bucket name must be specified when setting a bucket policy"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1926
    const-string v1, "The policy text must be specified when setting a bucket policy"

    invoke-direct {p0, p2, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1929
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1930
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v1, "policy"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1933
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1934
    return-void
.end method

.method public setBucketTaggingConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "bucketTaggingConfiguration"    # Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    .prologue
    const/4 v7, 0x0

    .line 1747
    new-instance v5, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v5, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v7, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v4

    .line 1748
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v5, "tagging"

    invoke-interface {v4, v5, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    new-instance v5, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    invoke-virtual {v5, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)[B

    move-result-object v0

    .line 1751
    .local v0, "content":[B
    const-string v5, "Content-Length"

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const-string v5, "Content-Type"

    const-string v6, "application/xml"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v4, v5}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1755
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v2

    .line 1756
    .local v2, "md5":[B
    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v3

    .line 1757
    .local v3, "md5Base64":Ljava/lang/String;
    const-string v5, "Content-MD5"

    invoke-interface {v4, v5, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v4, v5, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1763
    return-void

    .line 1758
    .end local v2    # "md5":[B
    .end local v3    # "md5Base64":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1759
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    const-string v6, "Couldn\'t compute md5 sum"

    invoke-direct {v5, v6, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setBucketVersioningConfiguration(Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;)V
    .locals 7
    .param p1, "setBucketVersioningConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1549
    const-string v4, "The SetBucketVersioningConfigurationRequest object must be specified when setting versioning configuration"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getVersioningConfiguration()Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    move-result-object v3

    .line 1555
    .local v3, "versioningConfiguration":Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    const-string v4, "The bucket name parameter must be specified when setting versioning configuration"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1557
    const-string v4, "The bucket versioning parameter must be specified when setting versioning configuration"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1560
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    const-string v5, "The MFA parameter must be specified when changing MFA Delete status in the versioning configuration"

    invoke-direct {p0, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1564
    :cond_0
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v6, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 1565
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;>;"
    const-string v4, "versioning"

    invoke-interface {v2, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1568
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1569
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 1573
    :cond_1
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v4, v3}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)[B

    move-result-object v1

    .line 1574
    .local v1, "bytes":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1576
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, v4, v0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1577
    return-void
.end method

.method public setBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;)V
    .locals 7
    .param p1, "setBucketWebsiteConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1790
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1791
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->getConfiguration()Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    move-result-object v2

    .line 1793
    .local v2, "configuration":Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    const-string v4, "The bucket name parameter must be specified when setting a bucket\'s website configuration"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1795
    const-string v4, "The bucket website configuration parameter must be specified when setting a bucket\'s website configuration"

    invoke-direct {p0, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1797
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1798
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getIndexDocumentSuffix()Ljava/lang/String;

    move-result-object v4

    const-string v5, "The bucket website configuration parameter must specify the index document suffix when setting a bucket\'s website configuration"

    invoke-direct {p0, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1802
    :cond_0
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v6, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 1803
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;>;"
    const-string v4, "website"

    invoke-interface {v3, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v4, "Content-Type"

    const-string v5, "application/xml"

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)[B

    move-result-object v1

    .line 1807
    .local v1, "bytes":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1809
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v4, v0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1810
    return-void
.end method

.method public setBucketWebsiteConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1782
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;)V

    .line 1783
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 677
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 684
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 685
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 692
    const-string v0, "The bucket name parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    const-string v0, "The key parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    const-string v0, "The ACL parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p4, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 697
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 704
    const-string v0, "The bucket name parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    const-string v0, "The key parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    const-string v0, "The ACL parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p4, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 709
    return-void
.end method

.method public setObjectRedirectLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newRedirectLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 868
    const-string v0, "The bucketName parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    const-string v0, "The key parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    const-string v0, "The newStorageClass parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    .line 877
    return-void
.end method

.method public setS3ClientOptions(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1
    .param p1, "clientOptions"    # Lcom/amazonaws/services/s3/S3ClientOptions;

    .prologue
    .line 365
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 366
    return-void
.end method

.method public uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 25
    .param p1, "uploadPartRequest"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2246
    const-string v3, "The request parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2249
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v10

    .line 2250
    .local v10, "bucketName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 2251
    .local v15, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v24

    .line 2252
    .local v24, "uploadId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v19

    .line 2253
    .local v19, "partNumber":I
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v6

    .line 2255
    .local v6, "partSize":J
    const-string v3, "The bucket name parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2257
    const-string v3, "The key parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2259
    const-string v3, "The upload ID parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2261
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "The part number parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2263
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "The part size parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2266
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v15, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v21

    .line 2267
    .local v21, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/UploadPartRequest;>;"
    const-string v3, "uploadId"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v3, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    const-string v3, "partNumber"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2271
    const-string v3, "Content-MD5"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    :cond_0
    const-string v3, "Content-Length"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    const/4 v2, 0x0

    .line 2276
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2277
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 2289
    :goto_0
    const/16 v16, 0x0

    .line 2290
    .local v16, "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2298
    :try_start_0
    new-instance v17, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2299
    .end local v16    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .local v17, "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    move-object/from16 v2, v17

    move-object/from16 v16, v17

    .line 2306
    .end local v17    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .restart local v16    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v20

    .line 2307
    .local v20, "progressListener":Lcom/amazonaws/services/s3/model/ProgressListener;
    if-eqz v20, :cond_2

    .line 2308
    new-instance v14, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;

    move-object/from16 v0, v20

    invoke-direct {v14, v2, v0}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 2309
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v14, "inputStream":Ljava/io/InputStream;
    const/16 v3, 0x400

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    move-object v2, v14

    .line 2313
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2314
    new-instance v3, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3, v10, v15}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2316
    .local v18, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-eqz v18, :cond_6

    if-eqz v16, :cond_6

    .line 2317
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->getMd5Digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v12

    .line 2318
    .local v12, "contentMd5":Ljava/lang/String;
    invoke-static {v12}, Lcom/amazonaws/util/BinaryUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object v11

    .line 2319
    .local v11, "clientSideHash":[B
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v23

    .line 2321
    .local v23, "serverSideHash":[B
    move-object/from16 v0, v23

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2322
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    .line 2323
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    const-string v4, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v3, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2336
    .end local v11    # "clientSideHash":[B
    .end local v12    # "contentMd5":Ljava/lang/String;
    .end local v18    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .end local v23    # "serverSideHash":[B
    :catch_0
    move-exception v9

    .line 2337
    .local v9, "ace":Lcom/amazonaws/AmazonClientException;
    const/16 v3, 0x1000

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    .line 2338
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2340
    .end local v9    # "ace":Lcom/amazonaws/AmazonClientException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 2341
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2342
    :cond_3
    :goto_2
    throw v3

    .line 2278
    .end local v16    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .end local v20    # "progressListener":Lcom/amazonaws/services/s3/model/ProgressListener;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2280
    :try_start_4
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    .end local v2    # "inputStream":Ljava/io/InputStream;
    new-instance v3, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v4

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 2282
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v13

    .line 2283
    .local v13, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified file doesn\'t exist"

    invoke-direct {v3, v4, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2286
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A File or InputStream must be specified when uploading part"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2300
    .restart local v16    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    :catch_2
    move-exception v13

    .line 2301
    .local v13, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "No MD5 digest algorithm available.  Unable to calculate checksum and verify data integrity."

    invoke-interface {v3, v4, v13}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2329
    .end local v13    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v18    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .restart local v20    # "progressListener":Lcom/amazonaws/services/s3/model/ProgressListener;
    :cond_6
    const/16 v3, 0x800

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/services/s3/model/ProgressListener;I)V

    .line 2331
    new-instance v22, Lcom/amazonaws/services/s3/model/UploadPartResult;

    invoke-direct/range {v22 .. v22}, Lcom/amazonaws/services/s3/model/UploadPartResult;-><init>()V

    .line 2332
    .local v22, "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setETag(Ljava/lang/String;)V

    .line 2333
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setPartNumber(I)V

    .line 2334
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getServerSideEncryption()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setServerSideEncryption(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2340
    if-eqz v2, :cond_7

    .line 2341
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2342
    :cond_7
    :goto_3
    return-object v22

    :catch_3
    move-exception v3

    goto :goto_3

    .end local v18    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .end local v22    # "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    :catch_4
    move-exception v4

    goto :goto_2
.end method
