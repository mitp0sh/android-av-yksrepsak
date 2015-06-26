.class public final Lwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaS;
.implements LaY;


# instance fields
.field private final a:Lcom/kaspersky/components/ucp/UcpGeneralClient;

.field private final b:Lcom/kaspersky/components/ucp/UcpConnectClient;

.field private final c:Lcom/kaspersky/components/ucp/UcpMobileClient;

.field private final d:Lcom/kaspersky/components/ucp/UcpCommandClient;

.field private final e:Lcom/kaspersky/components/ucp/UcpLicenseClient;

.field private final f:Lws;

.field private final g:Lrz;

.field private final h:Lwr;

.field private final i:Lwu;

.field private j:Lwq;

.field private k:Lcom/kaspersky/components/ucp/MobileStatus;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lws;

    invoke-direct {v0, p0, v1}, Lws;-><init>(Lwo;B)V

    iput-object v0, p0, Lwo;->f:Lws;

    .line 61
    new-instance v0, Lwt;

    invoke-direct {v0, p0, v1}, Lwt;-><init>(Lwo;B)V

    iput-object v0, p0, Lwo;->g:Lrz;

    .line 62
    new-instance v0, Lwr;

    invoke-direct {v0, p0, v1}, Lwr;-><init>(Lwo;B)V

    iput-object v0, p0, Lwo;->h:Lwr;

    .line 63
    new-instance v0, Lwu;

    invoke-direct {v0, p0, v1}, Lwu;-><init>(Lwo;B)V

    iput-object v0, p0, Lwo;->i:Lwu;

    .line 69
    const-string v0, "KMS"

    const-string v1, "UCP LOG initialize"

    invoke-static {v0, v1}, Lcom/kaspersky/components/ucp/UcpLog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/ksn/locator/ServiceLocator;->b()I

    move-result v0

    .line 73
    new-instance v1, Lcom/kaspersky/components/ucp/UcpGeneralClient;

    invoke-direct {v1, v0}, Lcom/kaspersky/components/ucp/UcpGeneralClient;-><init>(I)V

    iput-object v1, p0, Lwo;->a:Lcom/kaspersky/components/ucp/UcpGeneralClient;

    .line 75
    new-instance v1, Ltn;

    invoke-direct {v1}, Ltn;-><init>()V

    .line 76
    new-instance v2, Lcom/kaspersky/components/ucp/UcpLicenseClient;

    new-instance v3, LsV;

    invoke-direct {v3}, LsV;-><init>()V

    invoke-direct {v2, v0, v1, v3}, Lcom/kaspersky/components/ucp/UcpLicenseClient;-><init>(ILaR;Lba;)V

    iput-object v2, p0, Lwo;->e:Lcom/kaspersky/components/ucp/UcpLicenseClient;

    .line 77
    iget-object v1, p0, Lwo;->a:Lcom/kaspersky/components/ucp/UcpGeneralClient;

    iget-object v2, p0, Lwo;->e:Lcom/kaspersky/components/ucp/UcpLicenseClient;

    invoke-virtual {v2}, Lcom/kaspersky/components/ucp/UcpLicenseClient;->getNativeClient()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kaspersky/components/ucp/UcpGeneralClient;->setLicenseInfoObserver(I)V

    .line 78
    new-instance v1, Lcom/kaspersky/components/ucp/UcpConnectClient;

    invoke-direct {v1, v0}, Lcom/kaspersky/components/ucp/UcpConnectClient;-><init>(I)V

    iput-object v1, p0, Lwo;->b:Lcom/kaspersky/components/ucp/UcpConnectClient;

    .line 79
    new-instance v1, Lcom/kaspersky/components/ucp/UcpMobileClient;

    invoke-direct {v1, v0}, Lcom/kaspersky/components/ucp/UcpMobileClient;-><init>(I)V

    iput-object v1, p0, Lwo;->c:Lcom/kaspersky/components/ucp/UcpMobileClient;

    .line 80
    new-instance v1, Lcom/kaspersky/components/ucp/UcpCommandClient;

    invoke-direct {v1, v0}, Lcom/kaspersky/components/ucp/UcpCommandClient;-><init>(I)V

    iput-object v1, p0, Lwo;->d:Lcom/kaspersky/components/ucp/UcpCommandClient;

    .line 81
    iget-object v0, p0, Lwo;->b:Lcom/kaspersky/components/ucp/UcpConnectClient;

    invoke-virtual {v0, p0}, Lcom/kaspersky/components/ucp/UcpConnectClient;->a(LaS;)V

    .line 82
    iget-object v0, p0, Lwo;->b:Lcom/kaspersky/components/ucp/UcpConnectClient;

    invoke-virtual {v0, p0}, Lcom/kaspersky/components/ucp/UcpConnectClient;->a(LaY;)V

    .line 84
    invoke-static {}, Lwy;->f()Lcom/kaspersky/components/ucp/MobileStatus;

    move-result-object v0

    iput-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    .line 86
    invoke-static {}, LjJ;->k()Lww;

    move-result-object v0

    invoke-interface {v0}, Lww;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, Lme;

    iget-object v2, p0, Lwo;->f:Lws;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lwo;->d:Lcom/kaspersky/components/ucp/UcpCommandClient;

    new-instance v1, Lwj;

    iget-object v2, p0, Lwo;->d:Lcom/kaspersky/components/ucp/UcpCommandClient;

    invoke-direct {v1, v2}, Lwj;-><init>(LaU;)V

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/ucp/UcpCommandClient;->a(LaW;)V

    .line 91
    iget-object v0, p0, Lwo;->d:Lcom/kaspersky/components/ucp/UcpCommandClient;

    new-instance v1, Ley;

    invoke-direct {v1}, Ley;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/ucp/UcpCommandClient;->a(LaT;)V

    .line 92
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    .line 93
    const-class v1, Lme;

    iget-object v2, p0, Lwo;->f:Lws;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 94
    const-class v1, LcT;

    iget-object v2, p0, Lwo;->g:Lrz;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 95
    const-class v1, Lvg;

    iget-object v2, p0, Lwo;->h:Lwr;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 96
    const-class v1, LkJ;

    iget-object v2, p0, Lwo;->i:Lwu;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 97
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lwo;->j:Lwq;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lwq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lwq;-><init>(Lwo;B)V

    iput-object v0, p0, Lwo;->j:Lwq;

    .line 173
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iget-object v1, p0, Lwo;->j:Lwq;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lwo;->j:Lwq;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iget-object v1, p0, Lwo;->j:Lwq;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lwo;->j:Lwq;

    .line 183
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 186
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v2}, Lsx;->b(Z)V

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsx;->c(Z)V

    .line 189
    invoke-virtual {v0}, Lsx;->g_()V

    .line 191
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v2}, Lse;->k(Z)V

    .line 193
    invoke-virtual {v0, v2}, Lse;->h(Z)V

    .line 194
    invoke-virtual {v0}, Lse;->g_()V

    .line 196
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lwo;->f:Lws;

    invoke-interface {v0, v1}, Lrx;->a(Lrz;)V

    .line 198
    iget-object v1, p0, Lwo;->g:Lrz;

    invoke-interface {v0, v1}, Lrx;->a(Lrz;)V

    .line 199
    iget-object v1, p0, Lwo;->h:Lwr;

    invoke-interface {v0, v1}, Lrx;->a(Lrz;)V

    .line 200
    iget-object v0, p0, Lwo;->d:Lcom/kaspersky/components/ucp/UcpCommandClient;

    invoke-virtual {v0, v3}, Lcom/kaspersky/components/ucp/UcpCommandClient;->a(LaW;)V

    .line 201
    iget-object v0, p0, Lwo;->d:Lcom/kaspersky/components/ucp/UcpCommandClient;

    invoke-virtual {v0, v3}, Lcom/kaspersky/components/ucp/UcpCommandClient;->a(LaT;)V

    .line 203
    return-void
