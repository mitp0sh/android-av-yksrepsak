.class public Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;
.super Lcom/amazonaws/services/s3/AmazonS3Client;
.source "AmazonS3EncryptionClient.java"


# static fields
.field private static final USER_AGENT:Ljava/lang/String;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

.field private currentMultipartUploadSecretKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;",
            ">;"
        }
    .end annotation
.end field

.field private encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    .line 81
    const-class v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V
    .locals 1
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "encryptionMaterials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .prologue
    .line 239
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "encryptionMaterials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p3, "clientConfig"    # Lcom/amazonaws/ClientConfiguration;
    .param p4, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 362
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 363
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "encryptionMaterials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p3, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 294
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V
    .locals 2
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .prologue
    .line 256
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    new-instance v1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p3, "clientConfig"    # Lcom/amazonaws/ClientConfiguration;
    .param p4, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 369
    invoke-direct {p0, p1, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    .line 370
    const-string v0, "EncryptionMaterialsProvider parameter must not be null."

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    const-string v0, "CryptoConfiguration parameter must not be null."

    invoke-direct {p0, p4, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 374
    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 375
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p3, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 315
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 316
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V
    .locals 2
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .prologue
    .line 273
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    new-instance v1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p3, "clientConfig"    # Lcom/amazonaws/ClientConfiguration;
    .param p4, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 380
    invoke-direct {p0, p1, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    .line 381
    const-string v0, "EncryptionMaterialsProvider parameter must not be null."

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    const-string v0, "CryptoConfiguration parameter must not be null."

    invoke-direct {p0, p4, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 385
    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 386
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p3, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 336
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 337
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V
    .locals 1
    .param p1, "encryptionMaterials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .prologue
    .line 117
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 1
    .param p1, "encryptionMaterials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 185
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V
    .locals 3
    .param p1, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .prologue
    .line 149
    const/4 v0, 0x0

    check-cast v0, Lcom/amazonaws/auth/AWSCredentialsProvider;

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    new-instance v2, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 2
    .param p1, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p2, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 222
    const/4 v0, 0x0

    check-cast v0, Lcom/amazonaws/auth/AWSCredentialsProvider;

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 223
    return-void
.end method

.method private assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterValue"    # Ljava/lang/Object;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 802
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_0
    return-void
.end method

.method private decryptObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 3
    .param p1, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p2, "instructionFile"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    .line 765
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    .line 768
    .local v0, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v1

    return-object v1
.end method

.method private decryptObjectUsingMetadata(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 3
    .param p1, "object"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    .line 747
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    .line 750
    .local v0, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v1

    return-object v1
.end method

.method private getInstructionFile(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 5
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .prologue
    .line 782
    :try_start_0
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionGetRequest(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object v1

    .line 783
    .local v1, "instructionFileRequest":Lcom/amazonaws/services/s3/model/GetObjectRequest;
    invoke-super {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 787
    .end local v1    # "instructionFileRequest":Lcom/amazonaws/services/s3/model/GetObjectRequest;
    :goto_0
    return-object v2

    .line 784
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Lcom/amazonaws/AmazonServiceException;
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve instruction file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 787
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 6
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 721
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v2

    .line 724
    .local v2, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p1, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 727
    .local v0, "encryptedObjectRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v1

    .line 730
    .local v1, "encryptedObjectResult":Lcom/amazonaws/services/s3/model/PutObjectResult;
    invoke-static {p1, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v3

    .line 731
    .local v3, "instructionRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-super {p0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 734
    return-object v1
.end method

.method private putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 4
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v1

    .line 693
    .local v1, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p1, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 696
    .local v0, "encryptedObjectRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-static {p1, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadataWithEncryptionInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V

    .line 699
    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 2
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TX;"
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->addClientMarker(Ljava/lang/String;)V

    .line 807
    return-object p1
.end method

.method public completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 11
    .param p1, "completeMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 518
    sget-object v7, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 520
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v6

    .line 521
    .local v6, "uploadId":Ljava/lang/String;
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    .line 523
    .local v1, "encryptedUploadContext":Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 524
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    const-string v8, "Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in Amazon S3 is incomplete and corrupt."

    invoke-direct {v7, v8}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 528
    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v4

    .line 531
    .local v4, "result":Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v7

    sget-object v8, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v7, v8, :cond_1

    .line 532
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v9

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getFirstInitializationVector()[B

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 537
    .local v5, "symmetricCipher":Ljavax/crypto/Cipher;
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v2

    .line 540
    .local v2, "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v8

    invoke-static {v7, v2, v8}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object v0

    .line 541
    .local v0, "encryptedEnvelopeSymmetricKey":[B
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    invoke-direct {v3, v7, v0, v8, v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Ljavax/crypto/Cipher;)V

    .line 544
    .local v3, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v7

    invoke-super {p0, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 547
    .end local v0    # "encryptedEnvelopeSymmetricKey":[B
    .end local v2    # "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .end local v3    # "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .end local v5    # "symmetricCipher":Ljavax/crypto/Cipher;
    :cond_1
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    return-object v4
.end method

.method public copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 3
    .param p1, "copyPartRequest"    # Lcom/amazonaws/services/s3/model/CopyPartRequest;

    .prologue
    .line 657
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "uploadId":Ljava/lang/String;
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    .line 660
    .local v0, "encryptedUploadContext":Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setHasFinalPartBeenSeen(Z)V

    .line 664
    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object v2

    return-object v2
.end method

.method public deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V
    .locals 2
    .param p1, "deleteObjectRequest"    # Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    .prologue
    .line 501
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 504
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    .line 506
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionDeleteObjectRequest(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    move-result-object v0

    .line 507
    .local v0, "instructionDeleteRequest":Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    .line 508
    return-void
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 9
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 463
    const-string v6, "The destination file parameter must be specified when downloading an object directly to a file"

    invoke-direct {p0, p2, v6}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v5

    .line 468
    .local v5, "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    if-nez v5, :cond_0

    const/4 v6, 0x0

    .line 492
    :goto_0
    return-object v6

    .line 470
    :cond_0
    const/4 v3, 0x0

    .line 472
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v4, "outputStream":Ljava/io/OutputStream;
    const/16 v6, 0x2800

    :try_start_1
    new-array v0, v6, [B

    .line 475
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v6, -0x1

    if-le v1, v6, :cond_1

    .line 476
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 478
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 479
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to store object contents to disk: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 483
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    throw v6

    .line 482
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 483
    :goto_6
    :try_start_6
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 492
    :goto_7
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v6

    goto :goto_0

    .line 482
    :catch_1
    move-exception v6

    goto :goto_6

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v7

    goto :goto_4

    .line 483
    :catch_3
    move-exception v7

    goto :goto_5

    .line 482
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 478
    :catch_4
    move-exception v2

    goto :goto_2

    .line 483
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v6

    goto :goto_7
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 11
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 411
    sget-object v6, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v6}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 415
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v2

    .line 416
    .local v2, "desiredRange":[J
    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getAdjustedCryptoRange([J)[J

    move-result-object v1

    .line 417
    .local v1, "adjustedCryptoRange":[J
    if-eqz v1, :cond_0

    .line 418
    aget-wide v6, v1, v7

    aget-wide v8, v1, v8

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 422
    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v5

    .line 426
    .local v5, "retrievedObject":Lcom/amazonaws/services/s3/model/S3Object;
    if-nez v5, :cond_1

    const/4 v6, 0x0

    .line 453
    :goto_0
    return-object v6

    .line 431
    :cond_1
    :try_start_0
    invoke-static {v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->isEncryptionInfoInMetadata(Lcom/amazonaws/services/s3/model/S3Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 432
    invoke-direct {p0, v5}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->decryptObjectUsingMetadata(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 453
    .local v4, "objectToBeReturned":Lcom/amazonaws/services/s3/model/S3Object;
    :goto_1
    invoke-static {v4, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->adjustOutputToDesiredRange(Lcom/amazonaws/services/s3/model/S3Object;[J)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v6

    goto :goto_0

    .line 435
    .end local v4    # "objectToBeReturned":Lcom/amazonaws/services/s3/model/S3Object;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->getInstructionFile(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v3

    .line 436
    .local v3, "instructionFile":Lcom/amazonaws/services/s3/model/S3Object;
    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->isEncryptionInfoInInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 437
    invoke-direct {p0, v5, v3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->decryptObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v4

    .restart local v4    # "objectToBeReturned":Lcom/amazonaws/services/s3/model/S3Object;
    goto :goto_1

    .line 440
    .end local v4    # "objectToBeReturned":Lcom/amazonaws/services/s3/model/S3Object;
    :cond_3
    sget-object v6, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Unable to detect encryption information for object \'%s\' in bucket \'%s\'. Returning object without decryption."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    move-object v4, v5

    .restart local v4    # "objectToBeReturned":Lcom/amazonaws/services/s3/model/S3Object;
    goto :goto_1

    .line 446
    .end local v3    # "instructionFile":Lcom/amazonaws/services/s3/model/S3Object;
    .end local v4    # "objectToBeReturned":Lcom/amazonaws/services/s3/model/S3Object;
    :catch_0
    move-exception v0

    .line 448
    .local v0, "ace":Lcom/amazonaws/AmazonClientException;
    :try_start_2
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 449
    :goto_2
    throw v0

    .line 448
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 10
    .param p1, "initiateMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 559
    sget-object v7, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 562
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateOneTimeUseSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 563
    .local v3, "envelopeSymmetricKey":Ljavax/crypto/SecretKey;
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v3, v7, v8, v9}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 565
    .local v6, "symmetricCipher":Ljavax/crypto/Cipher;
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v7

    sget-object v8, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v7, v8, :cond_0

    .line 566
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->encryptionMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v2

    .line 568
    .local v2, "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v7

    invoke-static {v3, v2, v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object v0

    .line 571
    .local v0, "encryptedEnvelopeSymmetricKey":[B
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v7

    invoke-static {p1, v0, v6, v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadataWithEncryptionInfo(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;[BLjavax/crypto/Cipher;Ljava/util/Map;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v4

    .line 574
    .local v4, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 577
    .end local v0    # "encryptedEnvelopeSymmetricKey":[B
    .end local v2    # "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .end local v4    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v5

    .line 578
    .local v5, "result":Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 579
    .local v1, "encryptedUploadContext":Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setNextInitializationVector([B)V

    .line 580
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setFirstInitializationVector([B)V

    .line 581
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    return-object v5
.end method

.method public putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 397
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v0, v1, :cond_0

    .line 398
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    goto :goto_0
.end method

.method public uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 18
    .param p1, "uploadPartRequest"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 600
    sget-object v14, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 602
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v9

    .line 603
    .local v9, "isLastPart":Z
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v13

    .line 605
    .local v13, "uploadId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v14

    sget v16, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    rem-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_0

    const/4 v11, 0x1

    .line 606
    .local v11, "partSizeMultipleOfCipherBlockSize":Z
    :goto_0
    if-nez v9, :cond_1

    if-nez v11, :cond_1

    .line 607
    new-instance v14, Lcom/amazonaws/AmazonClientException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") with the exception of the last part.  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Otherwise encryption adds extra padding that will corrupt the final object."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 605
    .end local v11    # "partSizeMultipleOfCipherBlockSize":Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 613
    .restart local v11    # "partSizeMultipleOfCipherBlockSize":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->currentMultipartUploadSecretKeys:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    .line 614
    .local v7, "encryptedUploadContext":Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
    if-nez v7, :cond_2

    new-instance v14, Lcom/amazonaws/AmazonClientException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No client-side information available on upload ID "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 616
    :cond_2
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 617
    .local v8, "envelopeSymmetricKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getNextInitializationVector()[B

    move-result-object v10

    .line 618
    .local v10, "iv":[B
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v15}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v15

    invoke-direct {v3, v8, v14, v10, v15}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 621
    .local v3, "cipherFactory":Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/InputStream;

    move-result-object v6

    .line 622
    .local v6, "encryptedInputStream":Ljava/io/InputStream;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 626
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 628
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->createCipher()Ljavax/crypto/Cipher;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/UploadPartRequest;)J

    move-result-wide v4

    .line 629
    .local v4, "cryptoContentLength":J
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-lez v14, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setPartSize(J)V

    .line 631
    :cond_3
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 632
    new-instance v14, Lcom/amazonaws/AmazonClientException;

    const-string v15, "This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part, otherwise it will cause the encrypted data to be corrupted."

    invoke-direct {v14, v15}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 636
    :cond_4
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setHasFinalPartBeenSeen(Z)V

    .line 640
    .end local v4    # "cryptoContentLength":J
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    .line 641
    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    .line 643
    invoke-super/range {p0 .. p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v12

    .line 645
    .local v12, "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    instance-of v14, v6, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    if-eqz v14, :cond_6

    move-object v2, v6

    .line 646
    check-cast v2, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    .line 647
    .local v2, "bris":Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->getBlock()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setNextInitializationVector([B)V

    .line 652
    return-object v12

    .line 649
    .end local v2    # "bris":Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
    :cond_6
    new-instance v14, Lcom/amazonaws/AmazonClientException;

    const-string v15, "Unable to access last block of encrypted data"

    invoke-direct {v14, v15}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v14
.end method
