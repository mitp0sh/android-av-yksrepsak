.class public final Lsc;
.super Lss;
.source "SourceFile"


# static fields
.field private static final a:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lsp;

    new-instance v1, Lsp;

    const-string v2, "checkContacts"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Lsp;

    const-string v2, "blockNonNumeric"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lsp;

    const-string v3, "blackWhiteFlags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lsp;

    const-string v3, "asStartDate"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsc;->a:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lsc;->a:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 22
    invoke-virtual {p0}, Lsc;->A()V

    .line 23
    return-void
.end method
