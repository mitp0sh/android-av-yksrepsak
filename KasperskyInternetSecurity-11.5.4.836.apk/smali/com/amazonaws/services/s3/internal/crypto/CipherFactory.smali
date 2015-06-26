.class public Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
.super Ljava/lang/Object;
.source "CipherFactory.java"


# instance fields
.field private cipherMode:I

.field private cryptoProvider:Ljava/security/Provider;

.field private initVectorBytes:[B

.field private symmetricKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V
    .locals 0
    .param p1, "symmetricKey"    # Ljavax/crypto/SecretKey;
    .param p2, "cipherMode"    # I
    .param p3, "initVectorBytes"    # [B
    .param p4, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->symmetricKey:Ljavax/crypto/SecretKey;

    .line 55
    iput p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cipherMode:I

    .line 56
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    .line 57
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cryptoProvider:Ljava/security/Provider;

    .line 58
    return-void
.end method


# virtual methods
.method public createCipher()Ljavax/crypto/Cipher;
    .locals 5

    .prologue
    .line 69
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->symmetricKey:Ljavax/crypto/SecretKey;

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cipherMode:I

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cryptoProvider:Ljava/security/Provider;

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    invoke-static {v1, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 73
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    .line 75
    :cond_0
    return-object v0
.end method
