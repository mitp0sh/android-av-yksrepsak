.class public Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# static fields
.field private static final INSTRUCTION_SUFFIX:Ljava/lang/String; = ".instruction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustOutputToDesiredRange(Lcom/amazonaws/services/s3/model/S3Object;[J)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 7
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "range"    # [J

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 503
    if-eqz p1, :cond_0

    aget-wide v2, p1, v2

    aget-wide v4, p1, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-object p0

    .line 508
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    .line 509
    .local v1, "objectContent":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 510
    .local v0, "adjustedRangeContents":Ljava/io/InputStream;
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    .end local v0    # "adjustedRangeContents":Ljava/io/InputStream;
    .end local v1    # "objectContent":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    :catch_0
    move-exception v6

    .line 513
    .local v6, "e":Ljava/io/IOException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adjusting output to desired byte range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .param p0, "instructionFile"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {p0, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 15
    .param p0, "instructionFile"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 181
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->parseJSONInstruction(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v5

    .line 184
    .local v5, "instructionJSON":Lcom/amazonaws/util/json/JSONObject;
    :try_start_0
    const-string v10, "x-amz-key"

    invoke-virtual {v5, v10}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 185
    .local v3, "encryptedSymmetricKeyBytes":[B
    const-string v10, "x-amz-iv"

    invoke-virtual {v5, v10}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 186
    .local v4, "initVectorBytes":[B
    const-string v10, "x-amz-matdesc"

    invoke-virtual {v5, v10}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "materialsDescriptionString":Ljava/lang/String;
    invoke-static {v8}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertJSONToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 190
    .local v7, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v3

    .line 191
    invoke-static {v4}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v4

    .line 193
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v7, :cond_1

    .line 195
    :cond_0
    new-instance v10, Lcom/amazonaws/AmazonClientException;

    const-string v11, "Necessary encryption info not found in the instruction file \'%s\' in bucket \'%s\'"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/amazonaws/util/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v3    # "encryptedSymmetricKeyBytes":[B
    .end local v4    # "initVectorBytes":[B
    .end local v7    # "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "materialsDescriptionString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Lcom/amazonaws/util/json/JSONException;
    new-instance v10, Lcom/amazonaws/AmazonClientException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to parse retrieved instruction file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/amazonaws/util/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 200
    .end local v2    # "e":Lcom/amazonaws/util/json/JSONException;
    .restart local v3    # "encryptedSymmetricKeyBytes":[B
    .restart local v4    # "initVectorBytes":[B
    .restart local v7    # "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "materialsDescriptionString":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->retrieveOriginalMaterials(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v6

    .line 203
    .local v6, "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    if-nez v6, :cond_2

    .line 204
    new-instance v10, Lcom/amazonaws/AmazonClientException;

    const-string v11, "Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file \'%s\' in bucket \'%s\'."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 211
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v3, v6, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getDecryptedSymmetricKey([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 212
    .local v9, "symmetricKey":Ljavax/crypto/SecretKey;
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v10, 0x2

    move-object/from16 v0, p2

    invoke-direct {v1, v9, v10, v4, v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 214
    .local v1, "cipherFactory":Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    new-instance v10, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-direct {v10, v7, v3, v9, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    :try_end_1
    .catch Lcom/amazonaws/util/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v10
.end method

.method public static buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {p0, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 13
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v6

    .line 263
    .local v6, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    const-string v8, "x-amz-key"

    invoke-static {v8, v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCryptoBytesFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B

    move-result-object v1

    .line 264
    .local v1, "encryptedSymmetricKeyBytes":[B
    const-string v8, "x-amz-iv"

    invoke-static {v8, v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCryptoBytesFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B

    move-result-object v2

    .line 265
    .local v2, "initVectorBytes":[B
    const-string v8, "x-amz-matdesc"

    invoke-static {v8, v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getStringFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "materialsDescriptionString":Ljava/lang/String;
    invoke-static {v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertJSONToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 268
    .local v4, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 270
    :cond_0
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    const-string v9, "Necessary encryption info not found in the headers of file \'%s\' in bucket \'%s\'"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 275
    :cond_1
    invoke-static {v4, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->retrieveOriginalMaterials(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v3

    .line 278
    .local v3, "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    if-nez v3, :cond_2

    .line 279
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    const-string v9, "Unable to retrieve the encryption materials that originally encrypted file \'%s\' in bucket \'%s\'."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 286
    :cond_2
    invoke-static {v1, v3, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getDecryptedSymmetricKey([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 287
    .local v7, "symmetricKey":Ljavax/crypto/SecretKey;
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v8, 0x2

    invoke-direct {v0, v7, v8, v2, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 289
    .local v0, "cipherFactory":Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    new-instance v8, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-direct {v8, v4, v1, v7, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object v8
.end method

.method private static calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .locals 9
    .param p0, "symmetricCipher"    # Ljavax/crypto/Cipher;
    .param p1, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    const-wide/16 v6, 0x0

    .line 771
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getUnencryptedContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v4

    .line 774
    .local v4, "plaintextLength":J
    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 781
    :goto_0
    return-wide v6

    .line 777
    :cond_0
    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    const-wide/16 v6, -0x1

    goto :goto_0

    .line 779
    :cond_1
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 780
    .local v0, "cipherBlockSize":J
    rem-long v6, v4, v0

    sub-long v2, v0, v6

    .line 781
    .local v2, "offset":J
    add-long v6, v4, v2

    goto :goto_0
.end method

.method public static calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
    .locals 10
    .param p0, "symmetricCipher"    # Ljavax/crypto/Cipher;
    .param p1, "request"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .prologue
    .line 786
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 787
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    .line 794
    .local v4, "plaintextLength":J
    :goto_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 795
    .local v0, "cipherBlockSize":J
    rem-long v6, v4, v0

    sub-long v2, v0, v6

    .line 796
    .local v2, "offset":J
    add-long v6, v4, v2

    .end local v0    # "cipherBlockSize":J
    .end local v2    # "offset":J
    .end local v4    # "plaintextLength":J
    :goto_1
    return-wide v6

    .line 788
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    .restart local v4    # "plaintextLength":J
    goto :goto_0

    .line 789
    .end local v4    # "plaintextLength":J
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 790
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    .restart local v4    # "plaintextLength":J
    goto :goto_0

    .line 792
    .end local v4    # "plaintextLength":J
    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_1
.end method

.method private static convertInstructionToJSONObject(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/util/json/JSONObject;
    .locals 6
    .param p0, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    .line 825
    new-instance v2, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v2}, Lcom/amazonaws/util/json/JSONObject;-><init>()V

    .line 827
    .local v2, "instructionJSON":Lcom/amazonaws/util/json/JSONObject;
    :try_start_0
    new-instance v3, Lcom/amazonaws/util/json/JSONObject;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 828
    .local v3, "materialsDescriptionJSON":Lcom/amazonaws/util/json/JSONObject;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getSymmetricCipher()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 829
    .local v1, "initVector":[B
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    .line 830
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getEncryptedSymmetricKey()[B

    move-result-object v0

    .line 831
    .local v0, "encryptedKeyBytes":[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 833
    const-string v4, "x-amz-matdesc"

    invoke-virtual {v3}, Lcom/amazonaws/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 834
    const-string v4, "x-amz-key"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 835
    const-string v4, "x-amz-iv"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;
    :try_end_0
    .catch Lcom/amazonaws/util/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .end local v0    # "encryptedKeyBytes":[B
    .end local v1    # "initVector":[B
    .end local v3    # "materialsDescriptionJSON":Lcom/amazonaws/util/json/JSONObject;
    :goto_0
    return-object v2

    .line 837
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static convertJSONToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "descriptionJSONString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    if-nez p0, :cond_1

    .line 685
    const/4 v4, 0x0

    .line 695
    :cond_0
    return-object v4

    .line 688
    :cond_1
    :try_start_0
    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v0, p0}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, "descriptionJSON":Lcom/amazonaws/util/json/JSONObject;
    invoke-virtual {v0}, Lcom/amazonaws/util/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 690
    .local v3, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 691
    .local v4, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 692
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 693
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazonaws/util/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    .end local v0    # "descriptionJSON":Lcom/amazonaws/util/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 697
    .local v1, "e":Lcom/amazonaws/util/json/JSONException;
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse encryption materials description from metadata :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amazonaws/util/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    if-nez p0, :cond_0

    .line 858
    const-string v3, ""

    .line 870
    :goto_0
    return-object v3

    .line 860
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 864
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 865
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 868
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 870
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static createInstructionDeleteObjectRequest(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .locals 4
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    .prologue
    .line 417
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".instruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInstructionGetRequest(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 4
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .prologue
    .line 405
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".instruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 6
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    .line 364
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertInstructionToJSONObject(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v2

    .line 365
    .local v2, "instructionJSON":Lcom/amazonaws/util/json/JSONObject;
    invoke-virtual {v2}, Lcom/amazonaws/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 366
    .local v0, "instructionBytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 368
    .local v1, "instructionInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    .line 371
    .local v3, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    array-length v4, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 374
    const-string v4, "x-amz-crypto-instr-file"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".instruction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setKey(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 379
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 381
    return-object p0
.end method

.method public static createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 7
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    .line 385
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertInstructionToJSONObject(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v2

    .line 386
    .local v2, "instructionJSON":Lcom/amazonaws/util/json/JSONObject;
    invoke-virtual {v2}, Lcom/amazonaws/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 387
    .local v0, "instructionBytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 389
    .local v1, "instructionInputStream":Ljava/io/InputStream;
    new-instance v3, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 390
    .local v3, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    array-length v4, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 391
    const-string v4, "x-amz-crypto-instr-file"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v4, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".instruction"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object v4
.end method

.method public static createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;
    .locals 5
    .param p0, "symmetricCryptoKey"    # Ljavax/crypto/SecretKey;
    .param p1, "encryptMode"    # I
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .param p3, "initVector"    # [B

    .prologue
    .line 540
    if-eqz p2, :cond_0

    .line 541
    :try_start_0
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_METHOD:Ljava/lang/String;

    invoke-static {v2, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 545
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :goto_0
    if-eqz p3, :cond_1

    .line 546
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 550
    :goto_1
    return-object v0

    .line 543
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :cond_0
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_METHOD:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 548
    :cond_1
    invoke-virtual {v0, p1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 551
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 552
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to build cipher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nMake sure you have the JCE unlimited strength policy files installed and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "configured for your JVM: http://www.ngs.ac.uk/tools/jcepolicyfiles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 4
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    .line 348
    .local v1, "objectContent":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    new-instance v0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getCipherFactory()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    .line 349
    .local v0, "decryptedInputStream":Ljava/io/InputStream;
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 350
    return-object p0
.end method

.method public static decryptObjectUsingMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 2
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    .line 118
    .local v0, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v1

    return-object v1
.end method

.method public static encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 9
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    const-wide/16 v7, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 306
    .local v2, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-nez v2, :cond_0

    .line 307
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 311
    .restart local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 312
    const-string v5, "x-amz-unencrypted-content-md5"

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_1
    invoke-static {p0, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getUnencryptedContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v3

    .line 317
    .local v3, "originalContentLength":J
    cmp-long v5, v3, v7

    if-ltz v5, :cond_2

    const-string v5, "x-amz-unencrypted-content-length"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getSymmetricCipher()Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-static {v5, p0, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v0

    .line 322
    .local v0, "cryptoContentLength":J
    cmp-long v5, v0, v7

    if-ltz v5, :cond_3

    invoke-virtual {v2, v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 324
    :cond_3
    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 327
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getCipherFactory()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedInputStream(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 330
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 332
    return-object p0
.end method

.method public static encryptRequestUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 2
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v1

    .line 90
    .local v1, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 93
    .local v0, "encryptedObjectRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-static {p0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadataWithEncryptionInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V

    .line 95
    return-object v0
.end method

.method public static generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .param p0, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p1, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 6
    .param p0, "materialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 138
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateOneTimeUseSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 139
    .local v2, "envelopeSymmetricKey":Ljavax/crypto/SecretKey;
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v4, v5, p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 142
    .local v0, "cipherFactory":Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    invoke-interface {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v3

    .line 143
    .local v3, "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    invoke-static {v2, v3, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object v1

    .line 146
    .local v1, "encryptedEnvelopeSymmetricKey":[B
    new-instance v4, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object v4
.end method

.method public static generateOneTimeUseSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 5

    .prologue
    .line 524
    :try_start_0
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_KEY_ALGORITHM:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 525
    .local v1, "generator":Ljavax/crypto/KeyGenerator;
    sget v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_KEY_LENGTH:I

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 526
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to generate envelope symmetric key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getAdjustedCryptoRange([J)[J
    .locals 7
    .param p0, "range"    # [J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 477
    if-eqz p0, :cond_0

    aget-wide v1, p0, v5

    aget-wide v3, p0, v6

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 478
    :cond_0
    const/4 v0, 0x0

    .line 483
    :goto_0
    return-object v0

    .line 480
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 481
    .local v0, "adjustedCryptoRange":[J
    aget-wide v1, p0, v5

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCipherBlockLowerBound(J)J

    move-result-wide v1

    aput-wide v1, v0, v5

    .line 482
    aget-wide v1, p0, v6

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCipherBlockUpperBound(J)J

    move-result-wide v1

    aput-wide v1, v0, v6

    goto :goto_0
.end method

.method private static getCipherBlockLowerBound(J)J
    .locals 10
    .param p0, "leftmostBytePosition"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 880
    sget v8, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v0, v8

    .line 881
    .local v0, "cipherBlockSize":J
    rem-long v4, p0, v0

    .line 882
    .local v4, "offset":J
    sub-long v8, p0, v4

    sub-long v2, v8, v0

    .line 883
    .local v2, "lowerBound":J
    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    move-wide v2, v6

    .line 886
    .end local v2    # "lowerBound":J
    :cond_0
    return-wide v2
.end method

.method private static getCipherBlockUpperBound(J)J
    .locals 6
    .param p0, "rightmostBytePosition"    # J

    .prologue
    .line 895
    sget v4, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v0, v4

    .line 896
    .local v0, "cipherBlockSize":J
    rem-long v4, p0, v0

    sub-long v2, v0, v4

    .line 897
    .local v2, "offset":J
    add-long v4, p0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method private static getCryptoBytesFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B
    .locals 3
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v0

    .line 657
    .local v0, "userMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 658
    :cond_0
    const/4 v2, 0x0

    .line 662
    :goto_0
    return-object v2

    .line 660
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 662
    .local v1, "valueBytes":[B
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    goto :goto_0
.end method

.method private static getDecryptedSymmetricKey([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 7
    .param p0, "encryptedSymmetricKeyBytes"    # [B
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 592
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 594
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    .line 601
    .local v3, "keyToDoDecryption":Ljava/security/Key;
    :goto_0
    if-eqz p2, :cond_1

    .line 602
    :try_start_0
    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 606
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 607
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 608
    .local v1, "decryptedSymmetricKeyBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_KEY_ALGORITHM:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 597
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedSymmetricKeyBytes":[B
    .end local v3    # "keyToDoDecryption":Ljava/security/Key;
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .restart local v3    # "keyToDoDecryption":Ljava/security/Key;
    goto :goto_0

    .line 604
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_1

    .line 609
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v2

    .line 610
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to decrypt symmetric key from object metadata : "

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

.method private static getEncryptedInputStream(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/InputStream;
    .locals 5
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "cipherFactory"    # Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    .prologue
    .line 616
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 617
    .local v1, "originalInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 618
    new-instance v1, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .end local v1    # "originalInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 620
    .restart local v1    # "originalInputStream":Ljava/io/InputStream;
    :cond_0
    new-instance v2, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    invoke-direct {v2, v1, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 621
    .end local v1    # "originalInputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create cipher input stream: "

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

.method public static getEncryptedInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/InputStream;
    .locals 10
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .param p1, "cipherFactory"    # Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    .prologue
    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 629
    .local v0, "originalInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 630
    new-instance v0, Lcom/amazonaws/services/s3/internal/InputSubstream;

    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    new-instance v1, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    .restart local v0    # "originalInputStream":Ljava/io/InputStream;
    move-object v1, v0

    .line 634
    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    .local v1, "originalInputStream":Ljava/io/InputStream;
    :goto_0
    new-instance v0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    .line 636
    .end local v1    # "originalInputStream":Ljava/io/InputStream;
    .restart local v0    # "originalInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v2

    if-nez v2, :cond_0

    .line 638
    new-instance v1, Lcom/amazonaws/services/s3/internal/InputSubstream;

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    .restart local v1    # "originalInputStream":Ljava/io/InputStream;
    move-object v0, v1

    .line 641
    .end local v1    # "originalInputStream":Ljava/io/InputStream;
    .restart local v0    # "originalInputStream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v6

    .line 642
    .local v6, "partSize":J
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->createCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v8

    .line 643
    .local v8, "cipherBlockSize":I
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    int-to-long v3, v8

    sub-long v4, v6, v3

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;-><init>(Ljava/io/InputStream;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 644
    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    .end local v6    # "partSize":J
    .end local v8    # "cipherBlockSize":I
    :catch_0
    move-exception v9

    .line 645
    .local v9, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create cipher input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "originalInputStream":Ljava/io/InputStream;
    :cond_1
    move-object v1, v0

    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    .restart local v1    # "originalInputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B
    .locals 7
    .param p0, "toBeEncrypted"    # Ljavax/crypto/SecretKey;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 564
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 566
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    .line 573
    .local v2, "keyToDoEncryption":Ljava/security/Key;
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 574
    .local v3, "toBeEncryptedBytes":[B
    if-eqz p2, :cond_1

    .line 575
    invoke-interface {v2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 579
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 580
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 569
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "keyToDoEncryption":Ljava/security/Key;
    .end local v3    # "toBeEncryptedBytes":[B
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .restart local v2    # "keyToDoEncryption":Ljava/security/Key;
    goto :goto_0

    .line 577
    .restart local v3    # "toBeEncryptedBytes":[B
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_1

    .line 581
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "toBeEncryptedBytes":[B
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to encrypt symmetric key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static getStringFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Ljava/lang/String;
    .locals 2
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v0

    .line 672
    .local v0, "userMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    :cond_0
    const/4 v1, 0x0

    .line 675
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private static getUnencryptedContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .locals 4
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 818
    :goto_0
    return-wide v0

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 815
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    goto :goto_0

    .line 818
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static isEncryptionInfoInInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;)Z
    .locals 3
    .param p0, "instructionFile"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    const/4 v1, 0x0

    .line 451
    if-nez p0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v1

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v0

    .line 455
    .local v0, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 458
    const-string v1, "x-amz-crypto-instr-file"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isEncryptionInfoInMetadata(Lcom/amazonaws/services/s3/model/S3Object;)Z
    .locals 3
    .param p0, "retrievedObject"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    const/4 v1, 0x0

    .line 431
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v0

    .line 432
    .local v0, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "x-amz-iv"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "x-amz-key"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "x-amz-matdesc"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static parseJSONInstruction(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/util/json/JSONObject;
    .locals 5
    .param p0, "instructionObject"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    .line 846
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "instructionString":Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v2, v1}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 848
    .end local v1    # "instructionString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing JSON instruction file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static retrieveOriginalMaterials(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 1
    .param p1, "accessor"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            ")",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;"
        }
    .end annotation

    .prologue
    .line 757
    .local p0, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 758
    const/4 v0, 0x0

    .line 759
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v0

    goto :goto_0
.end method

.method private static updateMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V
    .locals 4
    .param p0, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .param p1, "keyBytesToStoreInMetadata"    # [B
    .param p2, "symmetricCipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            "[B",
            "Ljavax/crypto/Cipher;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p3, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 729
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p1

    .line 730
    const-string v2, "x-amz-key"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_0
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 735
    .local v1, "initVectorBytes":[B
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    .line 736
    const-string v2, "x-amz-iv"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v0, p3}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 740
    .local v0, "descriptionJSON":Lcom/amazonaws/util/json/JSONObject;
    const-string v2, "x-amz-matdesc"

    invoke-virtual {v0}, Lcom/amazonaws/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public static updateMetadataWithEncryptionInfo(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;[BLjavax/crypto/Cipher;Ljava/util/Map;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .param p1, "keyBytesToStoreInMetadata"    # [B
    .param p2, "symmetricCipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;",
            "[B",
            "Ljavax/crypto/Cipher;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;"
        }
    .end annotation

    .prologue
    .line 744
    .local p3, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 745
    .local v0, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v0    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 747
    .restart local v0    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V

    .line 749
    return-object v0
.end method

.method public static updateMetadataWithEncryptionInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V
    .locals 6
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    .line 710
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getEncryptedSymmetricKey()[B

    move-result-object v0

    .line 711
    .local v0, "keyBytesToStoreInMetadata":[B
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getSymmetricCipher()Ljavax/crypto/Cipher;

    move-result-object v4

    .line 712
    .local v4, "symmetricCipher":Ljavax/crypto/Cipher;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v1

    .line 714
    .local v1, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 715
    .local v2, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-nez v2, :cond_0

    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 717
    .restart local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 718
    invoke-static {}, Lcom/amazonaws/services/s3/internal/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/internal/Mimetypes;

    move-result-object v3

    .line 719
    .local v3, "mimetypes":Lcom/amazonaws/services/s3/internal/Mimetypes;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazonaws/services/s3/internal/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 722
    .end local v3    # "mimetypes":Lcom/amazonaws/services/s3/internal/Mimetypes;
    :cond_1
    invoke-static {v2, v0, v4, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V

    .line 723
    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 724
    return-void
.end method
