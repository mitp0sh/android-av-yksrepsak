.class final Ljb;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashSet;

.field private synthetic b:LiY;


# direct methods
.method public constructor <init>(LiY;)V
    .locals 1

    .prologue
    .line 367
    iput-object p1, p0, Ljb;->b:LiY;

    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 369
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 400
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 401
    if-eqz p1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    :try_start_0
    iget-object v0, p0, Ljb;->b:LiY;

    invoke-static {v0}, LiY;->a(LiY;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lji;->a:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "body"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 416
    :goto_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 418
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    :cond_2
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 421
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v1, p0, Ljb;->a:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 423
    new-instance v1, Ljh;

    iget-object v5, p0, Ljb;->b:LiY;

    invoke-static {v5}, LiY;->a(LiY;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v3, v4}, Ljh;-><init>(Landroid/content/Context;J)V

    .line 424
    const-string v3, "thread_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Ljh;->e:J

    .line 425
    const-string v3, "address"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljh;->b:Ljava/lang/String;

    .line 426
    const/4 v3, 0x1

    iput v3, v1, Ljh;->c:I

    .line 427
    const-string v3, "body"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljh;->d:Ljava/lang/String;

    .line 428
    const-string v3, "date"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Ljh;->f:J

    .line 434
    iget-object v3, p0, Ljb;->b:LiY;

    invoke-static {v3, v1}, LiY;->a(LiY;Ljd;)V

    .line 436
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 439
    :cond_4
    iput-object v2, p0, Ljb;->a:Ljava/util/HashSet;

    .line 440
    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_1

    .line 439
    :catchall_0
    move-exception v1

    iput-object v2, p0, Ljb;->a:Ljava/util/HashSet;

    .line 440
    if-eqz v0, :cond_5

    .line 441
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method
