.class public Lcom/kms/updater/gui/KMSConfirmUpdateActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lt;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;I)I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    const-string p0, ""

    .line 89
    :cond_0
    return-object p0
.end method

.method public static synthetic a(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;Z)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->b:Z

    return v0
.end method

.method public static synthetic b(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->f()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    invoke-virtual {v2}, Lwz;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->finish()V

    .line 50
    return-void
.end method

.method public static synthetic c(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->d:Z

    return v0
.end method

.method public static synthetic d(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->b:Z

    return v0
.end method

.method public static synthetic e(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->c()V

    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 53
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0b006c

    invoke-virtual {p0, v1}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    const v2, 0x7f0b006d

    invoke-virtual {p0, v2}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 57
    iget v3, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 58
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const v0, 0x7f070244

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 62
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->g()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->i()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v3, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 66
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 68
    const v0, 0x7f070240

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->g()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->i()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private g()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private h()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 191
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private i()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 195
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 236
    new-instance v0, LwJ;

    invoke-direct {v0, p0, p1}, LwJ;-><init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->b:Z

    if-nez v0, :cond_0

    .line 222
    new-instance v0, LwI;

    invoke-direct {v0, p0, p1}, LwI;-><init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;I)V

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 231
    :cond_0
    iget-boolean v0, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->b:Z

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f070242

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v0, 0x7f03001b

    invoke-virtual {p0, v0, v6}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a(II)V

    .line 125
    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 126
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    const v1, 0x7f070241

    invoke-virtual {p0, v1}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    invoke-virtual {v1}, Lwz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->c:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com_kms_confupdateactivity_fromgui"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->d:Z

    .line 133
    const-string v1, "unknown"

    .line 134
    iput v7, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a:I

    .line 135
    iput-boolean v6, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->b:Z

    .line 136
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->f()V

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 139
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    iget-object v3, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 144
    const-string v3, "unknown"

    iput-object v3, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->c:Ljava/lang/String;

    .line 147
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    iget-object v1, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->c:Ljava/lang/String;

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->i()Landroid/widget/Button;

    move-result-object v0

    .line 150
    const v1, 0x7f070243

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 151
    new-instance v1, LwF;

    invoke-direct {v1, p0}, LwF;-><init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->h()Landroid/widget/Button;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 162
    new-instance v1, LwG;

    invoke-direct {v1, p0}, LwG;-><init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->g()Landroid/widget/Button;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 176
    new-instance v1, LwH;

    invoke-direct {v1, p0}, LwH;-><init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void

    .line 140
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 94
    if-ne p1, v1, :cond_0

    .line 95
    const v0, 0x7f07024a

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, LoN;

    invoke-direct {v1, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070249

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    invoke-virtual {v1, v0}, LoN;->b(Ljava/lang/CharSequence;)LoN;

    move-result-object v0

    const v1, 0x7f07024b

    new-instance v2, LwE;

    invoke-direct {v2, p0}, LwE;-><init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v1, 0x7f07024c

    new-instance v2, LwD;

    invoke-direct {v2, p0}, LwD;-><init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V

    invoke-virtual {v0, v1, v2}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onStop()V

    .line 79
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lwz;->a(Lt;Z)V

    .line 80
    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->finish()V

    .line 83
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    invoke-virtual {v0}, Lwz;->d()V

    .line 206
    :cond_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onWindowFocusChanged(Z)V

    .line 207
    return-void
.end method
