.class public Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, p1, [Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    iput-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    .line 29
    return-void
.end method

.method private static a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Ljava/util/Date;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 185
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->isPeriodic()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->updateNextTime()V

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 210
    return-void
.end method

.method public static restoreEvents(Ljava/io/File;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;
    .locals 5

    .prologue
    const/16 v3, 0x15

    const/4 v1, 0x0

    .line 116
    .line 119
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 132
    :goto_0
    if-nez v2, :cond_0

    move-object v0, v1

    .line 175
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 125
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    .line 130
    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v1

    goto :goto_0

    .line 139
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    .line 145
    :goto_2
    if-nez v2, :cond_1

    move-object v0, v1

    .line 147
    goto :goto_1

    .line 141
    :catch_2
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_2

    .line 152
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 153
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 154
    iget-object v1, v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    array-length v1, v1

    if-gt v1, v3, :cond_2

    .line 156
    iget-object v1, v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    const/16 v2, 0x15

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    iput-object v1, v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 170
    :catch_3
    move-exception v1

    .line 165
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 160
    :cond_2
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Number of events were decreased. Ask developers!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 167
    :catch_4
    move-exception v1

    .line 169
    :goto_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 167
    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_4

    .line 170
    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 205
    return-void
.end method


# virtual methods
.method public declared-synchronized getEvent(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEventsIds()Ljava/util/Vector;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    .line 55
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    array-length v0, v0

    new-array v10, v0, [J

    move v6, v5

    move-wide v0, v7

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    array-length v2, v2

    if-ge v6, v2, :cond_3

    .line 60
    iget-object v2, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    aget-object v2, v2, v6

    .line 61
    if-eqz v2, :cond_0

    .line 63
    invoke-static {v2}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Ljava/util/Date;

    move-result-object v2

    .line 66
    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v6

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v2, v11

    .line 72
    aput-wide v2, v10, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    cmp-long v11, v0, v7

    if-eqz v11, :cond_2

    cmp-long v11, v2, v0

    if-gez v11, :cond_0

    :cond_2
    move-wide v0, v2

    .line 75
    goto :goto_1

    .line 78
    :cond_3
    cmp-long v2, v0, v7

    if-nez v2, :cond_4

    move-object v0, v4

    .line 90
    :goto_2
    monitor-exit p0

    return-object v0

    .line 82
    :cond_4
    :try_start_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, v5

    .line 83
    :goto_3
    array-length v4, v10

    if-ge v3, v4, :cond_6

    .line 85
    aget-wide v4, v10, v3

    cmp-long v4, v4, v0

    if-nez v4, :cond_5

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v2

    .line 90
    goto :goto_2

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEvent(ILcom/kms/kmsshared/alarmscheduler/AlarmEvent;)V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    aput-object p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized storeEvents(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    .line 99
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 100
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 106
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :catch_1
    move-exception v0

    .line 110
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
