.class public Lcom/kms/selfprotection/DeviceAdmin;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/kms/selfprotection/DeviceAdmin;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Los;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    const v1, 0x7f07025c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LqO;->a(ZLjava/lang/String;)Z

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 52
    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 53
    invoke-virtual {v0}, Lse;->g_()V

    .line 54
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/AndroidEventType;->DeviceAdminDisabled:Lcom/kms/AndroidEventType;

    invoke-virtual {v1}, Lcom/kms/AndroidEventType;->newEvent()LjF;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 55
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/AndroidEventType;->DeviceAdminEnabled:Lcom/kms/AndroidEventType;

    invoke-virtual {v1}, Lcom/kms/AndroidEventType;->newEvent()LjF;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 47
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lsj;->d()Z

    move-result v0

    .line 134
    if-eqz v0, :cond_0

    .line 136
    sget v0, Lcom/kms/selfprotection/DeviceAdmin;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 137
    sput v0, Lcom/kms/selfprotection/DeviceAdmin;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {v2}, LqO;->a(Z)V

    .line 140
    sput v2, Lcom/kms/selfprotection/DeviceAdmin;->a:I

    .line 143
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 66
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v5}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 69
    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 72
    invoke-virtual {v1}, Lse;->g_()V

    .line 73
    invoke-static {p1, v2, v3}, Lqy;->a(Landroid/content/Context;J)V

    .line 78
    :cond_0
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 79
    const-class v1, Lsj;

    monitor-enter v1

    .line 81
    :try_start_0
    invoke-virtual {v0}, Lsj;->d()Z

    move-result v2

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lsj;->a(Z)V

    .line 83
    invoke-virtual {v0}, Lsj;->g_()V

    .line 84
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v2, :cond_1

    .line 88
    invoke-static {}, Ldt;->a_()V

    .line 89
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 90
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/kms/selfprotection/DeviceAdmin;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {v0, v1, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 92
    invoke-virtual {v0, v1, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 96
    :try_start_1
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/LockInfoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    const-string v1, "com.kaspersky.kts.LockInfoActivity.title"

    const v2, 0x7f07026c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "com.kaspersky.kts.LockInfoActivity.info"

    const v2, 0x7f07026d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "com.kaspersky.kts.LockInfoActivity.ok"

    const v2, 0x7f07026e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    :cond_1
    sput v4, Lcom/kms/selfprotection/DeviceAdmin;->a:I

    .line 121
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    .line 122
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
