.class public Lcom/amazonaws/services/ec2/util/S3UploadPolicy;
.super Ljava/lang/Object;
.source "S3UploadPolicy.java"


# static fields
.field private static final HMAC_SHA1_ALGORITHM:Ljava/lang/String; = "HmacSHA1"


# instance fields
.field private policySignature:Ljava/lang/String;

.field private policyString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "awsAccessKeyId"    # Ljava/lang/String;
    .param p2, "awsSecretKey"    # Ljava/lang/String;
    .param p3, "bucketName"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "expireInMinutes"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 63
    .local v3, "expirationDate":Ljava/util/Calendar;
    const/16 v4, 0xc

    invoke-virtual {v3, v4, p5}, Ljava/util/Calendar;->add(II)V

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "ISO8601":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/SimpleTimeZone;

    const/4 v5, 0x0

    const-string v6, "GMT"

    invoke-direct {v4, v5, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v4, "{"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"expiration\": \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"conditions\": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{\"bucket\": \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"},"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{\"acl\": \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ec2-bundle-read"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"},"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[\"starts-with\", \"$key\", \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazonaws/services/ec2/util/S3UploadPolicy;->base64Encode([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/services/ec2/util/S3UploadPolicy;->policyString:Ljava/lang/String;

    .line 84
    iget-object v4, p0, Lcom/amazonaws/services/ec2/util/S3UploadPolicy;->policyString:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/amazonaws/services/ec2/util/S3UploadPolicy;->signPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/services/ec2/util/S3UploadPolicy;->policySignature:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to generate S3 upload policy"

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private base64Encode([B)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private signPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "awsSecretKey"    # Ljava/lang/String;
    .param p2, "base64EncodedPolicy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "HmacSHA1"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 115
    .local v1, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "HmacSHA1"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 116
    .local v0, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazonaws/services/ec2/util/S3UploadPolicy;->base64Encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getPolicySignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/ec2/util/S3UploadPolicy;->policySignature:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/ec2/util/S3UploadPolicy;->policyString:Ljava/lang/String;

    return-object v0
.end method
