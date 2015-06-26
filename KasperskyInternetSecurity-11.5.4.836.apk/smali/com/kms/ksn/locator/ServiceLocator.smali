.class public final Lcom/kms/ksn/locator/ServiceLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/kms/ksn/locator/ServiceLocator;


# instance fields
.field private final b:I

.field private final c:Z


# direct methods
.method private constructor <init>(Lcom/kms/ksn/locator/SystemSettings;Z)V
    .locals 6

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/kms/ksn/locator/SystemSettings;->getDataDir()Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ksn_client2.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ksn_client2.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lbr;->a(Ljava/io/File;Ljava/io/File;)V

    .line 44
    new-instance v2, Ljava/io/File;

    const-string v3, "ksn_client2.xms"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v0, 0x0

    .line 50
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/kms/ksn/locator/ServiceLocator;->c:Z

    .line 52
    invoke-static {p1}, Lcom/kms/ksn/locator/ServiceLocator;->init(Lcom/kms/ksn/locator/SystemSettings;)I

    move-result v0

    iput v0, p0, Lcom/kms/ksn/locator/ServiceLocator;->b:I

    .line 53
    iget v0, p0, Lcom/kms/ksn/locator/ServiceLocator;->b:I

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize ServiceLocator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a()Lcom/kms/ksn/locator/ServiceLocator;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/kms/ksn/locator/ServiceLocator;->a:Lcom/kms/ksn/locator/ServiceLocator;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ServiceLocator was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    sget-object v0, Lcom/kms/ksn/locator/ServiceLocator;->a:Lcom/kms/ksn/locator/ServiceLocator;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LsK;Z)V
    .locals 4

    .prologue
    .line 65
    const-class v1, Lcom/kms/ksn/locator/ServiceLocator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kms/ksn/locator/ServiceLocator;->a:Lcom/kms/ksn/locator/ServiceLocator;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already inited"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 69
    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kms/ksn/locator/SystemSettings;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LsK;)V

    .line 70
    new-instance v0, Lcom/kms/ksn/locator/ServiceLocator;

    invoke-static {}, Lcom/kms/ksn/locator/SystemSettings;->getInstance()Lcom/kms/ksn/locator/SystemSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/kms/ksn/locator/ServiceLocator;-><init>(Lcom/kms/ksn/locator/SystemSettings;Z)V

    sput-object v0, Lcom/kms/ksn/locator/ServiceLocator;->a:Lcom/kms/ksn/locator/ServiceLocator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit v1

    return-void
.end method

.method public static c()Lcom/kms/ksn/locator/SystemSettings;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/kms/ksn/locator/SystemSettings;->getInstance()Lcom/kms/ksn/locator/SystemSettings;

    move-result-object v0

    return-object v0
.end method

.method private static native init(Lcom/kms/ksn/locator/SystemSettings;)I
.end method

.method private static native release(I)V
.end method

.method private static native updateSettings(I)V
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x2

    .line 78
    iget-boolean v1, p0, Lcom/kms/ksn/locator/ServiceLocator;->c:Z

    if-eqz v1, :cond_7

    .line 79
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "KSNM"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 86
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ksn_client2.xms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/io/File;

    const-string v4, "ksn_client2.xms"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "ksn_helper.xms"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/io/File;

    const-string v4, "ksn_helper.xms"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "ksncliwin32keys.dat"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/io/File;

    const-string v4, "ksncliwin32keys.dat"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    :cond_6
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/kms/ksn/locator/SystemSettings;->getInstance()Lcom/kms/ksn/locator/SystemSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kms/ksn/locator/SystemSettings;->getDataDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {v1, v2}, Lbh;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    .line 118
    :try_start_0
    iget v0, p0, Lcom/kms/ksn/locator/ServiceLocator;->b:I

    invoke-static {v0}, Lcom/kms/ksn/locator/ServiceLocator;->updateSettings(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    invoke-static {v1}, Lbh;->a(Ljava/util/List;)V

    .line 125
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 120
    :catch_0
    move-exception v0

    invoke-static {v1, v2}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 121
    const/4 v0, 0x6

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/kms/ksn/locator/ServiceLocator;->b:I

    return v0
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 131
    :try_start_0
    iget v0, p0, Lcom/kms/ksn/locator/ServiceLocator;->b:I

    invoke-static {v0}, Lcom/kms/ksn/locator/ServiceLocator;->release(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
