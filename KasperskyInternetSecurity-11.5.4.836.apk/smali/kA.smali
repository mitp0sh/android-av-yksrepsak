.class public final LkA;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lkz;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LkA;->a:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method

.method private a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, LkA;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lkz;->d_()Landroid/app/Activity;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, LkA;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    .line 36
    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lkz;->d_()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-interface {v0, p1}, Lkz;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    const-string v0, "KMS"

    const-string v1, "Can\'t show dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 102
    const/16 v0, 0x10

    invoke-direct {p0, v0}, LkA;->b(I)V

    .line 103
    const-string v0, "error_key"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, LkA;->a()Landroid/app/Activity;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    .line 107
    if-nez v2, :cond_1

    move-object v0, v1

    .line 108
    :goto_0
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v3

    .line 109
    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    .line 111
    invoke-virtual {v3}, Lsj;->p()Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    invoke-interface {v1, p0, v0}, LsY;->b(Landroid/os/Handler;Landroid/content/Context;)V

    .line 118
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v2

    .line 107
    goto :goto_0

    .line 115
    :cond_2
    invoke-interface {v1, p0, v0, v2}, LsY;->a(Landroid/os/Handler;Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private static b()Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->c()I

    move-result v0

    .line 293
    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->convertLicenseTypeToGA(I)Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, LkA;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lkz;->e(I)V

    .line 57
    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 121
    const/16 v0, 0x12

    invoke-direct {p0, v0}, LkA;->b(I)V

    .line 122
    const-string v0, "error_key"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 123
    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 128
    :pswitch_1
    invoke-direct {p0}, LkA;->a()Landroid/app/Activity;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, LkA;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    .line 298
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0, p1}, Lkz;->k(I)V

    .line 301
    :cond_0
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 144
    const/16 v0, 0x11

    invoke-direct {p0, v0}, LkA;->b(I)V

    .line 145
    const-string v0, "error_key"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 146
    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, LkA;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lkz;->e_()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, v1}, LkA;->b(I)V

    .line 172
    const-string v2, "error_key"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 174
    sparse-switch v2, :sswitch_data_0

    .line 275
    const-string v1, "error_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, LkA;->a()Landroid/app/Activity;

    move-result-object v3

    .line 278
    if-eqz v3, :cond_0

    .line 279
    if-eqz v1, :cond_0

    .line 280
    new-instance v4, LoN;

    invoke-direct {v4, v3}, LoN;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, LoN;->b(Ljava/lang/CharSequence;)LoN;

    move-result-object v1

    invoke-virtual {v1}, LoN;->c()LoM;

    .line 286
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0, v2}, LkA;->c(I)V

    .line 289
    :cond_1
    return-void

    .line 176
    :sswitch_0
    const-string v1, "ACTIVATION_ERROR_INSTALL_FAILED"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v0}, LkA;->a(I)V

    goto :goto_0

    .line 181
    :sswitch_1
    const-string v1, "ACTIVATION_ERROR_EXPIRED_KEY"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x5

    invoke-direct {p0, v1}, LkA;->a(I)V

    goto :goto_0

    .line 187
    :sswitch_2
    const-string v1, "ACTIVATION_ERROR_INVALID_CODE"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :sswitch_3
    const-string v1, "ACTIVATION_ERROR_INVALID_CODE_2"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :sswitch_4
    const-string v1, "ACTIVATION_ERROR_IMEI_WRONG"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    move v1, v0

    .line 198
    :sswitch_5
    if-nez v1, :cond_2

    .line 199
    const-string v1, "ACTIVATION_ERROR_IMEI_EXCEEDED"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 200
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, LkA;->a(I)V

    goto :goto_0

    .line 207
    :sswitch_6
    const-string v1, "ACTIVATION_ERROR_CODE_BLOCKED"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 208
    const/4 v1, 0x7

    invoke-direct {p0, v1}, LkA;->a(I)V

    goto :goto_0

    .line 213
    :sswitch_7
    const-string v1, "ACTIVATION_ERROR_TIME_WRONG"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 214
    const/4 v1, 0x3

    invoke-direct {p0, v1}, LkA;->a(I)V

    goto :goto_0

    .line 218
    :sswitch_8
    const-string v1, "ACTIVATION_ERROR_WRONG_APPID"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x6

    invoke-direct {p0, v1}, LkA;->a(I)V

    goto :goto_0

    .line 223
    :sswitch_9
    const-string v1, "ACTIVATION_ERROR_NO_CONECTION"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, LkA;->a()Landroid/app/Activity;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_0

    .line 226
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 232
    :sswitch_a
    const-string v1, "ACTIVATION_ERROR_SSL_EXCEPTION"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 233
    const/16 v1, 0x8

    invoke-direct {p0, v1}, LkA;->a(I)V

    goto :goto_0

    .line 237
    :sswitch_b
    const-string v0, "ACTIVATION_ERROR_INVALID_USER_DATA"

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 238
    const-string v0, "error_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    iget-object v0, p0, LkA;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    .line 240
    if-eqz v0, :cond_3

    .line 241
    invoke-interface {v0, v3}, Lkz;->a(Ljava/lang/String;)V

    :cond_3
    move v0, v1

    .line 244
    goto/16 :goto_0

    .line 247
    :sswitch_c
    const-string v1, "ACTIVATION_ERROR_COUNT_LIMIT_REACHED"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 248
    const/16 v1, 0x15

    invoke-direct {p0, v1}, LkA;->a(I)V

    goto/16 :goto_0

    .line 252
    :sswitch_d
    iget-object v0, p0, LkA;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    .line 253
    if-eqz v0, :cond_4

    .line 254
    invoke-interface {v0}, Lkz;->f_()V

    .line 258
    :cond_4
    invoke-static {}, LkA;->b()Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;)V

    .line 261
    invoke-static {}, Lqq;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    sget-object v3, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Lk;->d(Landroid/content/Context;)V

    move v0, v1

    goto/16 :goto_0

    .line 270
    :sswitch_e
    const-string v1, "SUBSCRIPTION_ERROR_EXPIRED"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 271
    const/16 v1, 0x14

    invoke-direct {p0, v1}, LkA;->a(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_d
        0x3 -> :sswitch_9
        0x5 -> :sswitch_0
        0x7 -> :sswitch_b
        0x259 -> :sswitch_6
        0x25a -> :sswitch_a
        0x25b -> :sswitch_c
        0x26e -> :sswitch_2
        0x270 -> :sswitch_3
        0x273 -> :sswitch_4
        0x275 -> :sswitch_7
        0x27a -> :sswitch_5
        0x27c -> :sswitch_8
        0x3ef -> :sswitch_e
        0xdead -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    :pswitch_0
    return-void

    .line 64
    :pswitch_1
    invoke-direct {p0, v2}, LkA;->b(I)V

    .line 65
    invoke-direct {p0, v2}, LkA;->a(I)V

    goto :goto_0

    .line 69
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, LkA;->d(Landroid/os/Bundle;)V

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-direct {p0, v1}, LkA;->a(I)V

    goto :goto_0

    .line 77
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, LkA;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 81
    :pswitch_5
    invoke-direct {p0, v1}, LkA;->b(I)V

    .line 82
    const/16 v0, 0x12

    invoke-direct {p0, v0}, LkA;->a(I)V

    goto :goto_0

    .line 86
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, LkA;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 90
    :pswitch_7
    invoke-direct {p0, v1}, LkA;->b(I)V

    .line 91
    const/16 v0, 0x11

    invoke-direct {p0, v0}, LkA;->a(I)V

    goto :goto_0

    .line 95
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, LkA;->c(Landroid/os/Bundle;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
