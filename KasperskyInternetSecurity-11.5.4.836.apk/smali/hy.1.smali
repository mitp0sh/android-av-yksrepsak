.class public Lhy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lhy;


# instance fields
.field private final c:Lcom/kavsdk/popularity/AppsWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lhy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhy;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;LiH;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lhy;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/kavsdk/AlarmReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be registered in AndroidManifest.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const-string v0, "android.permission.WAKE_LOCK"

    invoke-static {p1, v0}, Lhy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "android.permission.WAKE_LOCK should be defined in AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/kavsdk/popularity/AppsWatcher;

    invoke-direct {v1, p2}, Lcom/kavsdk/popularity/AppsWatcher;-><init>(LiH;)V

    iput-object v1, p0, Lhy;->c:Lcom/kavsdk/popularity/AppsWatcher;

    .line 63
    iget-object v1, p0, Lhy;->c:Lcom/kavsdk/popularity/AppsWatcher;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lhy;->a(Landroid/content/Context;LiH;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-static {p1, p2}, Lhy;->d(Landroid/content/Context;LiH;)V

    .line 67
    :cond_2
    return-void
.end method

.method public static a(LiH;)Ljava/util/List;
    .locals 7

    .prologue
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {p0}, LiH;->c()[B

    move-result-object v2

    .line 104
    if-eqz v2, :cond_1

    .line 105
    array-length v0, v2

    rem-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Data corrupted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    array-length v0, v2

    div-int/lit8 v3, v0, 0x20

    .line 109
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 110
    new-instance v4, LhB;

    mul-int/lit8 v5, v0, 0x20

    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v6, v6, 0x20

    invoke-static {v2, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v4, v5}, LhB;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return-object v1
.end method

.method public static a(Landroid/content/Context;LiH;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lhy;->b:Lhy;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already inited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    new-instance v0, Lhy;

    invoke-direct {v0, p0, p1}, Lhy;-><init>(Landroid/content/Context;LiH;)V

    sput-object v0, Lhy;->b:Lhy;

    .line 44
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 183
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/kavsdk/AlarmReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 186
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;LiH;Landroid/content/Intent;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 75
    const-string v1, "KAVSDK"

    const-string v2, "Can\'t process alarm because initialization is not completed, will process later"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.kavsdk.popularity_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :cond_2
    invoke-interface {p1}, LiH;->b()J

    move-result-wide v2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 82
    sub-long v2, v4, v2

    .line 83
    invoke-interface {p1}, LiH;->d()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 85
    sget-object v6, Lhy;->a:Ljava/lang/String;

    const-string v7, "Time since the first start of SDK is %d"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lht;->a()Lht;

    move-result-object v6

    invoke-virtual {v6}, Lht;->h()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    invoke-static {}, Lht;->a()Lht;

    move-result-object v6

    invoke-virtual {v6}, Lht;->l()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 89
    invoke-static {p0, p1}, Lhy;->c(Landroid/content/Context;LiH;)V

    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, LiH;->b(J)V

    .line 94
    invoke-interface {p1}, LiH;->e()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 193
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 198
    if-nez v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 203
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    const/4 v0, 0x1

    .line 205
    goto :goto_0

    .line 202
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 210
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;LiH;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1}, Lhy;->d(Landroid/content/Context;LiH;)V

    return-void
.end method

.method private static c(Landroid/content/Context;LiH;)V
    .locals 3

    .prologue
    .line 117
    const-string v0, "com.kavsdk.popularity_tag"

    invoke-static {p0, v0}, LbB;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lhz;

    invoke-direct {v2, p1, p0, v0}, Lhz;-><init>(LiH;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    const-string v0, "SendWlips"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 151
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 152
    return-void
.end method

.method private static d(Landroid/content/Context;LiH;)V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 155
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/kavsdk/AlarmReceiver;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    const-string v0, "com.kavsdk.popularity_alarm"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/high16 v0, 0x20000000

    invoke-static {p0, v1, v8, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 161
    :goto_0
    if-nez v0, :cond_0

    .line 162
    invoke-interface {p1}, LiH;->b()J

    move-result-wide v4

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x7d0

    add-long/2addr v9, v6

    .line 164
    sub-long v6, v9, v4

    .line 165
    invoke-static {}, Lht;->a()Lht;

    move-result-object v0

    invoke-virtual {v0}, Lht;->h()I

    move-result v0

    int-to-long v4, v0

    .line 167
    cmp-long v0, v6, v2

    if-gez v0, :cond_2

    .line 173
    :goto_1
    const/high16 v0, 0x8000000

    invoke-static {p0, v1, v8, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 174
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 176
    add-long v7, v9, v4

    sub-long v2, v7, v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 178
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 158
    goto :goto_0

    .line 169
    :cond_2
    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    move-wide v2, v4

    .line 170
    goto :goto_1

    :cond_3
    move-wide v2, v6

    goto :goto_1
.end method
