.class public Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    return-void
.end method

.method private b(II)V
    .locals 0

    .prologue
    .line 151
    invoke-static {}, Lqq;->a()Z

    .line 152
    invoke-virtual {p0, p2}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->setContentView(I)V

    .line 156
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v3

    .line 69
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    const v1, 0x7f0b0112

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 71
    const v2, 0x7f0b010b

    invoke-virtual {p0, v2}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 101
    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 105
    invoke-static {v1}, Lcom/kms/kmsshared/Utils;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    .line 108
    const v0, 0x7f030061

    const v1, 0x7f030078

    invoke-direct {p0, v0, v1}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->b(II)V

    .line 109
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->i()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    const v1, 0x7f070269

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    .line 139
    const v0, 0x7f030060

    const v1, 0x7f030077

    invoke-direct {p0, v0, v1}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->b(II)V

    .line 140
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->c()V

    .line 142
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    .line 146
    const v0, 0x7f030062

    const v1, 0x7f030079

    invoke-direct {p0, v0, v1}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->b(II)V

    .line 147
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->j()V

    .line 148
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v0, 0x7f0b0113

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lsj;->f()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method private static k()V
    .locals 7

    .prologue
    .line 175
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 176
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 177
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statusbar"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 178
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    const-string v2, "collapse"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 182
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 183
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-static {}, Lcom/kms/kmsshared/KMSLog;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->finish()V

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->h()V

    goto :goto_0

    .line 94
    :pswitch_3
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->f()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x7f0b0111
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 43
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DeviceAdminLockScreenActivity.customtext"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->b:Ljava/lang/String;

    .line 46
    invoke-static {}, Lqq;->a()Z

    .line 47
    const v0, 0x7f030077

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a(II)V

    .line 51
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->c()V

    .line 52
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 119
    iget v1, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->g()V

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v1, "reason"

    const-string v2, "die"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    invoke-static {}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->k()V

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onWindowFocusChanged(Z)V

    .line 64
    return-void
.end method
