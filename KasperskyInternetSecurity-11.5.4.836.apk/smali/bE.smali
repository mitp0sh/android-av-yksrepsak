.class public final LbE;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 45
    invoke-static {v0, p1}, LbE;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 24
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LbE;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    .line 31
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :try_start_3
    invoke-static {v3, v2}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 33
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 34
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v2

    goto :goto_1

    .line 38
    :cond_2
    invoke-static {v3}, LcF;->a(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 38
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_0
    return-void
.end method