.end method


# virtual methods
.method public final a()LaX;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lwo;->b:Lcom/kaspersky/components/ucp/UcpConnectClient;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public final a(Lcom/kaspersky/components/ucp/UcpConnectionStatus;)V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    .line 155
    const-class v1, Lsx;

    monitor-enter v1

    .line 156
    :try_start_0
    invoke-virtual {v0, p1}, Lsx;->a(Lcom/kaspersky/components/ucp/UcpConnectionStatus;)V

    .line 157
    invoke-virtual {v0}, Lsx;->g_()V

    .line 158
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v0}, Lsx;->c()Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    move-result-object v1

    sget-object v2, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lsx;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lwo;->i()V

    .line 162
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/ucp/UcpEventType;->Disconnected:Lcom/kms/ucp/UcpEventType;

    invoke-virtual {v1}, Lcom/kms/ucp/UcpEventType;->newEvent()Lwn;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 163
    invoke-direct {p0}, Lwo;->h()V

    .line 168
    :goto_0
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 165
    :cond_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/ucp/UcpEventType;->Connected:Lcom/kms/ucp/UcpEventType;

    invoke-virtual {v1}, Lcom/kms/ucp/UcpEventType;->newEvent()Lwn;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 166
    invoke-direct {p0}, Lwo;->g()V

    goto :goto_0
.end method

.method public final a(ZLjava/util/Date;)V
    .locals 3

    .prologue
    .line 123
    if-eqz p1, :cond_1

    .line 124
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lse;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lse;->k(Z)V

    .line 128
    invoke-virtual {v0}, Lse;->g_()V

    .line 129
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsx;->a(J)V

    .line 134
    invoke-virtual {v0}, Lsx;->g_()V

    .line 135
    invoke-static {}, LjJ;->l()Lv;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lv;->a(I)V

    .line 136
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountNotValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0
.end method

