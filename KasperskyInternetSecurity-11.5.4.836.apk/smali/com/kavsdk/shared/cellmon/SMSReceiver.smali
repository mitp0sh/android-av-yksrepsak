.class public Lcom/kavsdk/shared/cellmon/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/kavsdk/shared/cellmon/SMSReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kavsdk/shared/cellmon/SMSReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 62
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 67
    :try_start_0
    const-class v1, Landroid/app/NotificationManager;

    const-string v2, "getService"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
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

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 72
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

    .line 88
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 82
    :catch_2
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 85
    :catch_3
    move-exception v0

    goto :goto_0

    .line 74
    :catch_4
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v4, :cond_2

    .line 35
    new-instance v1, Ljg;

    invoke-direct {v1}, Ljg;-><init>()V

    .line 39
    :goto_0
    invoke-virtual {v1, v0}, Lje;->a([Ljava/lang/Object;)V

    .line 41
    invoke-static {p1}, LiY;->a(Landroid/content/Context;)LiY;

    move-result-object v0

    .line 43
    invoke-virtual {v1}, Lje;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v1}, Lje;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lje;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, LiY;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/kavsdk/shared/cellmon/SMSReceiver;->abortBroadcast()V

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/kavsdk/shared/cellmon/SMSReceiver;->a(Landroid/content/Context;)V

    .line 58
    :cond_1
    return-void

    .line 37
    :cond_2
    new-instance v1, Ljf;

    invoke-direct {v1}, Ljf;-><init>()V

    goto :goto_0
.end method
