.class public Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;
.super Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lgn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lqz;->a()V

    .line 25
    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;->onPause()V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lqz;->a(Lgn;)V

    .line 32
    invoke-super {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;->onResume()V

    .line 33
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;->setContentView(I)V

    .line 15
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 16
    return-void
.end method
