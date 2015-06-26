.class public final Ldk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/kaspersky/kts/antitheft/AtMobileStatuses;
    .locals 4

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {}, Ldk;->b()Ljava/io/File;

    move-result-object v0

    .line 21
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 25
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    :goto_0
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;-><init>()V

    .line 35
    :cond_0
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 26
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/kaspersky/kts/antitheft/AtMobileStatuses;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Ldk;->b()Ljava/io/File;

    move-result-object v0

    .line 41
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 42
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b()Ljava/io/File;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "at_statuses.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
