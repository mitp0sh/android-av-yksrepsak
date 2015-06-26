.class final Lpr;
.super LoY;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lpp;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    invoke-direct {p0, v0, v1}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;)V

    .line 99
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 103
    const-string v0, ""

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v0

    invoke-interface {v0}, LpA;->f()V

    .line 109
    return-void
.end method
