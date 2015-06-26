.class public Lcom/amazonaws/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# instance fields
.field protected final alternateIso8601DateFormat:Ljava/text/SimpleDateFormat;

.field protected final iso8601DateFormat:Ljava/text/SimpleDateFormat;

.field protected final rfc822DateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/util/DateUtils;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/util/DateUtils;->alternateIso8601DateFormat:Ljava/text/SimpleDateFormat;

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    .line 52
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "GMT"

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 53
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "GMT"

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 54
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->alternateIso8601DateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "GMT"

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 55
    return-void
.end method


# virtual methods
.method public formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/amazonaws/util/DateUtils;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/util/DateUtils;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/util/DateUtils;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    monitor-exit v2

    .line 78
    :goto_0
    return-object v1

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/text/ParseException;
    iget-object v2, p0, Lcom/amazonaws/util/DateUtils;->alternateIso8601DateFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    .line 78
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/util/DateUtils;->alternateIso8601DateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 79
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
