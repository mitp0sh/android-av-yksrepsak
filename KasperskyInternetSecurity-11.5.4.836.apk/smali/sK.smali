.class public final LsK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/kaspersky/components/ucp/UcpServiceId;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ll;Lcom/kaspersky/components/ucp/UcpServiceId;Lcom/kaspersky/components/ucp/UcpDeviceType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LsK;->a:Ljava/lang/String;

    .line 36
    invoke-static {p2}, LsK;->a(Ll;)V

    .line 37
    const-string v0, "ucp.device_inventory_url"

    invoke-interface {p2, v0}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsK;->b:Ljava/lang/String;

    .line 38
    const-string v0, "ucp.dis_url"

    invoke-interface {p2, v0}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsK;->c:Ljava/lang/String;

    .line 39
    const-string v0, "ucp.uis_url"

    invoke-interface {p2, v0}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsK;->d:Ljava/lang/String;

    .line 40
    const-string v0, "ucp.native_portal_url"

    invoke-interface {p2, v0}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsK;->e:Ljava/lang/String;

    .line 41
    const-string v0, "ucp.uis_realm_url"

    invoke-interface {p2, v0}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsK;->f:Ljava/lang/String;

    .line 42
    const-string v0, "ucp.web_portal_realm_url"

    invoke-interface {p2, v0}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsK;->g:Ljava/lang/String;

    .line 43
    iput-object p3, p0, LsK;->h:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 44
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, LsK;->i:Ljava/lang/String;

    .line 45
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, LsK;->j:Ljava/lang/String;

    .line 46
    iput-object p4, p0, LsK;->k:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 47
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, LbB;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsK;->l:Ljava/lang/String;

    .line 48
    iput-object p5, p0, LsK;->m:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private static a(Ll;)V
    .locals 2

    .prologue
    .line 104
    const-string v0, "ucp.device_inventory_url"

    invoke-interface {p0, v0}, Ll;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ucp.dis_url"

    invoke-interface {p0, v0}, Ll;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ucp.uis_url"

    invoke-interface {p0, v0}, Ll;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ucp.native_portal_url"

    invoke-interface {p0, v0}, Ll;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ucp.uis_realm_url"

    invoke-interface {p0, v0}, Ll;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ucp.web_portal_realm_url"

    invoke-interface {p0, v0}, Ll;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid UCP URL configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, LsK;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LsK;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, LsK;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, LsK;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, LsK;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, LsK;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, LsK;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/kaspersky/components/ucp/UcpServiceId;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, LsK;->h:Lcom/kaspersky/components/ucp/UcpServiceId;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, LsK;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, LsK;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lcom/kaspersky/components/ucp/UcpDeviceType;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, LsK;->k:Lcom/kaspersky/components/ucp/UcpDeviceType;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, LsK;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, LsK;->m:Ljava/lang/String;

    return-object v0
.end method
