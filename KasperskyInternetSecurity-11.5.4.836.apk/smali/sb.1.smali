.class public final Lsb;
.super Lss;
.source "SourceFile"


# static fields
.field private static final a:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lsp;

    const/4 v1, 0x0

    new-instance v2, Lsp;

    const-string v3, "apMode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    new-instance v1, Lsp;

    const-string v2, "sms_apOn"

    invoke-static {}, Lqq;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lsp;

    const-string v3, "last_sms_observed_date"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsb;->a:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lsb;->a:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 25
    invoke-virtual {p0}, Lsb;->A()V

    .line 26
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsb;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsb;->a(ILjava/lang/Object;)Lss;

    .line 34
    return-void
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsb;->a(ILjava/lang/Object;)Lss;

    .line 46
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsb;->a(ILjava/lang/Object;)Lss;

    .line 42
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsb;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsb;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
