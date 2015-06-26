.class public final Lwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaW;


# instance fields
.field private final a:LaU;

.field private volatile b:Lwl;

.field private volatile c:Lwm;


# direct methods
.method public constructor <init>(LaU;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lwj;->a:LaU;

    .line 27
    return-void
.end method

.method static synthetic a(Lwj;)LaU;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lwj;->a:LaU;

    return-object v0
.end method

.method static synthetic a(Lwj;Lwl;)Lwl;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lwj;->b:Lwl;

    return-object v0
.end method

.method static synthetic a(Lwj;Lwm;)Lwm;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lwj;->c:Lwm;

    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0, p0}, LaC;->a(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lwj;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lwj;->a:LaU;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorLicenseExpired:Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v2, ""

    invoke-interface {v0, p1, v1, v2}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lwj;->b:Lwl;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Lwl;

    invoke-direct {v0, p0, p1}, Lwl;-><init>(Lwj;Ljava/lang/String;)V

    iput-object v0, p0, Lwj;->b:Lwl;

    .line 42
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, Lme;

    iget-object v2, p0, Lwj;->b:Lwl;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 43
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->m()I

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lwj;->a:LaU;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorCommandAlreadyInProgress:Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v2, ""

    invoke-interface {v0, p1, v1, v2}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lwj;->a:LaU;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFeatureIsOff:Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v2, ""

    invoke-interface {v0, p1, v1, v2}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    .line 57
    if-eq p2, v0, :cond_4

    .line 58
    if-eqz p2, :cond_2

    .line 59
    const/16 v0, 0x12

    invoke-static {v0}, Lwj;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lwj;->a:LaU;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorLicenseExpired:Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v2, ""

    invoke-interface {v0, p1, v1, v2}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lwj;->c:Lwm;

    if-nez v0, :cond_3

    .line 66
    new-instance v0, Lwm;

    invoke-direct {v0, p0, p1}, Lwm;-><init>(Lwj;Ljava/lang/String;)V

    iput-object v0, p0, Lwj;->c:Lwm;

    .line 67
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, Lvg;

    iget-object v2, p0, Lwj;->c:Lwm;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 68
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    invoke-virtual {v0, p2, v3, v3}, LuV;->a(ZLuU;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p0, Lwj;->a:LaU;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorCommandAlreadyInProgress:Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v2, ""

    invoke-interface {v0, p1, v1, v2}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v0, p0, Lwj;->a:LaU;

    invoke-interface {v0, p1}, LaU;->reportCommandSucced(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Lmk;->h()Lcom/kms/antivirus/MonitorMode;

    move-result-object v0

    sget-object v2, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 84
    :goto_0
    if-ne v0, p2, :cond_3

    .line 86
    if-eqz p2, :cond_2

    .line 87
    const/4 v0, 0x7

    invoke-static {v0}, Lwj;->a(I)Z

    move-result v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Recommended:Lcom/kms/antivirus/MonitorMode;

    invoke-interface {v1, v0}, Lmk;->a(Lcom/kms/antivirus/MonitorMode;)V

    .line 90
    iget-object v0, p0, Lwj;->a:LaU;

    invoke-interface {v0, p1}, LaU;->reportCommandSucced(Ljava/lang/String;)V

    .line 103
    :goto_1
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lwj;->a:LaU;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorLicenseExpired:Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v2, ""

    invoke-interface {v0, p1, v1, v2}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_2
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    invoke-interface {v1, v0}, Lmk;->a(Lcom/kms/antivirus/MonitorMode;)V

    .line 96
    :cond_3
    iget-object v0, p0, Lwj;->a:LaU;

    invoke-interface {v0, p1}, LaU;->reportCommandSucced(Ljava/lang/String;)V

    goto :goto_1
.end method
