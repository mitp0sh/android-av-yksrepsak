.class public final LjU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/KisShieldFragment;


# direct methods
.method public constructor <init>(Lcom/kms/KisShieldFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, LjU;->a:Lcom/kms/KisShieldFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, LjU;->a:Lcom/kms/KisShieldFragment;

    invoke-static {v0}, Lcom/kms/KisShieldFragment;->a(Lcom/kms/KisShieldFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenStatuses:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 139
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;->IssueButtonTap:Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V

    .line 140
    return-void
.end method
