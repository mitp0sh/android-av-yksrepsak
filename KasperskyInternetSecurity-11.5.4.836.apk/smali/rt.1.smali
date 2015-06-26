.class public final Lrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    const/4 v1, 0x0

    .line 197
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v4

    .line 198
    invoke-virtual {v4, v2}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 199
    invoke-virtual {v4, v3}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    move v0, v2

    .line 201
    :goto_0
    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/LicenseRefreshEvent;

    invoke-direct {v0, v2, v5, v6, v3}, Lcom/kms/kmsshared/alarmscheduler/LicenseRefreshEvent;-><init>(ZJI)V

    .line 204
    :goto_1
    return-object v0

    :cond_0
    move v0, v3

    .line 200
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Lay;)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/util/Date;

    invoke-interface {p0}, Lay;->k()Laz;

    move-result-object v1

    invoke-interface {v1}, Laz;->a()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 192
    new-instance v1, Lcom/kms/kmsshared/alarmscheduler/LicenseInfoExpiredEvent;

    invoke-direct {v1, v0}, Lcom/kms/kmsshared/alarmscheduler/LicenseInfoExpiredEvent;-><init>(Ljava/util/Date;)V

    return-object v1
.end method

.method private static b(Lay;)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
    .locals 5

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    invoke-interface {p0}, Lay;->k()Laz;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    .line 211
    invoke-interface {p0}, Lay;->i()J

    move-result-wide v1

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 214
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 215
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/LicenseExpireEvent;

    invoke-direct {v0, v3}, Lcom/kms/kmsshared/alarmscheduler/LicenseExpireEvent;-><init>(Ljava/util/Date;)V

    .line 218
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
    .locals 3

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 186
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :pswitch_1
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/ScannerPeriodicEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/ScannerPeriodicEvent;-><init>()V

    goto :goto_0

    .line 66
    :pswitch_2
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/UpdaterPeriodicEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/UpdaterPeriodicEvent;-><init>()V

    goto :goto_0

    .line 73
    :pswitch_3
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/PPSingleTimeEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/PPSingleTimeEvent;-><init>()V

    goto :goto_0

    .line 80
    :pswitch_4
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/LicenseScheduler;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/LicenseScheduler;-><init>()V

    goto :goto_0

    .line 87
    :pswitch_5
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;-><init>()V

    goto :goto_0

    .line 94
    :pswitch_6
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;-><init>()V

    goto :goto_0

    .line 101
    :pswitch_7
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefScheduler;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefScheduler;-><init>()V

    goto :goto_0

    .line 108
    :pswitch_8
    invoke-static {}, Lrt;->a()Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_9
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->a()Lay;

    move-result-object v0

    invoke-static {v0}, Lrt;->b(Lay;)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_a
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/LicenseExpireNotificationEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/LicenseExpireNotificationEvent;-><init>()V

    goto :goto_0

    .line 129
    :pswitch_b
    new-instance v0, Lcom/kaspersky/ipm/alarmscheduler/IpmSyncEvent;

    invoke-direct {v0}, Lcom/kaspersky/ipm/alarmscheduler/IpmSyncEvent;-><init>()V

    goto :goto_0

    .line 134
    :pswitch_c
    new-instance v0, Lcom/kaspersky/ipm/alarmscheduler/IpmNewsEvent;

    invoke-direct {v0}, Lcom/kaspersky/ipm/alarmscheduler/IpmNewsEvent;-><init>()V

    goto :goto_0

    .line 139
    :pswitch_d
    new-instance v0, Lcom/kaspersky/ipm/alarmscheduler/BbyMessageEvent;

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->z()Lab;

    move-result-object v1

    invoke-virtual {v1}, Lab;->b()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/ipm/alarmscheduler/BbyMessageEvent;-><init>(J)V

    goto :goto_0

    .line 145
    :pswitch_e
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseRefreshEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseRefreshEvent;-><init>()V

    goto :goto_0

    .line 151
    :pswitch_f
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseExpireEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseExpireEvent;-><init>()V

    goto :goto_0

    .line 157
    :pswitch_10
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/ScanExpiredSingleTimeEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/ScanExpiredSingleTimeEvent;-><init>()V

    goto :goto_0

    .line 163
    :pswitch_11
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->a()Lay;

    move-result-object v0

    invoke-static {v0}, Lrt;->a(Lay;)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :pswitch_12
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/CheckUcpAccountRegistrationEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/CheckUcpAccountRegistrationEvent;-><init>()V

    goto/16 :goto_0

    .line 176
    :pswitch_13
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/CheckUCPRedirectEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/CheckUCPRedirectEvent;-><init>()V

    goto/16 :goto_0

    .line 182
    :pswitch_14
    new-instance v0, Lcom/kaspersky/bby/BbyGrace2Event;

    invoke-direct {v0}, Lcom/kaspersky/bby/BbyGrace2Event;-><init>()V

    goto/16 :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
