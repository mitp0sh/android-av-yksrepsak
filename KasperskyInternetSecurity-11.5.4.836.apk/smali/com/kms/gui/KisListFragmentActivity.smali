.class public abstract Lcom/kms/gui/KisListFragmentActivity;
.super Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lax;
.implements Lgn;


# instance fields
.field private a:LsY;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/kms/gui/KisListFragmentActivity;->c()I

    move-result v0

    invoke-static {p0, v0}, Lnm;->a(Landroid/app/Activity;I)V

    .line 139
    return-void
.end method

.method public static e()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public static f()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/BaseAdapter;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kms/gui/KisListFragmentActivity;->c:Landroid/widget/BaseAdapter;

    .line 143
    iget-object v0, p0, Lcom/kms/gui/KisListFragmentActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    return-void
.end method

.method public final a(Lay;)V
    .locals 1

    .prologue
    .line 68
    .line 69
    new-instance v0, Lnu;

    invoke-direct {v0, p0, p1}, Lnu;-><init>(Lcom/kms/gui/KisListFragmentActivity;Lay;)V

    invoke-virtual {p0, v0}, Lcom/kms/gui/KisListFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract c()I
.end method

.method protected final d(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-virtual {p0}, Lcom/kms/gui/KisListFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 43
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/kms/gui/KisListFragmentActivity;->setContentView(I)V

    .line 45
    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/KisTheme;->getThemeResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kms/gui/KisListFragmentActivity;->setTheme(I)V

    .line 46
    invoke-direct {p0}, Lcom/kms/gui/KisListFragmentActivity;->b()V

    .line 47
    invoke-virtual {p0}, Lcom/kms/gui/KisListFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 50
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;->onContentChanged()V

    .line 149
    iget-object v0, p0, Lcom/kms/gui/KisListFragmentActivity;->b:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 150
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/kms/gui/KisListFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kms/gui/KisListFragmentActivity;->b:Landroid/widget/ListView;

    .line 151
    iget-object v0, p0, Lcom/kms/gui/KisListFragmentActivity;->b:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/KisListFragmentActivity;->c:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/kms/gui/KisListFragmentActivity;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 159
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/kms/gui/KisListFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/KisListFragmentActivity;->a:LsY;

    .line 36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/kms/gui/KisListFragmentActivity;->c()I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/kms/gui/KisListFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 112
    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
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

    .line 134
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 128
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const-string v1, "com.kms.gui.helpid"

    invoke-virtual {p0}, Lcom/kms/gui/KisListFragmentActivity;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/kms/gui/KisListFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x7f0b022e
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/kms/gui/KisListFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lqz;->a()V

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;->onPause()V

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-static {p0}, Lqz;->a(Lgn;)V

    .line 93
    invoke-super {p0}, Lcom/google/android/apps/analytics/easytracking/TrackedFragmentActivity;->onResume()V

    .line 95
    return-void
.end method
