.class public final Lhs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lhs;


# instance fields
.field private b:Ljava/io/File;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhs;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lhs;->a:Lhs;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lhs;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lhs;->a:Lhs;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lhs;

    invoke-direct {v0}, Lhs;-><init>()V

    sput-object v0, Lhs;->a:Lhs;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lhs;->a:Lhs;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(LiH;)V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lhs;->d:Z

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lhs;->c:Landroid/content/Context;

    invoke-static {v0}, Ljx;->a(Landroid/content/Context;)Ljx;

    .line 97
    invoke-static {}, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;->a()V

    .line 98
    invoke-static {}, Lht;->a()Lht;

    move-result-object v0

    invoke-virtual {v0}, Lht;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lhs;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lhy;->a(Landroid/content/Context;LiH;)V

    .line 101
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhs;->d:Z

    .line 103
    :cond_1
    return-void
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, LiS;->a()LiT;

    move-result-object v0

    .line 115
    const-string v1, "gnustl_shared"

    invoke-interface {v0, v1}, LiT;->a(Ljava/lang/String;)V

    .line 118
    const-string v1, "kl_uuid"

    invoke-interface {v0, v1}, LiT;->a(Ljava/lang/String;)V

    .line 121
    const-string v1, "packed_io"

    invoke-interface {v0, v1}, LiT;->a(Ljava/lang/String;)V

    .line 122
    const-string v1, "dns_client"

    invoke-interface {v0, v1}, LiT;->a(Ljava/lang/String;)V

    .line 125
    const-string v1, "app_services"

    invoke-interface {v0, v1}, LiT;->a(Ljava/lang/String;)V

    .line 127
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kavsdk/shared/SdkUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/io/File;Ljm;ILjava/lang/String;)V
    .locals 10

    .prologue
    .line 55
    iput-object p1, p0, Lhs;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lhs;->b:Ljava/io/File;

    .line 57
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-static {p5}, LiS;->a(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lcom/kavsdk/shared/SdkUtils;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 60
    invoke-static {p3}, LiK;->a(Ljm;)V

    .line 63
    invoke-static {}, LiK;->f()LiK;

    move-result-object v0

    .line 64
    invoke-interface {v0}, LiH;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-interface {v0}, LiH;->d()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 66
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, LiH;->c(J)V

    .line 67
    invoke-interface {v0}, LiH;->e()V

    .line 70
    :cond_1
    invoke-static {}, Lhs;->d()V

    .line 71
    invoke-static {v8}, Lht;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lhs;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhs;->e:Ljava/lang/String;

    move-object v7, v0

    :goto_0
    invoke-static {}, Lhw;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v0, LsK;

    invoke-static {}, Lwy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LjJ;->p()Ll;

    move-result-object v2

    sget-object v3, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyMobileSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

    invoke-static {}, Lkh;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/kaspersky/components/ucp/UcpDeviceType;->Tablet:Lcom/kaspersky/components/ucp/UcpDeviceType;

    :goto_1
    invoke-static {}, Lcom/kaspersky/components/ucp/UcpGeneralClient;->a()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, LsK;-><init>(Ljava/lang/String;Ll;Lcom/kaspersky/components/ucp/UcpServiceId;Lcom/kaspersky/components/ucp/UcpDeviceType;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v8

    move-object v3, v7

    move-object v4, v9

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/kms/ksn/locator/ServiceLocator;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LsK;Z)V

    .line 88
    invoke-static {}, LiK;->f()LiK;

    move-result-object v0

    invoke-static {p1, v0}, Lhu;->a(Landroid/content/Context;LiH;)V

    .line 90
    invoke-static {}, LiK;->f()LiK;

    move-result-object v0

    invoke-direct {p0, v0}, Lhs;->a(LiH;)V

    .line 92
    return-void

    .line 73
    :cond_2
    invoke-static {}, Lht;->a()Lht;

    move-result-object v0

    invoke-virtual {v0}, Lht;->i()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/kaspersky/components/ucp/UcpDeviceType;->Mobile:Lcom/kaspersky/components/ucp/UcpDeviceType;

    goto :goto_1
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lhs;->e:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public final b()Ljava/io/File;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lhs;->b:Ljava/io/File;

    return-object v0
.end method

.method public final c()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lhs;->c:Landroid/content/Context;

    const-class v3, Lcom/kavsdk/StartReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const-string v0, "com.avsdk.LAUNCH"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lhs;->c:Landroid/content/Context;

    const/high16 v3, 0x20000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 142
    :goto_0
    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lhs;->c:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 145
    iget-object v0, p0, Lhs;->c:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 146
    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 149
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 150
    return-void

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0
.end method
