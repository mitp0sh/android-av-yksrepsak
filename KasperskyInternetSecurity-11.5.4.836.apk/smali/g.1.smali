.class public final Lg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(J)V
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 109
    const/16 v1, 0x13

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 110
    invoke-virtual {v0}, Lse;->g_()V

    .line 111
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    const-string v0, "C2DM"

    const-string v1, "Run intent to register application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 96
    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 97
    invoke-virtual {v0}, Lse;->g_()V

    .line 98
    return-void
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 103
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 104
    return-wide v0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 116
    const/16 v1, 0x12

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 117
    invoke-virtual {v0}, Lse;->g_()V

    .line 118
    return-void
.end method
