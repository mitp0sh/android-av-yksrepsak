.class public Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
.super Ljava/lang/Object;
.source "EncryptedUploadContext.java"


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final envelopeEncryptionKey:Ljavax/crypto/SecretKey;

.field private firstIV:[B

.field private hasFinalPartBeenSeen:Z

.field private final key:Ljava/lang/String;

.field private nextIV:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "envelopeEncryptionKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->bucketName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->key:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->envelopeEncryptionKey:Ljavax/crypto/SecretKey;

    .line 38
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->envelopeEncryptionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getFirstInitializationVector()[B
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->firstIV:[B

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNextInitializationVector()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->nextIV:[B

    return-object v0
.end method

.method public hasFinalPartBeenSeen()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen:Z

    return v0
.end method

.method public setFirstInitializationVector([B)V
    .locals 0
    .param p1, "firstIV"    # [B

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->firstIV:[B

    .line 70
    return-void
.end method

.method public setHasFinalPartBeenSeen(Z)V
    .locals 0
    .param p1, "hasFinalPartBeenSeen"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen:Z

    .line 66
    return-void
.end method

.method public setNextInitializationVector([B)V
    .locals 0
    .param p1, "nextIV"    # [B

    .prologue
    .line 53
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->nextIV:[B

    .line 54
    return-void
.end method
