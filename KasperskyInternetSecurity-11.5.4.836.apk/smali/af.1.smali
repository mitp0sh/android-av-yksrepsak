.class public final Laf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai;


# instance fields
.field private final a:Lah;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lah;

    invoke-direct {v0, p0, p1}, Lah;-><init>(Laf;Landroid/content/Context;)V

    iput-object v0, p0, Laf;->a:Lah;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(IJ)Ljava/util/List;
    .locals 12

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 198
    .line 199
    iget-object v0, p0, Laf;->a:Lah;

    invoke-virtual {v0}, Lah;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 200
    const-string v1, "bby_ipm_message_settings"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bby_ipm_dipslay_message_id"

    aput-object v3, v2, v7

    const-string v3, "bby_message_start_date"

    aput-object v3, v2, v8

    const-string v3, "bby_message_stop_date"

    aput-object v3, v2, v4

    const-string v3, "bby_message_SKU"

    aput-object v3, v2, v6

    const-string v3, "? BETWEEN bby_message_start_date AND bby_message_stop_date AND bby_ipm_dipslay_message_type=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v6, "0"

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 209
    if-eqz v11, :cond_2

    .line 211
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 215
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 216
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 217
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 218
    new-instance v1, Lag;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lag;-><init>(Laf;JJJLjava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move-object v5, v10

    .line 222
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 226
    return-object v5

    .line 222
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(J)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 34
    iget-object v0, p0, Laf;->a:Lah;

    invoke-virtual {v0}, Lah;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 36
    const-string v2, "bby_message_seen_by_user"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string v2, "bby_ipm_message_settings"

    const-string v3, "bby_ipm_dipslay_message_id=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 40
    return-void
.end method

.method public final a(JIJJLjava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Laf;->a:Lah;

    invoke-virtual {v0}, Lah;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 45
    const-string v2, "bby_ipm_dipslay_message_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    const-string v2, "bby_ipm_dipslay_message_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v2, "bby_message_start_date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    const-string v2, "bby_message_stop_date"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    const-string v2, "bby_message_seen_by_user"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    const-string v2, "bby_message_SKU"

    invoke-virtual {v1, v2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "bby_ipm_message_settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 52
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    return-void
.end method

.method public final a(IJJLjava/lang/String;)Z
    .locals 10

    .prologue
    .line 91
    const/4 v9, 0x0

    .line 92
    iget-object v0, p0, Laf;->a:Lah;

    invoke-virtual {v0}, Lah;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    aput-object p6, v4, v1

    .line 98
    const-string v1, "bby_ipm_message_settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "bby_ipm_dipslay_message_id"

    aput-object v5, v2, v3

    const-string v3, "bby_message_start_date=? AND bby_message_stop_date=? AND bby_ipm_dipslay_message_type=? AND bby_message_SKU=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 104
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 107
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    return v1

    .line 103
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v9

    goto :goto_1
.end method

.method public final a(IJLjava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 56
    .line 57
    iget-object v0, p0, Laf;->a:Lah;

    invoke-virtual {v0}, Lah;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    const-string v1, "bby_ipm_message_settings"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "bby_ipm_dipslay_message_id"

    aput-object v3, v2, v10

    const-string v3, "? BETWEEN bby_message_start_date AND bby_message_stop_date AND bby_ipm_dipslay_message_type=? AND bby_message_SKU=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const/4 v6, 0x2

    aput-object p4, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v9

    .line 65
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 67
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 68
    return v1

    :cond_0
    move v1, v10

    .line 64
    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_1
.end method

.method public final b(J)V
    .locals 6

    .prologue
    .line 136
    const-string v0, "bby_ipm_dipslay_message_id = ?"

    .line 137
    iget-object v1, p0, Laf;->a:Lah;

    invoke-virtual {v1}, Lah;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 138
    const-string v2, "bby_ipm_message_settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 141
    return-void
.end method

.method public final c(J)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 144
    .line 145
    iget-object v0, p0, Laf;->a:Lah;

    invoke-virtual {v0}, Lah;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    const-string v1, "bby_ipm_message_settings"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "bby_ipm_dipslay_message_id"

    aput-object v3, v2, v7

    const-string v3, "bby_message_stop_date<=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_2

    .line 152
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 159
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 163
    return-object v5

    .line 159
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
