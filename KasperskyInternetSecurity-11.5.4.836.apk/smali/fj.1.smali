.class public abstract Lfj;
.super Lfs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lax;
.implements LeK;
.implements LeL;


# instance fields
.field protected a:Lfl;

.field protected b:Landroid/view/LayoutInflater;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/util/Vector;

.field protected e:Landroid/support/v4/app/Fragment;

.field protected f:Lcom/kms/kmsshared/KMSApplication;

.field protected g:Lay;

.field private h:Landroid/widget/ListView;

.field private final i:LoQ;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lfs;-><init>()V

    .line 63
    iput-object p1, p0, Lfj;->b:Landroid/view/LayoutInflater;

    .line 64
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfj;->c:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    .line 66
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    iput-object v0, p0, Lfj;->f:Lcom/kms/kmsshared/KMSApplication;

    .line 67
    new-instance v0, LoQ;

    invoke-direct {v0, p2, p0}, LoQ;-><init>(Landroid/support/v4/app/Fragment;LeL;)V

    iput-object v0, p0, Lfj;->i:LoQ;

    .line 68
    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lfj;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfj;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public static r()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 71
    return-object p2
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    .line 284
    instance-of v1, v0, LfC;

    if-eqz v1, :cond_0

    .line 285
    check-cast v0, LfC;

    .line 286
    iget-object v1, p0, Lfj;->h:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 287
    sub-int v1, p1, v1

    .line 288
    iget-object v2, p0, Lfj;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1, p2, p3}, LfC;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    .line 150
    instance-of v1, v0, Lfu;

    if-eqz v1, :cond_0

    .line 151
    check-cast v0, Lfu;

    .line 152
    invoke-virtual {v0, p2}, Lfu;->a(Z)V

    .line 153
    iget-object v0, p0, Lfj;->a:Lfl;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lfj;->a:Lfl;

    invoke-virtual {v0}, Lfl;->notifyDataSetChanged()V

    .line 158
    :cond_0
    return-void
.end method

.method protected final a(Landroid/view/View;Ljava/util/Vector;)V
    .locals 4

    .prologue
    .line 75
    iput-object p2, p0, Lfj;->d:Ljava/util/Vector;

    .line 76
    const v0, 0x7f0b0127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lfj;->h:Landroid/widget/ListView;

    .line 77
    iget-object v0, p0, Lfj;->h:Landroid/widget/ListView;

    invoke-static {}, Lqq;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 78
    new-instance v0, Lfl;

    iget-object v1, p0, Lfj;->d:Ljava/util/Vector;

    iget-object v2, p0, Lfj;->b:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lfj;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lfl;-><init>(Ljava/util/Vector;Landroid/view/LayoutInflater;Lfs;)V

    iput-object v0, p0, Lfj;->a:Lfl;

    .line 79
    iget-object v0, p0, Lfj;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lfj;->a:Lfl;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-virtual {p0}, Lfj;->k()V

    .line 81
    return-void
.end method

