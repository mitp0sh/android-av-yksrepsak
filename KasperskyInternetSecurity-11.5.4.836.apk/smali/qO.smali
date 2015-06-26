.class public final LqO;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 67
    const/high16 v0, 0x20000

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 72
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v1

    .line 73
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 75
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x7

    invoke-static {p2}, Lqy;->h(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 78
    invoke-virtual {v1}, Lse;->g_()V

    .line 81
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1}, Lqy;->a(Landroid/content/Context;J)V

    .line 82
    invoke-static {}, Lqy;->a()Ljava/lang/String;

    move-result-object v0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LqO;->a(ZLjava/lang/String;)Z

    .line 50
    return-void
.end method

.method public static a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 53
    const/4 v0, 0x0

    invoke-static {v1, v0}, LqO;->a(ZLjava/lang/String;)Z

    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    .line 56
    const-class v2, Lsj;

    monitor-enter v2

    .line 57
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Lsj;->a(Z)V

    .line 58
    invoke-virtual {v1}, Lsj;->g_()V

    .line 59
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    return v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(ZLjava/lang/String;)Z
    .locals 5

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {}, Lcom/kms/kmsshared/Utils;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 27
    new-instance v3, Landroid/content/ComponentName;

    const-class v0, Lcom/kms/selfprotection/DeviceAdmin;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v0, "device_policy"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 30
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    if-eqz p0, :cond_0

    .line 32
    invoke-static {v0, v3, v2}, LqO;->a(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 34
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-static {p1}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    const-string v1, "DeviceAdminLockScreenActivity.customtext"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
