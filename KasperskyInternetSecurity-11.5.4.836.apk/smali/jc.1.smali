.class final Ljc;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private synthetic a:LiY;


# direct methods
.method public constructor <init>(LiY;)V
    .locals 1

    .prologue
    .line 450
    iput-object p1, p0, Ljc;->a:LiY;

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 453
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 457
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 458
    if-eqz p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Ljc;->a:LiY;

    invoke-static {v0}, LiY;->a(LiY;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lji;->b:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "thread_id"

    aput-object v4, v2, v6

    const-string v4, "address"

    aput-object v4, v2, v7

    const/4 v4, 0x3

    const-string v5, "body"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "read"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "date"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    new-instance v1, Ljh;

    iget-object v2, p0, Ljc;->a:LiY;

    invoke-static {v2}, LiY;->a(LiY;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ljh;-><init>(Landroid/content/Context;J)V

    .line 471
    const-string v2, "thread_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Ljh;->e:J

    .line 472
    const-string v2, "address"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljh;->b:Ljava/lang/String;

    .line 473
    iput v7, v1, Ljh;->c:I

    .line 474
    const-string v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljh;->d:Ljava/lang/String;

    .line 475
    const-string v2, "date"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Ljh;->f:J

    .line 481
    iget-object v2, p0, Ljc;->a:LiY;

    invoke-static {v2, v1}, LiY;->a(LiY;Ljd;)V

    .line 482
    invoke-virtual {v1}, Ljh;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "read"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 493
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 494
    const-string v2, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    :try_start_0
    iget-object v2, p0, Ljc;->a:LiY;

    invoke-static {v2}, LiY;->a(LiY;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lji;->a:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "thread_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "thread_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
