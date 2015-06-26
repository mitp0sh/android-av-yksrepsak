.class public final Lsz;
.super Lss;
.source "SourceFile"


# static fields
.field private static final a:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lsp;

    new-instance v1, Lsp;

    const-string v2, "current_wizard_step"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lsp;

    const-string v3, "wizard_completed"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lsp;

    const-string v3, "wizard_start_time_in_ms"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsz;->a:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lsz;->a:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 17
    invoke-virtual {p0}, Lsz;->A()V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsz;->a(ILjava/lang/Object;)Lss;

    .line 34
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsz;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lsz;->a(ILjava/lang/Object;)Lss;

    .line 26
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsz;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
