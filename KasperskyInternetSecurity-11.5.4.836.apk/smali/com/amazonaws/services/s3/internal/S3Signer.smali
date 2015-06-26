.class public Lcom/amazonaws/services/s3/internal/S3Signer;
.super Lcom/amazonaws/auth/AbstractAWSSigner;
.source "S3Signer.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final httpVerb:Ljava/lang/String;

.field private final resourcePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/S3Signer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "httpVerb"    # Ljava/lang/String;
    .param p2, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/amazonaws/auth/AbstractAWSSigner;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->httpVerb:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->resourcePath:Ljava/lang/String;

    .line 81
    if-nez p2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter resourcePath is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
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
    .line 108
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const-string v0, "x-amz-security-token"

    invoke-interface {p2}, Lcom/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 7
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
    .line 86
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 87
    :cond_0
    sget-object v4, Lcom/amazonaws/services/s3/internal/S3Signer;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Canonical string will not be signed, as no AWS Secret Key was provided"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/internal/S3Signer;->sanitizeCredentials(Lcom/amazonaws/auth/AWSCredentials;)Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    .line 92
    .local v2, "sanitizedCredentials":Lcom/amazonaws/auth/AWSCredentials;
    instance-of v4, v2, Lcom/amazonaws/auth/AWSSessionCredentials;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 93
    check-cast v4, Lcom/amazonaws/auth/AWSSessionCredentials;

    invoke-virtual {p0, p1, v4}, Lcom/amazonaws/services/s3/internal/S3Signer;->addSessionCredentials(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V

    .line 96
    :cond_2
    invoke-interface {p1}, Lcom/amazonaws/Request;->getTimeOffset()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/s3/internal/S3Signer;->getSignatureDate(I)Ljava/util/Date;

    move-result-object v1

    .line 97
    .local v1, "date":Ljava/util/Date;
    const-string v4, "Date"

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->httpVerb:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->resourcePath:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, p1, v6}, Lcom/amazonaws/services/s3/internal/RestUtils;->makeS3CanonicalString(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "canonicalString":Ljava/lang/String;
    sget-object v4, Lcom/amazonaws/services/s3/internal/S3Signer;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calculated string to sign:\n\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 102
    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA1:Lcom/amazonaws/auth/SigningAlgorithm;

    invoke-super {p0, v0, v4, v5}, Lcom/amazonaws/auth/AbstractAWSSigner;->signAndBase64Encode(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "signature":Ljava/lang/String;
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AWS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
