.class final LrJ;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashSet;

.field private synthetic b:LrF;


# direct methods
.method public constructor <init>(LrF;)V
    .locals 1

    .prologue
    .line 324
    iput-object p1, p0, LrJ;->b:LrF;

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 326
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 329
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LrJ;->a:Ljava/util/HashSet;

    .line 330
    iget-object v0, p0, LrJ;->b:LrF;

    invoke-static {v0}, LrF;->c(LrF;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 333
    :try_start_1
    sget-object v1, Lcom/kms/kmsshared/Utils;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 339
    :goto_0
    if-nez v1, :cond_0

    .line 352
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v6

    goto :goto_0

    .line 344
    :cond_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    :cond_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 347
    iget-object v0, p0, LrJ;->a:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 351
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final onChange(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 357
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 358
    if-eqz p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    :try_start_0
    iget-object v0, p0, LrJ;->b:LrF;

    invoke-static {v0}, LrF;->c(LrF;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kms/kmsshared/Utils;->a:Landroid/net/Uri;

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

    .line 373
    :goto_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 375
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 377
    :cond_2
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 378
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, p0, LrJ;->a:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 380
    new-instance v1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    invoke-direct {v1, v3, v4}, Lcom/kms/kmsshared/cellmon/SMSEvent;-><init>(J)V

    .line 381
    const-string v3, "thread_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    .line 382
    const-string v3, "address"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    .line 383
    const/4 v3, 0x1

    iput v3, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    .line 384
    const-string v3, "body"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    .line 385
    const-string v3, "date"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    .line 391
    iget-object v3, p0, LrJ;->b:LrF;

    invoke-virtual {v3, v1}, LrF;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    .line 393
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 396
    :cond_4
    iput-object v2, p0, LrJ;->a:Ljava/util/HashSet;

    .line 397
    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_1

    .line 396
    :catchall_0
    move-exception v1

    iput-object v2, p0, LrJ;->a:Ljava/util/HashSet;

    .line 397
    if-eqz v0, :cond_5

    .line 398
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method
