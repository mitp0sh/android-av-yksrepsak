.class public final Lsm;
.super Lss;
.source "SourceFile"


# static fields
.field private static final a:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 20
    const/16 v0, 0xb

    new-array v0, v0, [Lsp;

    new-instance v1, Lsp;

    const-string v2, "mode_changed"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Lsp;

    const-string v2, "current_mode"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lsp;

    const-string v3, "contacts"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lsp;

    const-string v3, "sms"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lsp;

    const-string v3, "calls"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lsp;

    const-string v3, "incomming_calls"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lsp;

    const-string v3, "incomming_sms"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lsp;

    const-string v3, "switch_timeout"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lsp;

    const-string v3, "switch_sms"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lsp;

    const-string v3, "timeout"

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lsp;

    const-string v3, "auto_sync_state_on_pp_enabled"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsm;->a:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lsm;->a:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 35
    invoke-virtual {p0}, Lsm;->A()V

    .line 36
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-wide/16 v0, -0x1

    .line 49
    :goto_0
    return-wide v0

    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-static {}, Lqq;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lsm;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
