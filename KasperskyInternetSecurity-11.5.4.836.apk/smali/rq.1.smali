.class public final Lrq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv;


# instance fields
.field private a:Lrp;

.field private b:Landroid/app/AlarmManager;

.field private c:Landroid/content/Context;

.field private d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

.field private e:Landroid/os/PowerManager$WakeLock;

.field private f:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrp;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lrq;->a:Lrp;

    .line 37
    iput-object p1, p0, Lrq;->c:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    iget-object v1, p0, Lrq;->a:Lrp;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;-><init>(I)V

    iput-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    .line 39
    iget-object v0, p0, Lrq;->c:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lrq;->b:Landroid/app/AlarmManager;

    .line 40
    return-void
.end method

.method static synthetic a(Lrq;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    return-object v0
.end method

.method private final a()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 210
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 215
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lrq;->a:Lrp;

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    .line 217
    iget-object v2, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v2, v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getEvent(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_0

    .line 220
    invoke-static {v2}, Lrq;->a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    invoke-virtual {v2}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->runIfMissed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {v2}, Lrq;->b(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_2
    new-instance v0, Lrs;

    invoke-direct {v0, p0}, Lrs;-><init>(Lrq;)V

    .line 275
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    return-object v1
.end method

.method private a(Ljava/util/Vector;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lrq;->c:Landroid/content/Context;

    const-class v1, Lcom/kms/kmsshared/alarmscheduler/KMSAlarmBroadcastReceiver;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const/4 v0, 0x0

    .line 48
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 49
    iget-object v1, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getEvent(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 53
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "com_kms_alarmscheduler_eventid"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-object v0, v3

    move v1, v2

    .line 60
    :goto_1
    iget-object v3, p0, Lrq;->c:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-static {v3, v2, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 64
    :try_start_0
    iget-object v3, p0, Lrq;->b:Landroid/app/AlarmManager;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_2
    if-eqz v1, :cond_2

    .line 103
    :goto_3
    return-void

    .line 57
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 65
    :catch_0
    move-exception v3

    .line 66
    const-string v5, "KMS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AlarmManager update was not canceled. "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 74
    :cond_2
    if-eqz v0, :cond_3

    .line 92
    iget-object v1, p0, Lrq;->b:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 100
    :cond_3
    iget-object v0, p0, Lrq;->c:Landroid/content/Context;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/io/File;

    const-string v2, "events.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->storeEvents(Ljava/io/File;)V

    goto :goto_3
.end method

.method static synthetic a(Lrq;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lrq;->a(Ljava/util/Vector;)V

    return-void
.end method

.method private static a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Z
    .locals 5

    .prologue
    .line 125
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Vector;)V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lrr;

    invoke-direct {v1, p0, p1}, Lrr;-><init>(Lrq;Ljava/util/Vector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 206
    return-void
.end method

.method static synthetic b(Lrq;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lrq;->d()V

    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 281
    iget-object v0, p0, Lrq;->c:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 282
    const-string v2, "KMSSchedulerWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lrq;->e:Landroid/os/PowerManager$WakeLock;

    .line 285
    :try_start_0
    iget-object v0, p0, Lrq;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 292
    :goto_0
    return v0

    .line 287
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Z
    .locals 5

    .prologue
    .line 136
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lrq;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lrq;->a()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 297
    iget-object v1, p0, Lrq;->e:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 317
    :goto_0
    return v0

    .line 303
    :cond_0
    :try_start_0
    iget-object v1, p0, Lrq;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lrq;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    iput-object v2, p0, Lrq;->e:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    iput-object v2, p0, Lrq;->e:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lrq;->e:Landroid/os/PowerManager$WakeLock;

    throw v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lrq;->c:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/io/File;

    const-string v2, "events.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    invoke-static {v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->restoreEvents(Ljava/io/File;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    move-result-object v0

    iput-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    .line 326
    iget-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    if-nez v0, :cond_0

    .line 328
    const-string v0, "KMS"

    const-string v1, "Can\'t restore events storage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    iget-object v1, p0, Lrq;->a:Lrp;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;-><init>(I)V

    iput-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    .line 349
    :cond_0
    return-void
.end method

.method static synthetic d(Lrq;)Z
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lrq;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    iget-object v1, p0, Lrq;->a:Lrp;

    invoke-interface {v1, p1}, Lrp;->a(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->setEvent(ILcom/kms/kmsshared/alarmscheduler/AlarmEvent;)V

    .line 119
    iget-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getNextEventsIds()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0}, Lrq;->a(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 353
    iput-object p1, p0, Lrq;->f:Landroid/content/Intent;

    .line 355
    invoke-direct {p0}, Lrq;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    monitor-enter p0

    .line 361
    :try_start_0
    invoke-direct {p0}, Lrq;->d()V

    .line 362
    iget-object v1, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    if-eqz v1, :cond_0

    .line 364
    invoke-direct {p0}, Lrq;->a()Ljava/util/Vector;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getNextEventsIds()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, v1}, Lrq;->a(Ljava/util/Vector;)V

    .line 367
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :goto_0
    invoke-direct {p0, v0}, Lrq;->b(Ljava/util/Vector;)V

    .line 375
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_1
    iput-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    goto :goto_0
.end method

.method public final declared-synchronized b(I)V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->setEvent(ILcom/kms/kmsshared/alarmscheduler/AlarmEvent;)V

    .line 110
    iget-object v0, p0, Lrq;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getNextEventsIds()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0}, Lrq;->a(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
