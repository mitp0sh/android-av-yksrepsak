.class public final Ltu;
.super LsX;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(LaD;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, LsX;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ltu;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    new-instance v0, Ltv;

    invoke-direct {v0, p1}, Ltv;-><init>(LaD;)V

    iput-object v0, p0, Ltu;->a:Lay;

    .line 37
    invoke-direct {p0}, Ltu;->p()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ltv;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, LsX;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ltu;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    iput-object p1, p0, Ltu;->a:Lay;

    .line 42
    invoke-direct {p0}, Ltu;->p()V

    .line 43
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Ltu;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 50
    invoke-direct {p0}, Ltu;->q()V

    .line 51
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private q()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Ltu;->a:Lay;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v3

    .line 56
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v3, v2}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    if-eq v0, v4, :cond_1

    move v0, v1

    .line 60
    :goto_0
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 62
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 69
    invoke-virtual {v3}, Lsk;->g_()V

    .line 78
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 59
    goto :goto_0

    .line 72
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 75
    invoke-virtual {v3}, Lsk;->g_()V

    goto :goto_1
.end method


# virtual methods
.method public final a()Lay;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Ltu;->a:Lay;

    return-object v0
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ltu;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {p1, v0}, LsN;->a(II)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const v0, 0x7fffffff

    .line 137
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, LsD;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v0

    .line 149
    const-string v1, "lisence_creation_date_key"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsu;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Ltu;->d()I

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltu;->d()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final j()Z
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->a()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 208
    new-instance v0, LtG;

    invoke-direct {v0}, LtG;-><init>()V

    .line 210
    invoke-virtual {v0}, LtG;->a()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v0}, LtG;->b()Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v2, "{\"ActivationCenters\":null,\"ExtraData\":null,\"Notifications\":[],\"ResultCode\":0,\"TicketBody\":%s,\"TicketHeader\":%s,\"MyAccountRegistrationFormUrl\":null,\"UserDataForm\":null}"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->n()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    new-array v0, v4, [Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    new-instance v3, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    sget-object v4, Lcom/kaspersky/components/ucp/UcpLicenseType;->Activation2Ticket:Lcom/kaspersky/components/ucp/UcpLicenseType;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v5, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Active:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;-><init>(Lcom/kaspersky/components/ucp/UcpLicenseType;[BLcom/kaspersky/components/ucp/UcpLicenseStatus;I)V

    aput-object v3, v0, v6

    new-instance v1, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    sget-object v3, Lcom/kaspersky/components/ucp/UcpLicenseType;->ActivationCode:Lcom/kaspersky/components/ucp/UcpLicenseType;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v4, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Active:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    invoke-direct {v1, v3, v2, v4, v6}, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;-><init>(Lcom/kaspersky/components/ucp/UcpLicenseType;[BLcom/kaspersky/components/ucp/UcpLicenseStatus;I)V

    aput-object v1, v0, v7

    .line 223
    :goto_0
    return-object v0

    .line 221
    :cond_0
    new-array v0, v7, [Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    new-instance v2, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    sget-object v3, Lcom/kaspersky/components/ucp/UcpLicenseType;->Activation2Ticket:Lcom/kaspersky/components/ucp/UcpLicenseType;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v4, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Active:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    invoke-direct {v2, v3, v1, v4, v6}, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;-><init>(Lcom/kaspersky/components/ucp/UcpLicenseType;[BLcom/kaspersky/components/ucp/UcpLicenseStatus;I)V

    aput-object v2, v0, v6

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/16 v0, 0x8

    .line 87
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public final m()I
    .locals 5

    .prologue
    const/4 v1, 0x7

    const/4 v3, 0x0

    .line 101
    const/16 v2, 0x9

    .line 102
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v3}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    .line 107
    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    .line 113
    :goto_1
    return v0

    :cond_0
    move v0, v3

    .line 106
    goto :goto_0

    :cond_1
    move v0, v1

    .line 111
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ltu;->a:Lay;

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltu;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/16 v0, 0x11

    .line 95
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method
