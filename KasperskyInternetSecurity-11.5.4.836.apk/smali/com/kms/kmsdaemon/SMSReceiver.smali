.class public Lcom/kms/kmsdaemon/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Lqf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 66
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 71
    :try_start_0
    const-class v1, Landroid/app/NotificationManager;

    const-string v2, "getService"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "cancelAllNotifications"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 76
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.android.mms"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 86
    :catch_2
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 89
    :catch_3
    move-exception v0

    goto :goto_0

    .line 78
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lqf;)V
    .locals 0

    .prologue
    .line 24
    sput-object p0, Lcom/kms/kmsdaemon/SMSReceiver;->a:Lqf;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 30
    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 38
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v4, :cond_2

    .line 41
    new-instance v1, Lqe;

    invoke-direct {v1}, Lqe;-><init>()V

    .line 45
    :goto_0
    invoke-virtual {v1, v0}, Lqc;->a([Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/kms/kmsdaemon/SMSReceiver;->a:Lqf;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lqc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/kms/kmsdaemon/SMSReceiver;->a:Lqf;

    invoke-virtual {v1}, Lqc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lqc;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lqf;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/kms/kmsdaemon/SMSReceiver;->abortBroadcast()V

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/kms/kmsdaemon/SMSReceiver;->a(Landroid/content/Context;)V

    .line 62
    :cond_1
    return-void

    .line 43
    :cond_2
    new-instance v1, Lqd;

    invoke-direct {v1}, Lqd;-><init>()V

    goto :goto_0
.end method
