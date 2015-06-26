.class final LpZ;
.super LoY;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, LpY;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    invoke-direct {p0, v0, v1}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;)V

    .line 88
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    const-string v0, ""

    return-object v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
