.class public Lsx;
.super Lss;
.source "SourceFile"


# static fields
.field private static final a:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [Lsp;

    new-instance v1, Lsp;

    const-string v2, "ucpReady"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lsp;

    const-string v3, "ucpAccountExpirationTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lsp;

    const-string v3, "ucpCurrentStatus"

    sget-object v4, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    invoke-virtual {v4}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lsp;

    const-string v3, "ucpRegistrationCompleted"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lsp;

    const-string v3, "ucpLastAccountCheckDate"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lsp;

    const-string v3, "ucpAgreementVersion"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lsp;

    const-string v3, "ucpDisconnected"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsx;->a:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lsx;->a:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 28
    invoke-virtual {p0}, Lsx;->A()V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsx;->a(ILjava/lang/Object;)Lss;

    .line 76
    return-void
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsx;->a(ILjava/lang/Object;)Lss;

    .line 72
    return-void
.end method

.method public final a(Lcom/kaspersky/components/ucp/UcpConnectionStatus;)V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsx;->a(ILjava/lang/Object;)Lss;

    .line 53
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsx;->a(ILjava/lang/Object;)Lss;

    .line 37
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsx;->a(ILjava/lang/Object;)Lss;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsx;->c(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsx;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/kaspersky/components/ucp/UcpConnectionStatus;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsx;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsx;->a(ILjava/lang/Object;)Lss;

    .line 88
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lsx;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lsx;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lsx;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lsx;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
