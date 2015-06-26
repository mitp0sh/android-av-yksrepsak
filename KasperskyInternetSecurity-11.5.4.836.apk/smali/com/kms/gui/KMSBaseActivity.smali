.class public abstract Lcom/kms/gui/KMSBaseActivity;
.super Lcom/google/android/apps/analytics/easytracking/TrackedActivity;
.source "SourceFile"

# interfaces
.implements Lgn;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/gui/KMSBaseActivity;->a:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 40
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->setContentView(I)V

    .line 43
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p0, p2}, Lcom/kms/gui/KMSBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->d()V

    .line 49
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->e()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->e()I

    move-result v0

    const/high16 v1, 0x7f100000

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->b()I

    move-result v0

    if-nez v0, :cond_2

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 52
    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b()I
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->b()I

    move-result v0

    invoke-static {p0, v0}, Lnm;->a(Landroid/app/Activity;I)V

    .line 57
    return-void
.end method

.method final e()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/kms/gui/KMSBaseActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 93
    :pswitch_1
    const/high16 v0, 0x7f100000

    goto :goto_0

    .line 97
    :pswitch_2
    const v0, 0x7f100001

    goto :goto_0

    .line 101
    :pswitch_3
    const v0, 0x7f100004

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/gui/KMSBaseActivity;->a:I

    .line 32
    invoke-super {p0, p1}, Lcom/google/android/apps/analytics/easytracking/TrackedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/google/android/apps/analytics/easytracking/TrackedActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->e()I

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->b()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 130
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v1, "com.kms.gui.helpid"

    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x7f0b022e
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lqz;->a()V

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedActivity;->onPause()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "onResume() enter"

    invoke-static {v0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Lqz;->a(Lgn;)V

    .line 74
    invoke-super {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedActivity;->onResume()V

    .line 75
    const-string v0, "onResume() exit"

    invoke-static {v0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;)V

    .line 76
    return-void
.end method
