.class public final Lto;
.super LsM;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, LsM;-><init>()V

    return-void
.end method

.method private static a(J)J
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0x3b

    const/16 v3, 0xe

    .line 105
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 106
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 107
    const/16 v1, 0x17

    invoke-virtual {v0, v5, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 108
    invoke-virtual {v0, v6, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 109
    invoke-virtual {v0, v7, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 110
    const/16 v1, 0x3e7

    invoke-virtual {v0, v3, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 111
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 115
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 118
    :cond_0
    const/16 v2, 0x17

    invoke-virtual {v0, v5, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 119
    invoke-virtual {v0, v6, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 120
    invoke-virtual {v0, v7, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 121
    const/16 v2, 0x3e7

    invoke-virtual {v0, v3, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 123
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    const-class v2, LsL;

    monitor-enter v2

    .line 21
    :try_start_0
    invoke-static {}, LsL;->getLicenseExpireDate()J
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 25
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 26
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 22
    :catch_0
    move-exception v3

    .line 23
    invoke-virtual {v3}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    const-class v1, LsL;

    monitor-enter v1

    .line 34
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, LsL;->getKeySerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 39
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 40
    return-object v0

    .line 36
    :catch_0
    move-exception v2

    .line 37
    invoke-virtual {v2}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    .line 46
    const-class v2, LsL;

    monitor-enter v2

    .line 48
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, LsL;->getKeyLicenseType(I)I
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 53
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 55
    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_1
    return v0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 57
    :pswitch_0
    const/4 v0, 0x1

    .line 58
    goto :goto_1

    .line 60
    :pswitch_1
    const/4 v0, 0x2

    .line 61
    goto :goto_1

    .line 63
    :pswitch_2
    const/4 v0, 0x3

    .line 64
    goto :goto_1

    .line 66
    :pswitch_3
    const/4 v0, 0x4

    .line 67
    goto :goto_1

    .line 69
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_1

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, ""

    return-object v0
.end method

.method public final e()J
    .locals 4

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    .line 90
    const-class v2, LsL;

    monitor-enter v2

    .line 92
    :try_start_0
    invoke-static {}, LsL;->getLicenseExpireDate()J
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 96
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lto;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 93
    :catch_0
    move-exception v3

    .line 94
    :try_start_2
    invoke-virtual {v3}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
