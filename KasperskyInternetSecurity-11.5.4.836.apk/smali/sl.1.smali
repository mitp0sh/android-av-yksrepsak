.class public Lsl;
.super Lss;
.source "SourceFile"


# static fields
.field private static final a:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lsp;

    new-instance v1, Lsp;

    const-string v2, "monitor_mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Lsp;

    const-string v2, "monitor_scanModeFlags"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lsp;

    const-string v3, "monitor_cleanModeValues"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsl;->a:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lsl;->a:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 27
    invoke-virtual {p0}, Lsl;->A()V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsl;->a(ILjava/lang/Object;)Lss;

    .line 49
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsl;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsl;->a(ILjava/lang/Object;)Lss;

    .line 53
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsl;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsl;->a(ILjava/lang/Object;)Lss;

    .line 57
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsl;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final g_()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lss;->g_()V

    .line 33
    return-void
.end method
