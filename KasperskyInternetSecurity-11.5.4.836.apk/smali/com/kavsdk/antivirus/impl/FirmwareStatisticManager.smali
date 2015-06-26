.class public Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;->a:Ljava/lang/String;

    .line 98
    const-class v0, Lhe;

    invoke-static {v0}, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;->init(Ljava/lang/Class;)Z

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lht;->a()Lht;

    move-result-object v0

    invoke-virtual {v0}, Lht;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    invoke-virtual {v0}, Lhd;->start()V

    .line 53
    :cond_0
    return-void
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;->d()V

    return-void
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;->e()Lhe;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/ksn/locator/ServiceLocator;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;->send(Lhe;I)Z

    .line 65
    return-void
.end method

.method private static e()Lhe;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lhe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhe;-><init>(B)V

    .line 70
    :try_start_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mDeviceName:[B

    .line 71
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mDisplay:[B

    .line 72
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mFingerprint:[B

    .line 73
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mId:[B

    .line 74
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mManufacturer:[B

    .line 75
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mModel:[B

    .line 76
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mProduct:[B

    .line 77
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mType:[B

    .line 78
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mCodename:[B

    .line 79
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mIncremental:[B

    .line 80
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lhe;->mRelease:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :goto_0
    :try_start_1
    invoke-static {}, Lip;->a()Lip;

    move-result-object v1

    invoke-virtual {v1}, Lip;->b()Z

    move-result v1

    iput-boolean v1, v0, Lhe;->mIsRooted:Z
    :try_end_1
    .catch Lcom/kavsdk/license/SdkLicenseViolationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static native init(Ljava/lang/Class;)Z
.end method

.method private static native send(Lhe;I)Z
.end method
