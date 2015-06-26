.class final Lkv;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lkv;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 297
    const-string v0, "error_key"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 298
    const/4 v0, 0x0

    .line 300
    sparse-switch v3, :sswitch_data_0

    .line 360
    const-string v1, "error_message"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 362
    const-string v2, "TrialActivation"

    invoke-static {v2, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    if-nez v0, :cond_1

    .line 366
    invoke-static {}, Lkr;->d()V

    .line 371
    :cond_0
    :goto_1
    return-void

    .line 302
    :sswitch_0
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v1}, Lk;->d(Landroid/content/Context;)V

    .line 303
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;)V

    .line 304
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/kms/kmsshared/Utils;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 308
    :sswitch_1
    const-string v1, "ACTIVATION_ERROR_INSTALL_FAILED"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 309
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_INSTALL_FAILED"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :sswitch_2
    const-string v1, "ACTIVATION_ERROR_EXPIRED_KEY"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 313
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_EXPIRED_KEY"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :sswitch_3
    const-string v1, "ACTIVATION_ERROR_INVALID_CODE"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 317
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_INVALID_CODE"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :sswitch_4
    const-string v1, "ACTIVATION_ERROR_INVALID_CODE_2"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 320
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_INVALID_CODE_2"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :sswitch_5
    const-string v1, "ACTIVATION_ERROR_IMEI_WRONG"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 324
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_IMEI_WRONG"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :sswitch_6
    const-string v1, "ACTIVATION_ERROR_IMEI_EXCEEDED"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 328
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_IMEI_EXCEEDED"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :sswitch_7
    const-string v1, "ACTIVATION_ERROR_CODE_BLOCKED"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 332
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_CODE_BLOCKED"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :sswitch_8
    const-string v1, "ACTIVATION_ERROR_TIME_WRONG"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 336
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_TIME_WRONG"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :sswitch_9
    const-string v1, "ACTIVATION_ERROR_WRONG_APPID"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 340
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_WRONG_APPID"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :sswitch_a
    const-string v0, "ACTIVATION_ERROR_NO_CONECTION"

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 344
    const-string v0, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_NO_CONECTION"

    invoke-static {v0, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 346
    goto/16 :goto_0

    .line 348
    :sswitch_b
    const-string v1, "ACTIVATION_ERROR_SSL_EXCEPTION"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 349
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_SSL_EXCEPTION"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    :sswitch_c
    const-string v1, "ACTIVATION_ERROR_INVALID_USER_DATA"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 353
    const-string v1, "TrialActivation"

    const-string v2, "ACTIVATION_ERROR_INVALID_USER_DATA"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :sswitch_d
    const-string v1, "SUBSCRIPTION_ERROR_EXPIRED"

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Ljava/lang/String;)V

    .line 357
    const-string v1, "TrialActivation"

    const-string v2, "SUBSCRIPTION_ERROR_EXPIRED"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    :cond_1
    invoke-static {}, Lkr;->j()V

    goto/16 :goto_1

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_a
        0x5 -> :sswitch_1
        0x7 -> :sswitch_c
        0x259 -> :sswitch_7
        0x25a -> :sswitch_b
        0x26e -> :sswitch_3
        0x270 -> :sswitch_4
        0x273 -> :sswitch_5
        0x275 -> :sswitch_8
        0x27a -> :sswitch_6
        0x27c -> :sswitch_9
        0x3ef -> :sswitch_d
        0xdead -> :sswitch_2
    .end sparse-switch
.end method
