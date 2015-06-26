.class public final Lts;
.super LsX;
.source "SourceFile"


# instance fields
.field private b:Lay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, LsX;-><init>()V

    .line 25
    new-instance v0, Ltp;

    invoke-direct {v0}, Ltp;-><init>()V

    iput-object v0, p0, Lts;->b:Lay;

    return-void
.end method


# virtual methods
.method public final a()Lay;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lts;->b:Lay;

    return-object v0
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 34
    invoke-static {p1}, LsL;->b(I)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lts;->b:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lts;->b:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    const-class v1, LsL;

    monitor-enter v1

    .line 67
    :try_start_0
    invoke-static {}, LsL;->a()I
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 71
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 72
    return v0

    .line 68
    :catch_0
    move-exception v2

    .line 69
    invoke-virtual {v2}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lts;->b:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 4

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    .line 83
    const-class v2, LsL;

    monitor-enter v2

    .line 85
    :try_start_0
    invoke-static {}, LsL;->getLicenseInstallDate()J
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 89
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 90
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 86
    :catch_0
    move-exception v3

    .line 87
    invoke-virtual {v3}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final g()I
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    const-class v1, LsL;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-static {}, LsL;->getLicenseWorkDays()I
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 105
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 106
    return v0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    invoke-virtual {v2}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 131
    invoke-static {}, LsL;->f()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 145
    invoke-static {}, LsL;->e()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public final k()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->n()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {p0}, Ltt;->a(Lts;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    new-instance v3, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    sget-object v4, Lcom/kaspersky/components/ucp/UcpLicenseType;->MobileActivationInfo:Lcom/kaspersky/components/ucp/UcpLicenseType;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v5, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Active:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;-><init>(Lcom/kaspersky/components/ucp/UcpLicenseType;[BLcom/kaspersky/components/ucp/UcpLicenseStatus;I)V

    aput-object v3, v0, v6

    new-instance v2, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    sget-object v3, Lcom/kaspersky/components/ucp/UcpLicenseType;->ActivationCode:Lcom/kaspersky/components/ucp/UcpLicenseType;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v4, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Active:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    invoke-direct {v2, v3, v1, v4, v6}, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;-><init>(Lcom/kaspersky/components/ucp/UcpLicenseType;[BLcom/kaspersky/components/ucp/UcpLicenseStatus;I)V

    aput-object v2, v0, v7

    .line 171
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-array v0, v7, [Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    new-instance v1, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    sget-object v3, Lcom/kaspersky/components/ucp/UcpLicenseType;->MobileActivationInfo:Lcom/kaspersky/components/ucp/UcpLicenseType;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v4, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Active:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    invoke-direct {v1, v3, v2, v4, v6}, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;-><init>(Lcom/kaspersky/components/ucp/UcpLicenseType;[BLcom/kaspersky/components/ucp/UcpLicenseStatus;I)V

    aput-object v1, v0, v6

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lts;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x3

    .line 42
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x9

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x9

    return v0
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 111
    const-class v1, LsL;

    monitor-enter v1

    .line 113
    :try_start_0
    invoke-static {}, LsL;->getNumberOfKeys()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    invoke-static {}, LsL;->c()V

    .line 115
    invoke-static {}, LsL;->b()V

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, LsL;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
