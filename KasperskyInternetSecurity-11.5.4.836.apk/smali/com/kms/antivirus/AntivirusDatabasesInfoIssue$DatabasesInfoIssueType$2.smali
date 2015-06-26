.class final enum Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType$2;
.super Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/kms/issues/IssueType;IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 114
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;-><init>(Ljava/lang/String;ILcom/kms/issues/IssueType;IILjava/lang/String;Lmc;)V

    return-void
.end method


# virtual methods
.method public final trySolve()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->BasesUpdateRequested:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 118
    return-void
.end method
