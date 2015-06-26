.class public final Lby;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 25
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 644 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 95
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;Lt;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    if-nez p0, :cond_0

    move v0, v1

    .line 88
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 54
    const/4 v4, 0x0

    .line 56
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/16 v0, 0x1000

    :try_start_1
    new-array v5, v0, [B

    move v4, v1

    move v0, v1

    .line 60
    :cond_1
    if-eqz p2, :cond_2

    .line 61
    invoke-interface {p2, v4}, Lt;->a(I)Z

    move-result v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    :cond_2
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 67
    if-lez v6, :cond_3

    .line 68
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :cond_3
    add-int/2addr v4, v6

    .line 71
    if-gtz v6, :cond_1

    .line 79
    :cond_4
    invoke-static {v3}, LcF;->a(Ljava/io/Closeable;)V

    .line 82
    if-eqz p2, :cond_5

    .line 83
    invoke-interface {p2, v1}, Lt;->a(Z)V

    .line 85
    :cond_5
    if-eqz v0, :cond_7

    move v0, v1

    .line 86
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    move-object v2, v4

    .line 73
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    if-eqz p2, :cond_6

    .line 75
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lt;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 79
    :cond_6
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_2
    invoke-static {v3}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_7
    move v0, v2

    .line 88
    goto :goto_0

    .line 79
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 72
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public static b(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 36
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 43
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/File;Lt;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-static {p0, p1, p2}, Lby;->a(Ljava/io/InputStream;Ljava/io/File;Lt;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    if-eqz p0, :cond_2

    .line 115
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_2
    invoke-static {p1}, Lby;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
