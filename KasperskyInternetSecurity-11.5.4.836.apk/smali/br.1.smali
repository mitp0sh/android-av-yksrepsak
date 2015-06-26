.class public final Lbr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;JZ)Ljava/io/File;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 105
    cmp-long v0, v0, p2

    if-gez v0, :cond_1

    .line 106
    new-instance v0, Lcom/kaspersky/components/utils/NotEnoughDiskSpaceException;

    invoke-direct {v0}, Lcom/kaspersky/components/utils/NotEnoughDiskSpaceException;-><init>()V

    throw v0

    .line 108
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    if-eqz p4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 112
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 113
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-object v0

    .line 23
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 24
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 30
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 32
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    invoke-static {v1, v0}, LbB;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 40
    return-void

    .line 36
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static a([BLjava/io/File;)V
    .locals 2

    .prologue
    .line 82
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 84
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 85
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 75
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 79
    :cond_1
    return-void
.end method
