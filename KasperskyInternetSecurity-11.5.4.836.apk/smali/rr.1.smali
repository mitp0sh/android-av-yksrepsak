.class final Lrr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Vector;

.field private synthetic b:Lrq;


# direct methods
.method constructor <init>(Lrq;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lrr;->b:Lrq;

    iput-object p2, p0, Lrr;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lrr;->a:Ljava/util/Vector;

    .line 155
    :try_start_0
    iget-object v1, p0, Lrr;->b:Lrq;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    iget-object v2, p0, Lrr;->b:Lrq;

    invoke-static {v2}, Lrq;->a(Lrq;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    move-result-object v2

    if-nez v2, :cond_4

    .line 161
    iget-object v0, p0, Lrr;->b:Lrq;

    invoke-static {v0}, Lrq;->b(Lrq;)V

    .line 162
    iget-object v0, p0, Lrr;->b:Lrq;

    invoke-static {v0}, Lrq;->a(Lrq;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lrr;->b:Lrq;

    invoke-static {v0}, Lrq;->c(Lrq;)Ljava/util/Vector;

    move-result-object v0

    .line 165
    iget-object v2, p0, Lrr;->b:Lrq;

    iget-object v3, p0, Lrr;->b:Lrq;

    invoke-static {v3}, Lrq;->a(Lrq;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getNextEventsIds()Ljava/util/Vector;

    move-result-object v3

    invoke-static {v2, v3}, Lrq;->a(Lrq;Ljava/util/Vector;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 173
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 174
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 176
    :cond_0
    iget-object v0, p0, Lrr;->b:Lrq;

    invoke-static {v0}, Lrq;->d(Lrq;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    :goto_1
    return-void

    .line 169
    :cond_1
    :try_start_3
    iget-object v0, p0, Lrr;->b:Lrq;

    invoke-static {v0}, Lrq;->d(Lrq;)Z

    .line 170
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    :cond_2
    iget-object v0, p0, Lrr;->b:Lrq;

    invoke-static {v0}, Lrq;->d(Lrq;)Z

    goto :goto_1

    .line 180
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    if-ge v1, v0, :cond_2

    .line 183
    :try_start_6
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    .line 192
    invoke-virtual {v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->onStartEvent()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 180
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 193
    :catch_1
    move-exception v0

    .line 194
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method
