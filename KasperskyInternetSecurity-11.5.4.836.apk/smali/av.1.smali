.class public final Lav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laq;


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private final a:Lar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lav;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lar;

    invoke-direct {v0, p1}, Lar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lav;->a:Lar;

    .line 21
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lat;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 109
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 110
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lar;->a(I)Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    move-result-object v3

    .line 111
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 114
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lar;->b(I)Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    move-result-object v7

    .line 115
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 116
    :goto_0
    new-instance v0, Lat;

    int-to-long v1, v1

    invoke-direct/range {v0 .. v8}, Lat;-><init>(JLcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;Z)V

    return-object v0

    :cond_0
    move v8, v0

    .line 115
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;Z)J
    .locals 5

    .prologue
    .line 27
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 28
    const-string v0, "ipm_severity"

    invoke-static {p1}, Lar;->a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const-string v0, "ipm_title"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "ipm_announcment"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "ipm_content"

    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "ipm_content_type"

    invoke-static {p5}, Lar;->a(Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    const-string v2, "ipm_message_force_show"

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    sget-object v2, Lav;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v0, p0, Lav;->a:Lar;

    invoke-virtual {v0}, Lar;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    const-string v3, "ipm_display_content"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 40
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    return-wide v3

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(J)Lat;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 58
    sget-object v10, Lav;->b:Ljava/lang/Object;

    monitor-enter v10

    .line 59
    :try_start_0
    iget-object v0, p0, Lav;->a:Lar;

    invoke-virtual {v0}, Lar;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    const-string v1, "ipm_display_content"

    const/4 v2, 0x0

    const-string v3, "ipm_dipslay_message_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    invoke-static {v2}, Lav;->a(Landroid/database/Cursor;)Lat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 73
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v10

    move-object v0, v1

    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 68
    monitor-exit v10

    move-object v0, v9

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1

    .line 76
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final a()Ljava/util/List;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 82
    sget-object v10, Lav;->b:Ljava/lang/Object;

    monitor-enter v10

    .line 83
    :try_start_0
    iget-object v0, p0, Lav;->a:Lar;

    invoke-virtual {v0}, Lar;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    const-string v1, "ipm_display_content"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    :cond_0
    if-eqz v2, :cond_1

    .line 89
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 92
    monitor-exit v10

    move-object v0, v9

    .line 105
    :goto_0
    return-object v0

    .line 94
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :cond_3
    :try_start_1
    invoke-static {v2}, Lav;->a(Landroid/database/Cursor;)Lat;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 101
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 102
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    monitor-exit v10

    move-object v0, v1

    .line 105
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 102
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public final b(J)V
    .locals 7

    .prologue
    .line 47
    const-string v0, "ipm_dipslay_message_id = ?"

    .line 48
    sget-object v1, Lav;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v2, p0, Lav;->a:Lar;

    invoke-virtual {v2}, Lar;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 50
    const-string v3, "ipm_display_content"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
