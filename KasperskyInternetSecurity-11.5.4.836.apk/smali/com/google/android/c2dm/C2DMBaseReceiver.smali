.class public abstract Lcom/google/android/c2dm/C2DMBaseReceiver;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/google/android/c2dm/C2DMBaseReceiver;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "C2DM_LIB"

    invoke-static {p0, v0}, LbB;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/c2dm/C2DMBaseReceiver;->a:Landroid/os/PowerManager$WakeLock;

    .line 162
    :cond_0
    const-class v0, Lcom/kaspersky/kts/antitheft/c2dm/C2DMReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 168
    const-string v0, "registration_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, "unregistered"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    const-string v3, "C2DM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dmControl: registrationId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz v2, :cond_1

    .line 179
    invoke-static {}, Lg;->c()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    if-eqz v1, :cond_3

    .line 184
    invoke-static {}, Lg;->c()V

    .line 186
    const-string v0, "C2DM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registration error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0, v1}, Lcom/google/android/c2dm/C2DMBaseReceiver;->a(Ljava/lang/String;)V

    .line 188
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ACCOUNT_MISSING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :cond_2
    invoke-static {}, Lg;->b()J

    move-result-wide v1

    .line 191
    const-string v0, "C2DM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling registration retry, backoff = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 196
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 197
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 201
    const-wide/16 v3, 0x2

    mul-long v0, v1, v3

    .line 202
    invoke-static {v0, v1}, Lg;->a(J)V

    goto :goto_0

    .line 206
    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/google/android/c2dm/C2DMBaseReceiver;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "C2DM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registration error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-static {}, Lg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 97
    :goto_0
    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0}, Lg;->a(Ljava/lang/String;)V

    .line 101
    :cond_0
    if-eqz v0, :cond_3

    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const-string v0, "C2DM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report Notification id to UCP: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->D()Lbb;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lbb;->reportPushServiceRegistration(ZLjava/lang/String;)V

    .line 116
    :cond_1
    :goto_1
    return-void

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_3
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    invoke-virtual {v0}, LcW;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    invoke-virtual {v0}, LcW;->f()V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/c2dm/C2DMBaseReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-direct {p0, v0, p1}, Lcom/google/android/c2dm/C2DMBaseReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/c2dm/C2DMBaseReceiver;->a:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 144
    return-void

    .line 131
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/c2dm/C2DMBaseReceiver;->a(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/c2dm/C2DMBaseReceiver;->a:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    throw v0

    .line 133
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RETRY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
