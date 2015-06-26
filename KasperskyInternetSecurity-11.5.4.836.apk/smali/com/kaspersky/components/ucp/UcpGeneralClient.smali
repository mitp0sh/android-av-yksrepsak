.class public Lcom/kaspersky/components/ucp/UcpGeneralClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 84
    invoke-static {}, Lcom/kaspersky/components/ucp/UcpGeneralClient;->nativeClassInit()V

    .line 85
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/kaspersky/components/ucp/UcpGeneralClient;->init(I)V

    .line 34
    invoke-static {}, Lcom/kaspersky/components/ucp/UcpGeneralClient;->c()V

    .line 35
    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    const-string v1, "ucp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v1, "ucp.web_portal"

    invoke-interface {v0, v1}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 47
    :try_start_0
    const-string v2, "ucp"

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 48
    const-string v2, "ucp"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 50
    array-length v6, v4

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v4, v0

    .line 51
    const/4 v2, 0x0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "ucp/"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 55
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-static {v8, v1}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :try_start_3
    invoke-static {v8}, LcF;->a(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v8}, LcF;->a(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Resources corrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 65
    :cond_0
    return-void

    .line 58
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public native setLicenseInfoObserver(I)V
.end method