.method public final b()LaV;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lwo;->d:Lcom/kaspersky/components/ucp/UcpCommandClient;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public final c()Lbb;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lwo;->c:Lcom/kaspersky/components/ucp/UcpMobileClient;

    return-object v0
.end method

.method public final d()LaZ;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lwo;->e:Lcom/kaspersky/components/ucp/UcpLicenseClient;

    return-object v0
.end method

.method public final e()Lcom/kaspersky/components/ucp/UcpGeneralClient;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lwo;->a:Lcom/kaspersky/components/ucp/UcpGeneralClient;

    return-object v0
.end method

.method public final declared-synchronized f()V
    .locals 11

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kms/kmsshared/Utils;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->VeryOld:Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    .line 208
    :goto_0
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 209
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v2

    .line 214
    invoke-virtual {v0}, Lse;->p()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 215
    invoke-interface {v2}, Lde;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 216
    :goto_1
    invoke-interface {v2}, Lde;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v4, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 217
    :goto_2
    invoke-virtual {v0}, Lse;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v5, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 218
    :goto_3
    invoke-virtual {v0}, Lse;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    :goto_4
    move-object v7, v0

    .line 230
    :goto_5
    invoke-static {}, Lcom/kms/kmsshared/Utils;->f()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 232
    :goto_6
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v2

    invoke-interface {v2}, Ltg;->a()LsW;

    move-result-object v2

    invoke-interface {v2}, LsW;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 233
    sget-object v6, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 234
    sget-object v9, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 235
    sget-object v2, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 242
    :goto_7
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v8, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 244
    :goto_8
    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/MobileStatus;->getAvBaseStatus()I

    move-result v0

    invoke-virtual {v1}, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->ordinal()I

    move-result v10

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/MobileStatus;->getAvStasus()I

    move-result v0

    invoke-virtual {v2}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v10

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/MobileStatus;->getAlarmStatus()I

    move-result v0

    invoke-virtual {v3}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v10

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/MobileStatus;->getGpsFindStatus()I

    move-result v0

    invoke-virtual {v4}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v10

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/MobileStatus;->getMugshotStatus()I

    move-result v0

    invoke-virtual {v5}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v10

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/MobileStatus;->getWebProtectionStatus()I

    move-result v0

    invoke-virtual {v6}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v10

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/MobileStatus;->getWipeStatus()I

    move-result v0

    invoke-virtual {v7}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v10

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/MobileStatus;->getGsmModuleStatus()I

    move-result v0

    invoke-virtual {v8}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v10

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ucp/MobileStatus;->getPrivacyProtectionStatus()I

    move-result v0

    invoke-virtual {v9}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v10

    if-eq v0, v10, :cond_1

    .line 254
    :cond_0
    new-instance v0, Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-direct/range {v0 .. v9}, Lcom/kaspersky/components/ucp/MobileStatus;-><init>(Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;)V

    iput-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    .line 263
    iget-object v0, p0, Lwo;->c:Lcom/kaspersky/components/ucp/UcpMobileClient;

    iget-object v1, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/ucp/UcpMobileClient;->sendKmsStatus(Lcom/kaspersky/components/ucp/MobileStatus;)V

    .line 265
    iget-object v0, p0, Lwo;->k:Lcom/kaspersky/components/ucp/MobileStatus;

    invoke-static {v0}, Lwy;->a(Lcom/kaspersky/components/ucp/MobileStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_1
    monitor-exit p0

    return-void

    .line 206
    :cond_2
    :try_start_1
    sget-object v1, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->Actual:Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    goto/16 :goto_0

    .line 215
    :cond_3
    sget-object v3, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    goto/16 :goto_1

    .line 216
    :cond_4
    sget-object v4, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    goto/16 :goto_2

    .line 217
    :cond_5
    sget-object v5, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    goto/16 :goto_3

    .line 218
    :cond_6
    sget-object v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    goto/16 :goto_4

    .line 220
    :cond_7
    sget-object v3, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 221
    sget-object v4, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 222
    sget-object v5, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 223
    sget-object v7, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    goto/16 :goto_5

    .line 230
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 237
    :cond_9
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v2

    invoke-interface {v2}, LkM;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v6, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 238
    :goto_9
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v2

    invoke-virtual {v2}, Lsm;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v9, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 239
    :goto_a
    if-eqz v0, :cond_c

    sget-object v2, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    goto/16 :goto_7

    .line 237
    :cond_a
    sget-object v6, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    goto :goto_9

    .line 238
    :cond_b
    sget-object v9, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    goto :goto_a

    .line 239
    :cond_c
    sget-object v2, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    goto/16 :goto_7

    .line 242
    :cond_d
    sget-object v8, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
