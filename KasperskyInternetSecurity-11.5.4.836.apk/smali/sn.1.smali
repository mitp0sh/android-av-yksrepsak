.class public final Lsn;
.super Lss;
.source "SourceFile"


# static fields
.field private static final a:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lsp;

    new-instance v1, Lsp;

    const-string v2, "quizEnabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lsp;

    const-string v3, "quizUrl"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsn;->a:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lsn;->a:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 17
    invoke-virtual {p0}, Lsn;->A()V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lsn;->a(ILjava/lang/Object;)Lss;

    .line 35
    invoke-virtual {p0}, Lsn;->g_()V

    .line 36
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsn;->a(ILjava/lang/Object;)Lss;

    .line 26
    invoke-virtual {p0}, Lsn;->g_()V

    .line 27
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsn;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsn;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
