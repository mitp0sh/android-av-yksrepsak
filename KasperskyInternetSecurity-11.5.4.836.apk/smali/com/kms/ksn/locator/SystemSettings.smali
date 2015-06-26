.class public Lcom/kms/ksn/locator/SystemSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TICKET_HEADER_FILE_NAME:Ljava/lang/String; = "ticket_hdr.dat"

.field private static final INIT_PIPE_NAME:Ljava/lang/String; = "init_pipe"

.field private static final PCID_HASH_ALGORITHM:Ljava/lang/String; = "MD5"

.field private static volatile sInstance:Lcom/kms/ksn/locator/SystemSettings;


# instance fields
.field private final mDataDir:Ljava/lang/String;

.field private mInitPipePath:Ljava/lang/String;

.field private final mPCID:Ljava/lang/String;

.field private final mProductType:Ljava/lang/String;

.field private mProductVersion:Ljava/lang/String;

.field private final mTicketFilePath:Ljava/lang/String;

.field private mUUID:Ljava/lang/String;

.field private mUcpSettings:LsK;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LsK;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/kms/ksn/locator/SystemSettings;->mDataDir:Ljava/lang/String;

    .line 38
    const-string v0, "MD5"

    invoke-static {p1, v0}, LbB;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mPCID:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ticket_hdr.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mTicketFilePath:Ljava/lang/String;

    .line 40
    invoke-static {p1}, LsJ;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUUID:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/kms/ksn/locator/SystemSettings;->mProductType:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/kms/ksn/locator/SystemSettings;->mProductVersion:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "init_pipe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mInitPipePath:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static getInstance()Lcom/kms/ksn/locator/SystemSettings;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/kms/ksn/locator/SystemSettings;->sInstance:Lcom/kms/ksn/locator/SystemSettings;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "init() is not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    sget-object v0, Lcom/kms/ksn/locator/SystemSettings;->sInstance:Lcom/kms/ksn/locator/SystemSettings;

    return-object v0
.end method

.method static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LsK;)V
    .locals 6

    .prologue
    .line 26
    new-instance v0, Lcom/kms/ksn/locator/SystemSettings;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kms/ksn/locator/SystemSettings;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LsK;)V

    sput-object v0, Lcom/kms/ksn/locator/SystemSettings;->sInstance:Lcom/kms/ksn/locator/SystemSettings;

    .line 27
    return-void
.end method


# virtual methods
.method public getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInventoryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->k()Lcom/kaspersky/components/ucp/UcpDeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/UcpDeviceType;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public getDisUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitPipePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mInitPipePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mPCID:Ljava/lang/String;

    return-object v0
.end method

.method public getPortalRealmUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mProductType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mProductVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mTicketFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getUcpDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUcpServiceId()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->h()Lcom/kaspersky/components/ucp/UcpServiceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/UcpServiceId;->getUcpServiceId()I

    move-result v0

    return v0
.end method

.method public getUisRealmUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUisUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kms/ksn/locator/SystemSettings;->mUcpSettings:LsK;

    invoke-virtual {v0}, LsK;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kms/ksn/locator/SystemSettings;->mProductVersion:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kms/ksn/locator/SystemSettings;->mUUID:Ljava/lang/String;

    .line 65
    return-void
.end method
