.class public final LeN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LnX;


# instance fields
.field private volatile a:Z

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:LnT;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, LeN;->a:Z

    .line 26
    iput-boolean v0, p0, LeN;->b:Z

    .line 31
    iput-object p1, p0, LeN;->c:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 114
    invoke-static {p1}, Lcom/kms/antivirus/MonitorMode;->getById(I)Lcom/kms/antivirus/MonitorMode;

    move-result-object v0

    invoke-static {p2}, Lcom/kms/antivirus/MonitorMode;->getById(I)Lcom/kms/antivirus/MonitorMode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LeN;->a(Lcom/kms/antivirus/MonitorMode;Lcom/kms/antivirus/MonitorMode;)V

    .line 115
    return-void
.end method

.method private a(Lcom/kms/antivirus/MonitorMode;Lcom/kms/antivirus/MonitorMode;)V
    .locals 1

    .prologue
    .line 118
    if-ne p1, p2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0, p2}, Lmk;->a(Lcom/kms/antivirus/MonitorMode;)V

    .line 124
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Extended:Lcom/kms/antivirus/MonitorMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Extended:Lcom/kms/antivirus/MonitorMode;

    if-ne p2, v0, :cond_0

    .line 125
    :cond_2
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Extended:Lcom/kms/antivirus/MonitorMode;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, LeN;->a(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(LeN;II)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, LeN;->a(II)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, LeN;->b:Z

    .line 45
    iput-boolean p1, p0, LeN;->a:Z

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, LeN;->c:Landroid/content/Context;

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    new-instance v1, LnT;

    iget-object v2, p0, LeN;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3, v0}, LnT;-><init>(Landroid/content/Context;LnX;ILjava/lang/String;)V

    iput-object v1, p0, LeN;->d:LnT;

    .line 53
    iget-object v0, p0, LeN;->d:LnT;

    invoke-virtual {v0}, LnT;->a()V

    .line 54
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, LeN;->c:Landroid/content/Context;

    const v1, 0x7f0700e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(LeN;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, LeN;->b:Z

    return v0
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 35
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    invoke-virtual {v0}, Lsl;->c()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2

    .line 36
    new-instance v1, LoN;

    iget-object v2, p0, LeN;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07023e

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f07023f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f0a0016

    const v3, 0x7f0a0017

    new-instance v4, LeO;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, LeO;-><init>(LeN;B)V

    invoke-virtual {v1, v2, v3, v0, v4}, LoN;->a(IIILoO;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    iget-boolean v1, p0, LeN;->a:Z

    invoke-interface {v0, v1}, Lgz;->a(Z)V
    :try_end_0
    .catch Lcom/kavsdk/license/SdkLicenseViolationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    invoke-interface {v0}, Lgz;->b()Z

    move-result v0

    .line 76
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v1

    invoke-interface {v1}, Lmk;->h()Lcom/kms/antivirus/MonitorMode;

    move-result-object v1

    sget-object v2, Lcom/kms/antivirus/MonitorMode;->Extended:Lcom/kms/antivirus/MonitorMode;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/MonitorMode;->Recommended:Lcom/kms/antivirus/MonitorMode;

    invoke-interface {v0, v1}, Lmk;->a(Lcom/kms/antivirus/MonitorMode;)V

    .line 79
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, LeN;->b:Z

    .line 84
    return-void
.end method
