.class public final LpL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/issues/KisIssuesFragment;


# direct methods
.method public constructor <init>(Lcom/kms/issues/KisIssuesFragment;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, LpL;->a:Lcom/kms/issues/KisIssuesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ShowPremiumFeatures:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 106
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->PremiumButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;)V

    .line 107
    return-void
.end method
