.class public final Lib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhC;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    aput-object v2, v0, v7

    aput-object v2, v0, v3

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    iput-object v0, p0, Lib;->a:[Ljava/lang/String;

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v5

    const-string v1, "775"

    aput-object v1, v0, v6

    aput-object v2, v0, v7

    iput-object v0, p0, Lib;->b:[Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "testport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {}, LiS;->a()LiT;

    move-result-object v0

    .line 69
    invoke-interface {v0}, LiT;->a()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lib;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    new-instance v2, Ljava/io/File;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v1, v4, :cond_1

    const-string v1, "libscan_kavd_pie.so"

    :goto_0
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    const-string v2, "/system/lib"

    .line 79
    new-instance v1, Ljava/io/File;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v0, v4, :cond_2

    const-string v0, "libscan_kavd_pie.so"

    :goto_1
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    .line 83
    :goto_2
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 84
    iget-object v0, p0, Lib;->a:[Ljava/lang/String;

    aput-object v1, v0, v6

    .line 85
    iget-object v0, p0, Lib;->a:[Ljava/lang/String;

    aput-object v3, v0, v7

    .line 86
    invoke-direct {p0, p1}, Lib;->b(Landroid/content/Context;)V

    .line 87
    return-void

    .line 73
    :cond_1
    const-string v1, "libscan_kavd.so"

    goto :goto_0

    .line 79
    :cond_2
    const-string v0, "libscan_kavd.so"

    goto :goto_1

    :cond_3
    move-object v1, v0

    move-object v0, v2

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 119
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 126
    invoke-static {}, Lht;->a()Lht;

    move-result-object v1

    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {v1}, Lht;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :cond_0
    invoke-virtual {v1}, Lht;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    or-int/lit8 v0, v0, 0x2

    .line 134
    :cond_1
    invoke-virtual {v1}, Lht;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    or-int/lit8 v0, v0, 0x4

    .line 138
    :cond_2
    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->c()Lcom/kms/ksn/locator/SystemSettings;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/4 v3, 0x3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 141
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1}, LbB;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 142
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/4 v3, 0x5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 143
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v1}, Lcom/kms/ksn/locator/SystemSettings;->getDataDir()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 144
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v1}, Lcom/kms/ksn/locator/SystemSettings;->getProductType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 145
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v1}, Lcom/kms/ksn/locator/SystemSettings;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 146
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v1}, Lcom/kms/ksn/locator/SystemSettings;->getPCID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 147
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v1}, Lcom/kms/ksn/locator/SystemSettings;->getUUID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 148
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {v1}, Lcom/kms/ksn/locator/SystemSettings;->getTicketFilePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 149
    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/16 v3, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 150
    iget-object v0, p0, Lib;->a:[Ljava/lang/String;

    const/16 v2, 0xd

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 151
    iget-object v0, p0, Lib;->a:[Ljava/lang/String;

    const/16 v2, 0xe

    invoke-virtual {v1}, Lcom/kms/ksn/locator/SystemSettings;->getInitPipePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 152
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lib;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lib;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 102
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lib;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lib;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lib;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 107
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lib;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 110
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v1, p0, Lib;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 114
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
