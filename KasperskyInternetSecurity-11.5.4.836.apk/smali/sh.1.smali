.class public final Lsh;
.super Lss;
.source "SourceFile"


# static fields
.field private static final a:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    const/16 v0, 0xe

    new-array v0, v0, [Lsp;

    new-instance v1, Lsp;

    const-string v2, "backup_monitor_prev_value"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Lsp;

    const-string v2, "backup_monitor_mode_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Lsp;

    const-string v3, "backup_as_mode_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lsp;

    const-string v3, "backup_as_mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lsp;

    const-string v3, "backup_at_watch_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lsp;

    const-string v3, "backup_ap_mode_with_extended"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lsp;

    const-string v3, "backup_ap_mode_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lsp;

    const-string v3, "backup_at_mugshot_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lsp;

    const-string v3, "backup_at_block_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lsp;

    const-string v3, "backup_at_wipe_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lsp;

    const-string v3, "backup_at_find_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lsp;

    const-string v3, "backup_at_reset_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lsp;

    const-string v3, "backup_sms_ap_mode"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lsp;

    const-string v3, "backup_sms_ap_mode_changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsh;->a:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lsh;->a:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 43
    invoke-virtual {p0}, Lsh;->A()V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsh;->a(ILjava/lang/Object;)Lss;

    .line 52
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lsh;->a(ILjava/lang/Object;)Lss;

    .line 100
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsh;->a(ILjava/lang/Object;)Lss;

    .line 60
    return-void
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsh;->a(ILjava/lang/Object;)Lss;

    .line 68
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsh;->a(ILjava/lang/Object;)Lss;

    .line 76
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsh;->a(ILjava/lang/Object;)Lss;

    .line 84
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsh;->a(ILjava/lang/Object;)Lss;

    .line 92
    return-void
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 107
    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsh;->a(ILjava/lang/Object;)Lss;

    .line 108
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x5

    invoke-super {p0, v0}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x6

    invoke-super {p0, v0}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final g()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0xc

    invoke-super {p0, v0}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final h()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0xd

    invoke-super {p0, v0}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
