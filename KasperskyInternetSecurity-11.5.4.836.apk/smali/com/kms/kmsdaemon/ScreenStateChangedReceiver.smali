.class public Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 56
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;->a:Z

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;->a:Z

    goto :goto_0
.end method

.method public static synthetic a()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;->a:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 19
    invoke-static {p2}, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;->a(Landroid/content/Intent;)V

    .line 21
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lqg;

    invoke-direct {v1, p0, p1}, Lqg;-><init>(Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method
