.class public final Lkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:LjN;

.field private final c:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lkl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkl;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(LjN;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lkl;->b:LjN;

    .line 71
    invoke-virtual {p1}, LjN;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    .line 72
    return-void
.end method

.method public static a(LjN;)Lrz;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, LjN;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lkl;

    invoke-direct {v1, p0}, Lkl;-><init>(LjN;)V

    invoke-static {v0, v1}, LrC;->a(Landroid/app/Activity;Lrz;)LrC;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lmh;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 222
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string v1, "com_kms_connection_error_str"

    iget-object v2, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f07016e

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    return-void
.end method

.method private a(Lcom/kms/antivirus/AntivirusScanType;)V
    .locals 3

    .prologue
    .line 414
    sget-object v0, Lkm;->b:[I

    invoke-virtual {p1}, Lcom/kms/antivirus/AntivirusScanType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 428
    :goto_0
    return-void

    .line 416
    :pswitch_0
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->c()Z

    goto :goto_0

    .line 419
    :pswitch_1
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->d()Z

    goto :goto_0

    .line 423
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 424
    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/kms/antivirus/gui/AvSelectFolderActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 425
    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lkk;)V
    .locals 4

    .prologue
    .line 81
    sget-object v1, Lkm;->a:[I

    invoke-virtual {p1}, Lkk;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/UiEventType;

    invoke-virtual {v0}, Lcom/kms/UiEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 86
    :pswitch_0
    invoke-direct {p0, p1}, Lkl;->d(Lkk;)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0}, Lkl;->r()V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 98
    :pswitch_3
    invoke-direct {p0}, Lkl;->e()V

    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lwh;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 104
    :pswitch_5
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 110
    :pswitch_6
    invoke-direct {p0}, Lkl;->m()V

    goto :goto_0

    .line 113
    :pswitch_7
    invoke-direct {p0}, Lkl;->o()V

    goto :goto_0

    .line 119
    :pswitch_8
    invoke-static {}, Lkl;->p()V

    goto :goto_0

    .line 122
    :pswitch_9
    invoke-direct {p0}, Lkl;->q()V

    goto :goto_0

    .line 125
    :pswitch_a
    invoke-virtual {p1}, Lkk;->b()Lcom/kms/antivirus/AntivirusScanType;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lkl;->a(Lcom/kms/antivirus/AntivirusScanType;)V

    goto :goto_0

    .line 129
    :pswitch_b
    invoke-static {}, Lkl;->l()V

    goto :goto_0

    .line 132
    :pswitch_c
    invoke-static {}, Lkl;->k()V

    goto :goto_0

    .line 135
    :pswitch_d
    invoke-direct {p0}, Lkl;->a()V

    goto :goto_0

    .line 141
    :pswitch_e
    invoke-direct {p0}, Lkl;->j()V

    goto :goto_0

    .line 144
    :pswitch_f
    invoke-direct {p0}, Lkl;->d()V

    goto :goto_0

    .line 147
    :pswitch_10
    invoke-static {}, Lqz;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenPrivacyProtectionHiddenContacts:Lcom/kms/UiEventType;

    invoke-static {v0, v1}, Loh;->a(Landroid/support/v4/app/FragmentManager;Lcom/kms/UiEventType;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    :pswitch_11
    invoke-direct {p0}, Lkl;->i()V

    goto :goto_0

    .line 161
    :pswitch_12
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, LlW;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 167
    :pswitch_13
    invoke-direct {p0}, Lkl;->g()V

    goto :goto_0

    .line 170
    :pswitch_14
    invoke-direct {p0}, Lkl;->f()V

    goto/16 :goto_0

    .line 173
    :pswitch_15
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkl;->b(I)V

    goto/16 :goto_0

    .line 176
    :pswitch_16
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkl;->b(I)V

    goto/16 :goto_0

    .line 182
    :pswitch_17
    invoke-direct {p0}, Lkl;->b()V

    goto/16 :goto_0

    .line 185
    :pswitch_18
    invoke-direct {p0}, Lkl;->c()V

    goto/16 :goto_0

    .line 191
    :pswitch_19
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, LlX;->a(Landroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_0

    .line 194
    :pswitch_1a
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 197
    :pswitch_1b
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lqy;->a(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 203
    :pswitch_1c
    invoke-direct {p0}, Lkl;->h()V

    goto/16 :goto_0

    .line 206
    :pswitch_1d
    invoke-direct {p0, p1}, Lkl;->c(Lkk;)V

    goto/16 :goto_0

    .line 209
    :pswitch_1e
    invoke-direct {p0, p1}, Lkl;->b(Lkk;)V

    goto/16 :goto_0

    .line 212
    :pswitch_1f
    invoke-virtual {p1}, Lkk;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lkl;->a(I)V

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method private b()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lwh;->a(Landroid/app/Activity;I)V

    .line 232
    return-void
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lkl;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Landroid/content/Context;I)V

    .line 262
    :cond_0
    return-void
.end method

.method private b(Lkk;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v0

    .line 291
    invoke-interface {v0}, LkM;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->e()V

    .line 293
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 313
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1}, Lkk;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->e()V

    .line 297
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 299
    :cond_1
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->G()Lgo;

    move-result-object v0

    .line 300
    iget v0, v0, Lgo;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 305
    :pswitch_0
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, LkV;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, LkO;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, LkY;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, LkK;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 236
    return-void
.end method

.method private c(Lkk;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Lkk;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kms/gui/KMSHelpActivity;->a(Landroid/content/Context;I)V

    .line 331
    return-void
.end method

.method private c(I)Z
    .locals 2

    .prologue
    .line 275
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0, p1}, LsW;->a(I)Z

    move-result v0

    .line 277
    if-nez v0, :cond_0

    .line 279
    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, LnB;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 282
    :cond_0
    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 239
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lkl;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {}, Lqz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ChangePrivacyProtectionMode:Lcom/kms/UiEventType;

    invoke-static {v0, v1}, Loh;->a(Landroid/support/v4/app/FragmentManager;Lcom/kms/UiEventType;)V

    goto :goto_0

    .line 252
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private d(Lkk;)V
    .locals 7

    .prologue
    .line 442
    invoke-virtual {p1}, Lkk;->a()Lwd;

    move-result-object v6

    .line 443
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 444
    const-string v0, "setting-tab"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 446
    invoke-interface {v6}, Lwd;->getFragmentBuilder()Lwa;

    move-result-object v5

    .line 447
    iget-object v0, p0, Lkl;->b:LjN;

    const v1, 0x7f0b00ba

    invoke-interface {v5}, Lwa;->a()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setting"

    invoke-interface {v5}, Lwa;->d()LsF;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, LjN;->a(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;LsF;)Landroid/support/v4/app/Fragment;

    .line 450
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 451
    if-eqz v0, :cond_0

    .line 452
    invoke-interface {v6}, Lwd;->getNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 454
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lwh;->b(Landroid/app/Activity;I)V

    .line 266
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lkl;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lwh;->b(Landroid/app/Activity;I)V

    .line 272
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Llc;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 287
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 317
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f070089

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f07008a

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Lde;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    invoke-interface {v0}, Lde;->j()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v3}, Lcom/google/android/apps/analytics/easytracking/GA;->j(Z)V

    .line 338
    iget-object v1, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v3}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Landroid/content/Context;Z)V

    .line 343
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, LjD;

    new-instance v2, Lkn;

    invoke-direct {v2, v3}, Lkn;-><init>(B)V

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    invoke-static {}, Los;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v3}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Landroid/content/Context;Z)V

    .line 364
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, LjD;

    new-instance v2, Lko;

    invoke-direct {v2, v3}, Lko;-><init>(B)V

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lve;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method private static k()V
    .locals 1

    .prologue
    .line 372
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->g()V

    .line 373
    return-void
.end method

.method private static l()V
    .locals 1

    .prologue
    .line 376
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->e()Z

    .line 377
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lkh;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0}, Lkl;->n()V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/kms/issues/KisIssuesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 385
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f040006

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    .line 392
    if-nez v0, :cond_0

    .line 393
    sget-object v0, Lkl;->a:Ljava/lang/String;

    const-string v1, "Statuses side bar is not found!"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->b()V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lkh;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0}, Lkl;->n()V

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 405
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f040005

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private static p()V
    .locals 1

    .prologue
    .line 410
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->f()V

    .line 411
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 431
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lkl;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, LmF;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 434
    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lkl;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lwh;->a(Landroid/app/Activity;)V

    .line 438
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lkk;

    invoke-direct {p0, p1}, Lkl;->a(Lkk;)V

    return-void
.end method
