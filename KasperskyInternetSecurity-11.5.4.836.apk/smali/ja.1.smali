.class final Lja;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashSet;

.field private synthetic b:LiY;


# direct methods
.method public constructor <init>(LiY;)V
    .locals 1

    .prologue
    .line 299
    iput-object p1, p0, Lja;->b:LiY;

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 301
    return-void
.end method


# virtual methods
.method public final declared-synchronized onChange(Z)V
    .locals 6

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    if-eqz p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 326
    :cond_1
    :try_start_1
    iget-object v0, p0, Lja;->b:LiY;

    invoke-static {v0}, LiY;->a(LiY;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 330
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    if-eqz v1, :cond_0

    .line 333
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    :cond_2
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 336
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lja;->a:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 338
    new-instance v0, Ljk;

    iget-object v5, p0, Lja;->b:LiY;

    invoke-static {v5}, LiY;->a(LiY;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Ljk;-><init>(Landroid/content/Context;)V

    .line 339
    const/4 v5, 0x3

    iput v5, v0, Ljk;->c:I

    .line 340
    const-string v5, "number"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Ljk;->b:Ljava/lang/String;

    .line 341
    iget-object v5, v0, Ljk;->b:Ljava/lang/String;

    invoke-static {v5}, LiW;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 342
    const-string v5, "-2"

    iput-object v5, v0, Ljk;->b:Ljava/lang/String;

    .line 344
    :cond_3
    const-string v5, "type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Ljk;->e:I

    .line 345
    iput-wide v3, v0, Ljk;->f:J

    .line 350
    iget-object v3, p0, Lja;->b:LiY;

    invoke-static {v3, v0}, LiY;->a(LiY;Ljd;)V

    .line 352
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 355
    :cond_5
    :try_start_3
    iput-object v2, p0, Lja;->a:Ljava/util/HashSet;

    .line 356
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 355
    :catchall_1
    move-exception v0

    :try_start_4
    iput-object v2, p0, Lja;->a:Ljava/util/HashSet;

    .line 356
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
