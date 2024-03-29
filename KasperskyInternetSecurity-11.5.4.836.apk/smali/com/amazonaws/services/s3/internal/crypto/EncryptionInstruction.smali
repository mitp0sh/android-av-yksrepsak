.class public Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
.super Ljava/lang/Object;
.source "EncryptionInstruction.java"


# instance fields
.field private final encryptedSymmetricKey:[B

.field private final materialsDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final symmetricCipher:Ljavax/crypto/Cipher;

.field private symmetricCipherFactory:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

.field private final symmetricKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    .locals 1
    .param p2, "encryptedSymmetricKey"    # [B
    .param p3, "symmetricKey"    # Ljavax/crypto/SecretKey;
    .param p4, "symmetricCipherFactory"    # Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljavax/crypto/SecretKey;",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->materialsDescription:Ljava/util/Map;

    .line 55
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->encryptedSymmetricKey:[B

    .line 56
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->symmetricKey:Ljavax/crypto/SecretKey;

    .line 57
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->symmetricCipherFactory:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    .line 58
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->createCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->symmetricCipher:Ljavax/crypto/Cipher;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Ljavax/crypto/Cipher;)V
    .locals 0
    .param p2, "encryptedSymmetricKey"    # [B
    .param p3, "symmetricKey"    # Ljavax/crypto/SecretKey;
    .param p4, "symmetricCipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljavax/crypto/SecretKey;",
            "Ljavax/crypto/Cipher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->materialsDescription:Ljava/util/Map;

    .line 48
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->encryptedSymmetricKey:[B

    .line 49
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->symmetricKey:Ljavax/crypto/SecretKey;

    .line 50
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->symmetricCipher:Ljavax/crypto/Cipher;

    .line 51
    return-void
.end method


# virtual methods
.method public getCipherFactory()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->symmetricCipherFactory:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    return-object v0
.end method

.method public getEncryptedSymmetricKey()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->encryptedSymmetricKey:[B

    return-object v0
.end method

.method public getMaterialsDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->materialsDescription:Ljava/util/Map;

    return-object v0
.end method

.method public getSymmetricCipher()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->symmetricCipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->symmetricKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method
