.class public Lcom/amazonaws/services/s3/model/CryptoConfiguration;
.super Ljava/lang/Object;
.source "CryptoConfiguration.java"


# instance fields
.field private cryptoProvider:Ljava/security/Provider;

.field private storageMode:Lcom/amazonaws/services/s3/model/CryptoStorageMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->storageMode:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->cryptoProvider:Ljava/security/Provider;

    .line 42
    return-void
.end method


# virtual methods
.method public getCryptoProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->cryptoProvider:Ljava/security/Provider;

    return-object v0
.end method

.method public getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->storageMode:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    return-object v0
.end method

.method public setCryptoProvider(Ljava/security/Provider;)V
    .locals 0
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->cryptoProvider:Ljava/security/Provider;

    .line 84
    return-void
.end method

.method public setStorageMode(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)V
    .locals 0
    .param p1, "storageMode"    # Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->storageMode:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    .line 52
    return-void
.end method

.method public withCryptoProvider(Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->cryptoProvider:Ljava/security/Provider;

    .line 96
    return-object p0
.end method

.method public withStorageMode(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0
    .param p1, "storageMode"    # Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->storageMode:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    .line 63
    return-object p0
.end method
