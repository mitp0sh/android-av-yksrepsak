.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ExpandIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

.field public static final enum IgnoreIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

.field public static final enum PremiumButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

.field public static final enum TryToSolveIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 672
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    const-string v1, "PremiumButtonPressed"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->PremiumButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    const-string v1, "IgnoreIssue"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->IgnoreIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    const-string v1, "TryToSolveIssue"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->TryToSolveIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    const-string v1, "ExpandIssue"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->ExpandIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    .line 671
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->PremiumButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->IgnoreIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->TryToSolveIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->ExpandIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;
    .locals 1

    .prologue
    .line 671
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    return-object v0
.end method
