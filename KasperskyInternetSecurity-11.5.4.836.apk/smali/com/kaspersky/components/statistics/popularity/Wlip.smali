.class public Lcom/kaspersky/components/statistics/popularity/Wlip;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;


# instance fields
.field private c:I

.field private d:[B

.field private e:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/kaspersky/components/statistics/popularity/Wlip;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip;->a:Ljava/lang/String;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha512:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha384:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha256:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha1:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Md5:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip;->b:[Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/kaspersky/components/statistics/popularity/Wlip;->c:I

    .line 28
    return-void
.end method

.method private a(Ljava/security/cert/X509Certificate;)V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlip;->d:[B

    .line 101
    sget-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Empty:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    iput-object v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlip;->e:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    .line 102
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/kaspersky/components/statistics/popularity/Wlip;->b:[Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 104
    :try_start_0
    sget-object v1, Lcom/kaspersky/components/statistics/popularity/Wlip;->b:[Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aget-object v1, v1, v0

    # getter for: Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->mHashAlg:Ljava/lang/String;
    invoke-static {v1}, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->access$100(Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 107
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iput-object v1, p0, Lcom/kaspersky/components/statistics/popularity/Wlip;->d:[B

    .line 108
    sget-object v1, Lcom/kaspersky/components/statistics/popularity/Wlip;->b:[Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/kaspersky/components/statistics/popularity/Wlip;->e:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    return-void

    .line 102
    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static native send(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;[BI[B)Z
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/pm/PackageInfo;[B[B)Z
    .locals 12

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 33
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 36
    if-nez p3, :cond_4

    .line 37
    invoke-static {v1}, Lcom/kaspersky/components/statistics/popularity/Wlips;->getApkMd5(Ljava/lang/String;)[B

    move-result-object v5

    .line 39
    :goto_0
    if-nez p4, :cond_3

    .line 40
    invoke-static {v1}, Lcom/kaspersky/components/statistics/popularity/Wlips;->getDexMd5(Ljava/lang/String;)[B

    move-result-object v6

    .line 43
    :goto_1
    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_2
    return v0

    .line 50
    :cond_1
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 54
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 55
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 56
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 61
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 64
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v9

    .line 67
    invoke-direct {p0, v0}, Lcom/kaspersky/components/statistics/popularity/Wlip;->a(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :cond_2
    :goto_3
    const-string v3, ""

    .line 79
    :try_start_1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 82
    :goto_4
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlip;->c:I

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/kaspersky/components/statistics/popularity/Wlip;->e:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    # getter for: Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->mValue:I
    invoke-static {v10}, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->access$000(Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;)I

    move-result v10

    iget-object v11, p0, Lcom/kaspersky/components/statistics/popularity/Wlip;->d:[B

    invoke-static/range {v0 .. v11}, Lcom/kaspersky/components/statistics/popularity/Wlip;->send(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;[BI[B)Z

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    goto :goto_1

    :cond_4
    move-object v5, p3

    goto :goto_0
.end method
