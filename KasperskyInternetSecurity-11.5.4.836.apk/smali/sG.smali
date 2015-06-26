.class public final LsG;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 50
    if-eqz p0, :cond_0

    .line 51
    new-instance v0, LsI;

    invoke-direct {v0, p0, p1}, LsI;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 24
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LsH;

    invoke-direct {v1, p0, p1}, LsH;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, LsG;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
