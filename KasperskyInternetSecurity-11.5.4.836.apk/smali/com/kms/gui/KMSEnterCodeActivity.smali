.class public Lcom/kms/gui/KMSEnterCodeActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field private c:Z

.field private d:I

.field private e:Z

.field private f:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

.field private g:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

.field private h:Loj;

.field private i:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->EnterMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-virtual {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ChangeMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-virtual {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kms/gui/KMSEnterCodeActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 41
    new-instance v0, Lnt;

    invoke-direct {v0, p0}, Lnt;-><init>(Lcom/kms/gui/KMSEnterCodeActivity;)V

    iput-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->h:Loj;

    .line 239
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/KMSEnterCodeActivity;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 121
    iput p1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->d:I

    .line 123
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    iput-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->f:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    .line 124
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    iget-object v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->f:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)V

    .line 125
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->f()V

    .line 126
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->f:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->requestFocus()Z

    .line 127
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 57
    const-string v0, "com.kms.gui.entercodemode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Ljava/lang/String;

    .line 61
    :cond_0
    new-instance v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    invoke-static {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->valueOf(Ljava/lang/String;)Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    move-result-object v0

    iget-object v3, p0, Lcom/kms/gui/KMSEnterCodeActivity;->h:Loj;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;-><init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;Loj;Landroid/support/v4/app/DialogFragment;)V

    iput-object v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    .line 63
    const-string v0, "com.kms.gui.entercodefullscreen"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 69
    :cond_1
    const-string v0, "com.kms.gui.unblockuninstall"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Z

    .line 70
    return-void

    .line 73
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expect extras not null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const v0, 0x7f0b00a0

    .line 146
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kms/gui/KMSEnterCodeActivity;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Z

    return v0
.end method

.method private c()Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    invoke-virtual {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b()Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->c()Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ChangeMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-ne v0, v1, :cond_1

    .line 136
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Z)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->d:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->e:Z

    if-eqz v0, :cond_0

    .line 161
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(I)V

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 90
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 92
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->setContentView(I)V

    .line 95
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->d()V

    .line 98
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->e()I

    move-result v0

    const/high16 v1, 0x7f100000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 102
    :cond_1
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->a(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(I)V

    .line 104
    iput-boolean v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->e:Z

    .line 105
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 211
    :pswitch_0
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701aa

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    const v1, 0x7f0701ab

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    const v1, 0x7f0701ac

    iget-object v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v1, 0x7f0701ad

    iget-object v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 169
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lsj;->d()Z

    move-result v1

    .line 173
    if-eqz v1, :cond_4

    .line 175
    if-eq p1, v2, :cond_1

    const/4 v1, 0x7

    if-gt p1, v1, :cond_0

    const/16 v1, 0x10

    if-ge p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    .line 179
    :cond_1
    if-ne p1, v2, :cond_3

    .line 181
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->moveTaskToBack(Z)Z

    .line 202
    :cond_2
    :goto_0
    return v0

    .line 184
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 190
    :cond_4
    if-ne p1, v2, :cond_5

    .line 192
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->c()Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    move-result-object v1

    .line 193
    sget-object v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ChangeMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->EnterRecoveryMode:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-eq v1, v2, :cond_5

    .line 198
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 202
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
