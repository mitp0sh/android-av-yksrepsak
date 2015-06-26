.class public final LiN;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()I
    .locals 1

    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 25
    .line 29
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v6

    .line 33
    :cond_1
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 35
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const-string v3, "_data = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 43
    if-eqz v2, :cond_7

    .line 45
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 46
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    const-string v0, "_data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 49
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 51
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 52
    if-eqz v2, :cond_0

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 55
    :cond_2
    :try_start_2
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 56
    const-string v3, "external"

    invoke-static {v3, v0, v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    move-object v0, v6

    .line 72
    :goto_1
    if-eqz v2, :cond_3

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    move-object v6, v0

    .line 76
    goto :goto_0

    .line 58
    :cond_4
    :try_start_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 59
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    move-object v0, v6

    .line 64
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_1

    .line 66
    :catch_1
    move-exception v0

    .line 72
    if-eqz v6, :cond_6

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_2

    .line 72
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 72
    :catchall_1
    move-exception v0

    move-object v6, v2

    goto :goto_3

    :cond_6
    move-object v0, v6

    goto :goto_2

    :cond_7
    move-object v0, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 97
    if-nez v0, :cond_0

    invoke-static {}, LiN;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LiN;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 101
    :cond_0
    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    invoke-static {p0, p1}, LiN;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 135
    if-nez v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 142
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 143
    const-string v5, "media_type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method
