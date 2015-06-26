.class final Lpt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/kms/issues/IssueChangeType;

.field private final b:Lps;


# direct methods
.method private constructor <init>(Lcom/kms/issues/IssueChangeType;Lps;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lpt;->a:Lcom/kms/issues/IssueChangeType;

    .line 11
    iput-object p2, p0, Lpt;->b:Lps;

    .line 12
    return-void
.end method

.method public static a(Lps;)Lpt;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lpt;

    sget-object v1, Lcom/kms/issues/IssueChangeType;->Added:Lcom/kms/issues/IssueChangeType;

    invoke-direct {v0, v1, p0}, Lpt;-><init>(Lcom/kms/issues/IssueChangeType;Lps;)V

    return-object v0
.end method

.method public static b(Lps;)Lpt;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lpt;

    sget-object v1, Lcom/kms/issues/IssueChangeType;->Removed:Lcom/kms/issues/IssueChangeType;

    invoke-direct {v0, v1, p0}, Lpt;-><init>(Lcom/kms/issues/IssueChangeType;Lps;)V

    return-object v0
.end method

.method public static c(Lps;)Lpt;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lpt;

    sget-object v1, Lcom/kms/issues/IssueChangeType;->Changed:Lcom/kms/issues/IssueChangeType;

    invoke-direct {v0, v1, p0}, Lpt;-><init>(Lcom/kms/issues/IssueChangeType;Lps;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/kms/issues/IssueChangeType;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lpt;->a:Lcom/kms/issues/IssueChangeType;

    return-object v0
.end method

.method public final b()Lps;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lpt;->b:Lps;

    return-object v0
.end method
