.class public Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 36
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fragment activity starts "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->a()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 45
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->a()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 46
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fragement activity stops "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
