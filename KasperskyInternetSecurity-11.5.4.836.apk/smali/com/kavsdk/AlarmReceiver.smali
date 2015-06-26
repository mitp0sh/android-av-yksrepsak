.class public Lcom/kavsdk/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {}, LiK;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {}, LiK;->f()LiK;

    move-result-object v0

    .line 21
    :cond_0
    invoke-static {p1, v0, p2}, Lhy;->a(Landroid/content/Context;LiH;Landroid/content/Intent;)Z

    .line 24
    return-void
.end method
