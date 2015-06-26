.class public final Lqy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 32
    sput-object v0, Lqy;->a:Ljava/util/HashSet;

    const-string v1, "com.kaspersky.pctrl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lqy;->a:Ljava/util/HashSet;

    const-string v1, "com.kms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lqy;->a:Ljava/util/HashSet;

    const-string v1, "com.kaspersky.kts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lqy;->a:Ljava/util/HashSet;

    const-string v1, "com.kms.free"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lqy;->a:Ljava/util/HashSet;

    const-string v1, "com.kts.free"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lsj;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 53
    invoke-static {p0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/kms/selfprotection/DeviceAdmin;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    const-string v0, "android.app.extra.ADD_EXPLANATION"

    const v2, 0x7f07025b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 60
    :cond_0
    return-void
.end method

.method private static a(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)V
    .locals 1

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "inactivity_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 203
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/kms/selfprotection/DeviceAdmin;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    invoke-static {p0, v0}, Lqy;->b(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    sget-object v0, Lqy;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 83
    :goto_0
    return v0

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 71
    :cond_1
    const-string v0, "KMS"

    const-string v2, "Incorrect device admin name"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    :try_start_0
    new-instance v2, Landroid/app/admin/DeviceAdminInfo;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, p0, v0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 76
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    const-string v0, "KMS"

    const-string v2, "Bad device admin xml"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    const-string v0, "KMS"

    const-string v2, "Can\'t read device admin xml"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide v4, 0x38d7ea4c68000L

    .line 227
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 229
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 231
    const-wide v2, 0x2386f26fc0ffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 233
    const-wide v2, 0xfffffffffffffL

    and-long/2addr v0, v2

    .line 235
    :cond_0
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 236
    add-long/2addr v0, v4

    .line 238
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 89
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 90
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 101
    :goto_0
    return v0

    .line 96
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0, v0}, Lqy;->a(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .prologue
    .line 123
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    invoke-static {}, Lqy;->b()Ljava/lang/String;

    move-result-object v0

    .line 243
    const-class v1, Lsj;

    monitor-enter v1

    .line 244
    :try_start_0
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v2

    .line 245
    invoke-virtual {v2, v0}, Lsj;->c(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v2}, Lsj;->g_()V

    .line 247
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .prologue
    .line 105
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 106
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 109
    invoke-static {p0, v0}, Lqy;->a(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    return-object v1
.end method

.method public static d(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .prologue
    .line 118
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 119
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-static {p0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 136
    :try_start_0
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 138
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 147
    invoke-static {p0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 149
    new-instance v5, Landroid/content/ComponentName;

    const-class v3, Lcom/kms/selfprotection/DeviceAdmin;

    invoke-direct {v5, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 155
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v0, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 156
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 164
    if-eqz v4, :cond_1

    .line 165
    invoke-static {v0, v5, v3}, Lqy;->a(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)V

    move v0, v1

    .line 180
    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v2

    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_0

    .line 159
    invoke-static {v0, v5, v2}, Lqy;->a(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)V

    :cond_0
    move v0, v1

    .line 161
    goto :goto_0

    .line 169
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v5, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 170
    invoke-static {}, Lqy;->a()Ljava/lang/String;

    move-result-object v4

    .line 171
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    .line 172
    const-string v4, ""

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    invoke-static {v0, v5, v3}, Lqy;->a(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)V

    :cond_2
    move v0, v1

    .line 180
    goto :goto_0

    .line 174
    :catch_1
    move-exception v1

    invoke-static {v0, v5, v3}, Lqy;->a(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)V

    move v0, v2

    .line 175
    goto :goto_0

    .line 158
    :catch_2
    move-exception v2

    move v2, v3

    goto :goto_1
.end method

.method public static g(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 191
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 192
    invoke-static {p0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/kms/selfprotection/DeviceAdmin;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "inactivity_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
