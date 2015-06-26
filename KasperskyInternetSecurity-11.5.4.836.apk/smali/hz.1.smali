.class final Lhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LiH;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(LiH;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lhz;->a:LiH;

    iput-object p2, p0, Lhz;->b:Landroid/content/Context;

    iput-object p3, p0, Lhz;->c:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lhz;->a:LiH;

    invoke-static {v0}, Lhy;->a(LiH;)Ljava/util/List;

    move-result-object v1

    .line 122
    iget-object v0, p0, Lhz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 123
    new-instance v2, Lcom/kaspersky/components/statistics/popularity/Wlips;

    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kms/ksn/locator/ServiceLocator;->b()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/kaspersky/components/statistics/popularity/Wlips;-><init>(I)V

    .line 124
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 128
    if-eqz v0, :cond_0

    .line 129
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/kaspersky/components/statistics/popularity/Wlips;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhB;

    .line 134
    invoke-virtual {v0}, LhB;->a()[B

    move-result-object v3

    invoke-virtual {v0}, LhB;->b()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kaspersky/components/statistics/popularity/Wlips;->a([B[B)Z

    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v2}, Lcom/kaspersky/components/statistics/popularity/Wlips;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    const-string v0, "KAVSDK"

    const-string v1, "Failed to send WLIPS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_3
    iget-object v0, p0, Lhz;->a:LiH;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LiH;->a([B)V

    .line 142
    iget-object v0, p0, Lhz;->a:LiH;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, LiH;->b(J)V

    .line 143
    iget-object v0, p0, Lhz;->a:LiH;

    invoke-interface {v0}, LiH;->e()V

    .line 144
    iget-object v0, p0, Lhz;->b:Landroid/content/Context;

    iget-object v1, p0, Lhz;->a:LiH;

    invoke-static {v0, v1}, Lhy;->b(Landroid/content/Context;LiH;)V

    .line 145
    iget-object v0, p0, Lhz;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 146
    return-void
.end method
