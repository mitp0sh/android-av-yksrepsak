.class public Lcom/kms/updater/gui/UpdateActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Landroid/widget/TextView;

.field private f:Landroid/os/Handler;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/TextView;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->d:Z

    .line 127
    new-instance v0, LwK;

    invoke-direct {v0, p0, v1}, LwK;-><init>(Lcom/kms/updater/gui/UpdateActivity;B)V

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    .line 135
    iput-boolean v1, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Z

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 187
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 191
    invoke-direct {p0}, Lcom/kms/updater/gui/UpdateActivity;->c()V

    .line 192
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->a:Landroid/widget/Button;

    const v1, 0x7f07011c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 200
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->e:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070119

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 207
    return-void

    .line 204
    :cond_0
    const v0, 0x7f07011d

    goto :goto_0
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 172
    if-ne p1, v3, :cond_0

    .line 173
    if-eqz p2, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 175
    const/4 v1, 0x0

    sget-object v2, Lcom/kms/antivirus/AntivirusUpdateReason;->OnDemand:Lcom/kms/antivirus/AntivirusUpdateReason;

    invoke-virtual {v0, v3, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(ZLru;Lcom/kms/antivirus/AntivirusUpdateReason;)I

    .line 176
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->a(Landroid/os/Handler;)Z

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->a(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 241
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->d:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 244
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->n()V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Z

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 248
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->b(Landroid/os/Handler;)V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Z

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->finish()V

    .line 253
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->setTheme(I)V

    .line 142
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v0, 0x7f0300aa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/updater/gui/UpdateActivity;->a(II)V

    .line 145
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->a:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f0b01e6

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->b:Landroid/view/View;

    .line 149
    const v0, 0x7f0b01e9

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->c:Landroid/view/View;

    .line 150
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->e:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0b01e8

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->g:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0b01eb

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->j:Landroid/view/View;

    .line 153
    const v0, 0x7f0b01ec

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->h:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0b01ed

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->i:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0b01ee

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->k:Landroid/widget/ProgressBar;

    .line 156
    const v0, 0x7f0b01ea

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->l:Landroid/widget/TextView;

    .line 158
    invoke-direct {p0}, Lcom/kms/updater/gui/UpdateActivity;->c()V

    .line 160
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Z

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 162
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->a(Landroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Z

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Z

    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->finish()V

    .line 167
    :cond_1
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->b()V

    .line 168
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 230
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->b(Landroid/os/Handler;)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Z

    .line 233
    :cond_0
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onDestroy()V

    .line 234
    return-void
.end method
