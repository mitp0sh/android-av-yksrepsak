.class public final LqP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LqP;->a:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private static a(JJJ)J
    .locals 2

    .prologue
    .line 85
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 20
    iget-object v0, p0, LqP;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 23
    invoke-static {}, Lcom/kms/kmsshared/Utils;->k()J

    move-result-wide v0

    .line 24
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v2, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v2}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v2

    invoke-interface {v2}, LsY;->a()LaC;

    move-result-object v2

    invoke-interface {v2}, LaC;->f()J

    move-result-wide v2

    .line 25
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v4

    invoke-virtual {v4}, Lse;->w()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 27
    invoke-static/range {v0 .. v5}, LqP;->a(JJJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 32
    :try_start_0
    sget-object v1, Lcom/kms/kmsshared/Utils;->a:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "body"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "date between ? and ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 46
    :goto_0
    if-eqz v1, :cond_3

    .line 48
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, LqP;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 50
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->o()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->a()LrF;

    move-result-object v0

    .line 55
    :cond_0
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 56
    new-instance v4, Lcom/kms/kmsshared/cellmon/SMSEvent;

    invoke-direct {v4, v2, v3}, Lcom/kms/kmsshared/cellmon/SMSEvent;-><init>(J)V

    .line 57
    const-string v5, "thread_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    .line 58
    const-string v5, "address"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    .line 59
    const/4 v5, 0x0

    iput v5, v4, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    .line 60
    const-string v5, "body"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    .line 61
    const-string v5, "date"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    .line 62
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/kms/kmsshared/cellmon/SMSEvent;->mMissedEvent:Z

    .line 68
    invoke-virtual {v0, v4}, LrF;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    .line 69
    invoke-virtual {v4}, Lcom/kms/kmsshared/cellmon/SMSEvent;->isBlocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    invoke-static {v7, v2, v3}, LqR;->a(Landroid/content/ContentResolver;J)I

    .line 71
    invoke-virtual {v0, v4}, LrF;->a(Lcom/kms/kmsshared/cellmon/SMSEvent;)V

    .line 72
    invoke-static {}, Lcom/kms/kmsshared/Utils;->c()V

    .line 75
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 79
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_3
    return-void

    :catch_0
    move-exception v0

    move-object v1, v6

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
