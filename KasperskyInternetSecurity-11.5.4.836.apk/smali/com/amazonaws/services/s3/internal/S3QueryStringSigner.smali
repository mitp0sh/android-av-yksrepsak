.class public Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;
.super Lcom/amazonaws/auth/AbstractAWSSigner;
.source "S3QueryStringSigner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/auth/AbstractAWSSigner;"
    }
.end annotation


# instance fields
.field private final expiration:Ljava/util/Date;

.field private final httpVerb:Ljava/lang/String;

.field private final resourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .param p1, "httpVerb"    # Ljava/lang/String;
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "expiration"    # Ljava/util/Date;

    .prologue
    .line 54
    .local p0, "this":Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;, "Lcom/amazonaws/services/s3/internal/S3QueryStringSigner<TT;>;"
    invoke-direct {p0}, Lcom/amazonaws/auth/AbstractAWSSigner;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->httpVerb:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->resourcePath:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->expiration:Ljava/util/Date;

    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter resourcePath is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
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
    .line 84
    .local p0, "this":Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;, "Lcom/amazonaws/services/s3/internal/S3QueryStringSigner<TT;>;"
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const-string v0, "x-amz-security-token"

    invoke-interface {p2}, Lcom/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 8
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
    .line 64
    .local p0, "this":Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;, "Lcom/amazonaws/services/s3/internal/S3QueryStringSigner<TT;>;"
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->sanitizeCredentials(Lcom/amazonaws/auth/AWSCredentials;)Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    .line 66
    .local v2, "sanitizedCredentials":Lcom/amazonaws/auth/AWSCredentials;
    instance-of v4, v2, Lcom/amazonaws/auth/AWSSessionCredentials;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 67
    check-cast v4, Lcom/amazonaws/auth/AWSSessionCredentials;

    invoke-virtual {p0, p1, v4}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->addSessionCredentials(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->expiration:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "expirationInSeconds":Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->httpVerb:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->resourcePath:Ljava/lang/String;

    invoke-static {v4, v5, p1, v1}, Lcom/amazonaws/services/s3/internal/RestUtils;->makeS3CanonicalString(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "canonicalString":Ljava/lang/String;
    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA1:Lcom/amazonaws/auth/SigningAlgorithm;

    invoke-super {p0, v0, v4, v5}, Lcom/amazonaws/auth/AbstractAWSSigner;->signAndBase64Encode(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "signature":Ljava/lang/String;
    const-string v4, "AWSAccessKeyId"

    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "Expires"

    invoke-interface {p1, v4, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v4, "Signature"

    invoke-interface {p1, v4, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method
