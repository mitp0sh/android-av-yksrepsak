.class public final Lkr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lkw;

.field private static b:Landroid/os/Handler;

.field private static c:Ljava/lang/Runnable;


# direct methods
.method public static a()Lgp;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lgp;

    new-instance v1, Lks;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v3, 0x7f060014

    invoke-direct {v1, v2, v3}, Lks;-><init>(Landroid/content/Context;I)V

    const-string v2, "qwerty"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgp;-><init>(LbA;[C)V

    return-object v0
.end method

.method private static a(I)Lkt;
    .locals 4

    .prologue
    const v0, 0x7f020070

    .line 249
    const/4 v2, -0x1

    .line 250
    const v1, 0x7f020080

    .line 252
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v1, v2

    .line 275
    :goto_0
    new-instance v2, Lkt;

    invoke-direct {v2, v1, v0}, Lkt;-><init>(II)V

    .line 281
    return-object v2

    .line 254
    :pswitch_1
    const v1, 0x7f070348

    .line 256
    goto :goto_0

    .line 258
    :pswitch_2
    const v0, 0x7f07034a

    move v3, v1

    move v1, v0

    move v0, v3

    .line 259
    goto :goto_0

    .line 261
    :pswitch_3
    const v0, 0x7f070349

    move v3, v1

    move v1, v0

    move v0, v3

    .line 262
    goto :goto_0

    .line 264
    :pswitch_4
    const v0, 0x7f07034b

    move v3, v1

    move v1, v0

    move v0, v3

    .line 265
    goto :goto_0

    .line 267
    :pswitch_5
    const v0, 0x7f07034c

    move v3, v1

    move v1, v0

    move v0, v3

    .line 268
    goto :goto_0

    .line 270
    :pswitch_6
    const v0, 0x7f070190

    move v3, v1

    move v1, v0

    move v0, v3

    .line 271
    goto :goto_0

    .line 273
    :pswitch_7
    const v1, 0x7f070347

    .line 274
    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method private static a(ZI)Lkt;
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 207
    const/4 v0, 0x0

    .line 208
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    invoke-interface {v1}, LsY;->a()LaC;

    move-result-object v1

    invoke-interface {v1}, LaC;->a()Lay;

    move-result-object v1

    .line 209
    invoke-interface {v1}, Lay;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    invoke-static {}, Lkr;->i()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 211
    invoke-static {v3}, Lkr;->a(I)Lkt;

    move-result-object v0

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 213
    :cond_1
    const/4 v0, 0x7

    invoke-static {v0}, Lkr;->a(I)Lkt;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_2
    invoke-interface {v1}, Lay;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-interface {v1}, Lay;->b()I

    move-result v1

    .line 219
    invoke-static {}, Lkr;->i()Z

    move-result v2

    if-nez v2, :cond_3

    if-ne p1, v1, :cond_3

    .line 220
    invoke-static {v3}, Lkr;->a(I)Lkt;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_3
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    const/16 v0, 0xc

    invoke-static {v0}, Lkr;->a(I)Lkt;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_1
    const/16 v0, 0xe

    invoke-static {v0}, Lkr;->a(I)Lkt;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_2
    const/16 v0, 0xa

    invoke-static {v0}, Lkr;->a(I)Lkt;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_3
    const/16 v0, 0x9

    invoke-static {v0}, Lkr;->a(I)Lkt;

    move-result-object v0

    goto :goto_0

    .line 236
    :pswitch_4
    const/16 v0, 0xb

    invoke-static {v0}, Lkr;->a(I)Lkt;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {p0, v0, v0}, Lkr;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, LjJ;->o()LvH;

    move-result-object v0

    invoke-virtual {v0}, LvH;->a()Ljava/lang/String;

    move-result-object p1

    .line 120
    :cond_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, LsY;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 121
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;IZI)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/activation/gui/LicenseInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string v2, "licenseSuccessfullyInstalled"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v2

    invoke-interface {v2}, LsY;->a()LaC;

    move-result-object v2

    invoke-interface {v2}, LaC;->a()Lay;

    move-result-object v2

    .line 194
    invoke-interface {v2}, Lay;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-static {p2, p3}, Lkr;->a(ZI)Lkt;

    move-result-object v2

    .line 196
    const-string v3, "LicenseInfoActivity.text"

    iget v4, v2, Lkt;->a:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string v3, "LicenseInfoActivity.icon"

    iget v2, v2, Lkt;->b:I

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 204
    :cond_0
    return-void

    .line 199
    :cond_1
    const-string v2, "LicenseInfoActivity.shown_on_activation"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, LjJ;->o()LvH;

    move-result-object v0

    invoke-virtual {v0}, LvH;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lsk;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/kms/kmsshared/Utils;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0}, Lsk;->o()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 88
    invoke-static {}, Lkr;->d()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    new-instance v1, Lkv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkv;-><init>(B)V

    invoke-static {v1}, Lkr;->a(Landroid/os/Handler;)V

    .line 95
    invoke-virtual {v0}, Lsk;->p()V

    .line 96
    invoke-virtual {v0}, Lsk;->g_()V

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {}, Lkr;->k()V

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->k()Z

    move-result v0

    return v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lkr;->a:Lkw;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    sget-object v1, Lkr;->a:Lkw;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lkr;->a:Lkw;

    .line 135
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, LjJ;->o()LvH;

    move-result-object v0

    invoke-virtual {v0}, LvH;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lsk;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/kms/kmsshared/Utils;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lkr;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lkr;->b:Landroid/os/Handler;

    .line 147
    new-instance v0, Lku;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lku;-><init>(B)V

    sput-object v0, Lkr;->c:Ljava/lang/Runnable;

    .line 150
    :cond_0
    sget-object v0, Lkr;->b:Landroid/os/Handler;

    sget-object v1, Lkr;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    :cond_1
    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lkr;->l()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()V
    .locals 4

    .prologue
    .line 161
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 162
    invoke-static {}, Lkr;->l()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->q()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const v0, 0x7f070373

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 179
    const-string v1, ""

    invoke-virtual {v0, v1}, Lsk;->f(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lsk;->g_()V

    .line 181
    return-void
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lkr;->k()V

    return-void
.end method

.method private static k()V
    .locals 4

    .prologue
    .line 105
    sget-object v0, Lkr;->a:Lkw;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lkw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkw;-><init>(B)V

    sput-object v0, Lkr;->a:Lkw;

    .line 107
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    sget-object v1, Lkr;->a:Lkw;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    :cond_0
    return-void
.end method

.method private static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