.method public final a(Lay;)V
    .locals 2

    .prologue
    .line 340
    iput-object p1, p0, Lfj;->g:Lay;

    .line 341
    iget-object v0, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lfk;

    invoke-direct {v1, p0}, Lfk;-><init>(Lfj;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 316
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.kaspersky.kts.gui.settings.only_specified_panel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v0, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 320
    const/4 v0, 0x1

    .line 323
    :cond_0
    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method protected final b(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lfj;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public final b(IZ)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    .line 174
    invoke-virtual {v0}, LfI;->e()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 175
    invoke-virtual {v0, p2}, LfI;->c(Z)V

    .line 176
    iget-object v0, p0, Lfj;->a:Lfl;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lfj;->a:Lfl;

    invoke-virtual {v0}, Lfl;->notifyDataSetChanged()V

    .line 181
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lfj;->c(Z)Ljava/util/Vector;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iput-object v0, p0, Lfj;->d:Ljava/util/Vector;

    .line 138
    iget-object v0, p0, Lfj;->a:Lfl;

    iget-object v1, p0, Lfj;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lfl;->a(Ljava/util/Vector;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lfj;->s()V

    .line 141
    return-void
.end method

.method public final b(I)Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    .line 163
    instance-of v1, v0, Lfu;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Lfu;

    .line 165
    invoke-virtual {v0}, Lfu;->a()Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public final c(IZ)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    .line 185
    instance-of v1, v0, LfE;

    if-eqz v1, :cond_1

    .line 186
    check-cast v0, LfE;

    .line 187
    invoke-virtual {v0}, LfE;->a()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 188
    invoke-virtual {v0, p2}, LfE;->a(Z)V

    .line 189
    iget-object v0, p0, Lfj;->a:Lfl;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lfj;->a:Lfl;

    invoke-virtual {v0}, Lfl;->notifyDataSetChanged()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    instance-of v1, v0, LfC;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, LfC;

    .line 195
    invoke-virtual {v0}, LfC;->b()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 196
    invoke-virtual {v0, p2}, LfC;->b(Z)V

    .line 197
    iget-object v0, p0, Lfj;->a:Lfl;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lfj;->a:Lfl;

    invoke-virtual {v0}, Lfl;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lfj;->i:LoQ;

    invoke-virtual {v0, p1}, LoQ;->a(I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0, p1}, Lfj;->g(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 299
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method protected abstract e()Landroid/view/View;
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lfj;->i:LoQ;

    invoke-virtual {v0, p1}, LoQ;->b(I)V

    .line 304
    return-void
.end method

.method public final f(I)Z
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lfj;->i:LoQ;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, LoQ;->c(I)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public g(I)Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public abstract h()I
.end method

.method protected final h(I)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    invoke-virtual {v0}, LfI;->f()Lcom/kms/kmsshared/DefaultActionHandler$Action;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_0

    .line 360
    iget-object v0, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->a(Lcom/kms/kmsshared/DefaultActionHandler$Action;)V

    .line 362
    :cond_0
    invoke-virtual {p0, p1}, Lfj;->i(I)V

    .line 363
    return-void
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract i(I)V
.end method

.method public final j()Landroid/view/View;
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lfj;->f:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-virtual {p0}, Lfj;->l()I

    move-result v1

    invoke-interface {v0, p0, v1}, LsY;->a(Lax;I)Z

    move-result v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lfj;->f:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-virtual {p0}, Lfj;->l()I

    move-result v1

    invoke-interface {v0, v1}, LsY;->c(I)V

    .line 96
    iget-object v0, p0, Lfj;->f:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-virtual {p0}, Lfj;->l()I

    move-result v1

    invoke-interface {v0, p0, v1}, LsY;->a(Lax;I)Z

    .line 102
    :cond_0
    iget-object v0, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lfj;->e()Landroid/view/View;

    move-result-object v1

    .line 104
    const v2, 0x7f0b00a0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0}, Lfj;->i()Ljava/lang/String;

    move-result-object v2

    .line 107
    const v3, 0x7f0b016f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v2}, Lra;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    invoke-virtual {p0}, Lfj;->k()V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    return-object v1
.end method

.method protected final j(I)V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    invoke-virtual {v0, p1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    .line 398
    return-void
.end method

.method protected final k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    if-eqz v0, :cond_1

    move v1, v2

    .line 126
    :goto_0
    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 127
    invoke-direct {p0}, Lfj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfj;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    invoke-virtual {v0}, LfI;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lfj;->b(IZ)V

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 127
    goto :goto_1

    .line 130
    :cond_1
    return-void
.end method

.method public abstract l()I
.end method

.method public m()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 371
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    const-string v1, "com.kms.gui.helpid"

    invoke-virtual {p0}, Lfj;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b016f
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public p()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method protected s()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method protected t()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method protected u()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lfj;->g:Lay;

    invoke-interface {v0}, Lay;->d()Z

    move-result v0

    return v0
.end method

.method public v()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method protected final w()Ljava/lang/String;
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lfj;->f:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 382
    invoke-interface {v0}, LaC;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 383
    iget-object v0, p0, Lfj;->c:Landroid/content/Context;

    const v1, 0x7f070454

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    .line 385
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    iget-object v2, p0, Lfj;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Ltm;->a(Landroid/content/Context;LaC;)Landroid/util/Pair;

    move-result-object v2

    .line 387
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 389
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final x()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lfj;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 402
    return-void
.end method
