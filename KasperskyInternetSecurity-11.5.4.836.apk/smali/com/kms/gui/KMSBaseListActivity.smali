.class public abstract Lcom/kms/gui/KMSBaseListActivity;
.super Lcom/google/android/apps/analytics/easytracking/TrackedListActivity;
.source "SourceFile"

# interfaces
.implements Lax;
.implements Lgn;


# instance fields
.field protected a:LsY;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedListActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/gui/KMSBaseListActivity;->b:I

    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 97
    instance-of v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;

    if-eqz v0, :cond_0

    .line 98
    const/16 v0, 0x10

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnm;->a(Landroid/app/Activity;I)V

    .line 164
    return-void
.end method

.method public static i()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method


# virtual methods
.method protected final a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 42
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->setContentView(I)V

    .line 45
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0, p2}, Lcom/kms/gui/KMSBaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;->c()V

    .line 50
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 53
    return-void
.end method

.method public final a(Lay;)V
    .locals 1

    .prologue
    .line 75
    .line 76
    new-instance v0, Lno;

    invoke-direct {v0, p0, p1}, Lno;-><init>(Lcom/kms/gui/KMSBaseListActivity;Lay;)V

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSBaseListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/apps/analytics/easytracking/TrackedListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/KMSBaseListActivity;->a:LsY;

    .line 36
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/google/android/apps/analytics/easytracking/TrackedListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    return v0

    .line 147
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const-string v2, "com.kms.gui.helpid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSBaseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x7f0b022e
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lqz;->a()V

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedListActivity;->onPause()V

    .line 65
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;->b()I

    move-result v0

    .line 66
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/kms/gui/KMSBaseListActivity;->a:LsY;

    invoke-interface {v1, v0}, LsY;->c(I)V

    .line 70
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-static {p0}, Lqz;->a(Lgn;)V

    .line 106
    invoke-super {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedListActivity;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;->b()I

    move-result v0

    .line 109
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/kms/gui/KMSBaseListActivity;->a:LsY;

    invoke-interface {v1, p0, v0}, LsY;->a(Lax;I)Z

    move-result v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    const-string v0, "Failed to subscribe"

    invoke-static {v0}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method
