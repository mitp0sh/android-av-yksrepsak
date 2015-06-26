.class public final Lcom/kaspersky/kts/antitheft/remoting/CommandManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Leg;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;

.field private f:I

.field private g:LcS;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:LsY;

.field private l:Lcom/kaspersky/kts/antitheft/AtMobileStatuses;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "GCM"

    sput-object v0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Leg;Lcom/kaspersky/kts/antitheft/AtMobileStatuses;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->d:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e:Ljava/util/ArrayList;

    .line 60
    iput v2, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->f:I

    .line 62
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v1, "antitheft.web_portal_url"

    invoke-interface {v0, v1}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->h:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b:Leg;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e:Ljava/util/ArrayList;

    .line 133
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lse;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    .line 136
    invoke-interface {p2}, Leg;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->d:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->i:Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(I)Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->k:LsY;

    .line 143
    iput-object p3, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->l:Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    .line 144
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 553
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 554
    const-class v1, Lsj;

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lsj;->c(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0}, Lsj;->g_()V

    .line 557
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    const-string v0, "SynchronizationId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lse;->a(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Lse;->g_()V

    .line 568
    return-void

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 572
    :cond_0
    new-instance v0, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;-><init>()V

    throw v0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/kaspersky/kts/antitheft/AtMobileStatuses;)V
    .locals 4

    .prologue
    .line 426
    const-string v0, "ApplicationId"

    sget-object v1, LcR;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    .line 430
    const-string v1, "ApplicationVersion"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v0, "PushNotificationType"

    sget-object v1, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->getPushNotificationId()Ljava/lang/String;

    move-result-object v0

    .line 436
    const-string v1, "NotificationId"

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->getLicenseType()Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send to server license type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v1, "LicenseType"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    return-void
.end method

.method private static a(Lorg/json/JSONObject;LdW;)V
    .locals 2

    .prologue
    .line 367
    :try_start_0
    const-string v0, "ResultCode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, LdW;->h:I

    .line 368
    iget v0, p1, LdW;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 369
    :goto_0
    if-nez v0, :cond_0

    iget v1, p1, LdW;->h:I

    if-nez v1, :cond_1

    .line 375
    :cond_0
    if-nez v0, :cond_1

    .line 377
    const-string v0, "Captcha"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 380
    const-string v1, "Ticket"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, LdW;->d:Ljava/lang/String;

    .line 381
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, LdW;->c:Ljava/lang/String;

    .line 382
    const-string v1, "ImageFormat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, LdW;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_1
    :goto_1
    return-void

    .line 368
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static b(Lorg/json/JSONObject;)I
    .locals 2

    .prologue
    .line 628
    :try_start_0
    const-string v0, "ResultCode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 634
    sparse-switch v0, :sswitch_data_0

    .line 639
    return v0

    .line 637
    :sswitch_0
    new-instance v1, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;

    invoke-direct {v1, v0}, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :catch_0
    move-exception v0

    .line 644
    new-instance v1, Lcom/kaspersky/kts/antitheft/WrongProtocolException;

    invoke-direct {v1, v0}, Lcom/kaspersky/kts/antitheft/WrongProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 634
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->i:Ljava/lang/String;

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 192
    :goto_0
    return-object v0

    .line 176
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Registration/NewUserCheck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Registration/NewUserComplete2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Registration/NewDevice2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Registration/Remove"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sync/Actions/Get2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sync/Actions/ConfirmReceiptNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sync/Actions/ReportCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sync/Actions/SetParameters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1130
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 1131
    invoke-virtual {v0, p0}, Lse;->d(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0}, Lse;->g_()V

    .line 1133
    return-void
.end method

.method private b(Lorg/json/JSONObject;LdW;)V
    .locals 2

    .prologue
    .line 490
    :try_start_0
    const-string v0, "ResultCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, LdW;->h:I

    .line 497
    iget v0, p2, LdW;->h:I

    if-nez v0, :cond_1

    .line 498
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(Lorg/json/JSONObject;)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget v0, p2, LdW;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 501
    const-string v0, "Captcha"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 502
    const-string v1, "Ticket"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, LdW;->d:Ljava/lang/String;

    .line 503
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, LdW;->c:Ljava/lang/String;

    .line 504
    const-string v1, "ImageFormat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, LdW;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 517
    const/4 v0, 0x1

    iput v0, p2, LdW;->h:I

    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    .line 691
    const/4 v1, -0x1

    .line 692
    const/4 v0, 0x0

    .line 694
    :try_start_0
    const-string v2, "SyncInterval"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 701
    :goto_0
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received server\'s syncInterval [d.]hh:mm:ss: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 710
    :goto_1
    if-gez v0, :cond_0

    .line 712
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->a()I

    move-result v0

    .line 713
    if-gtz v0, :cond_0

    .line 714
    invoke-static {}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->g()I

    move-result v0

    .line 719
    :cond_0
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syncInterval(minutes): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return v0

    .line 697
    :catch_0
    move-exception v2

    const-string v2, "KMS-ANTI-THIEF"

    const-string v3, "Synchronization interval is not passed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;
    .locals 3

    .prologue
    .line 827
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Unknown:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 829
    :try_start_0
    invoke-static {p0}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 830
    invoke-static {p0}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 834
    :cond_0
    :goto_0
    return-object v0

    .line 831
    :catch_0
    move-exception v1

    .line 832
    const-string v2, "KMS-ANTI-THIEF"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    sparse-switch p0, :sswitch_data_0

    .line 276
    const-string v0, ""

    :goto_0
    return-object v0

    .line 246
    :sswitch_0
    const-string v0, "ConnectionProblemException"

    goto :goto_0

    .line 248
    :sswitch_1
    const-string v0, "OK"

    goto :goto_0

    .line 250
    :sswitch_2
    const-string v0, "EmailAlreadyExist"

    goto :goto_0

    .line 252
    :sswitch_3
    const-string v0, "InvalidCaptcha"

    goto :goto_0

    .line 254
    :sswitch_4
    const-string v0, "InvalidRegistrationData"

    goto :goto_0

    .line 256
    :sswitch_5
    const-string v0, "InvalidRequest"

    goto :goto_0

    .line 258
    :sswitch_6
    const-string v0, "InvalidEmailFormat"

    goto :goto_0

    .line 260
    :sswitch_7
    const-string v0, "ServiceIsUnderMaintenance"

    goto :goto_0

    .line 262
    :sswitch_8
    const-string v0, "CommandNotFound"

    goto :goto_0

    .line 264
    :sswitch_9
    const-string v0, "InvalidCommandState"

    goto :goto_0

    .line 266
    :sswitch_a
    const-string v0, "DublicateImage"

    goto :goto_0

    .line 268
    :sswitch_b
    const-string v0, "ImageTooLarge"

    goto :goto_0

    .line 270
    :sswitch_c
    const-string v0, "InvalidImageFormat"

    goto :goto_0

    .line 272
    :sswitch_d
    const-string v0, "UserNotActivated"

    goto :goto_0

    .line 274
    :sswitch_e
    const-string v0, "AccountExpired"

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_e
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method private c(LdW;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 402
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 403
    const-string v0, "Email"

    iget-object v2, p1, LdW;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v0, "WebPortalPasswordHash"

    iget-object v2, p1, LdW;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v0, "DeviceIdHash"

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v0, "DeviceName"

    iget-object v2, p1, LdW;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    invoke-static {}, Lqy;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->j:Ljava/lang/String;

    .line 411
    const-string v0, "EmergencyRecoverCode"

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v2, "antitheft.partner.id"

    invoke-interface {v0, v2}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string v2, "PartnerId"

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->l:Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->setApplicationVersion(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->l:Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->setLicenseType(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->l:Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    invoke-static {}, Lg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->setPushNotificationId(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->l:Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    invoke-static {v1, v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(Lorg/json/JSONObject;Lcom/kaspersky/kts/antitheft/AtMobileStatuses;)V

    .line 421
    return-object v1
.end method

.method private c(Lorg/json/JSONObject;LdW;)V
    .locals 1

    .prologue
    .line 531
    :try_start_0
    const-string v0, "ResultCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, LdW;->h:I

    .line 537
    iget v0, p2, LdW;->h:I

    if-nez v0, :cond_0

    .line 538
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 931
    if-eqz p0, :cond_0

    .line 932
    const-string v0, "(^\\.)|(\\.$)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 725
    const-string v0, "TotalActionCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 726
    if-lez v1, :cond_2

    .line 731
    const-string v0, "Actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 732
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 733
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 734
    if-eqz v2, :cond_0

    .line 735
    const-string v3, "Type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c(Ljava/lang/String;)Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v3

    .line 736
    sget-object v4, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Unknown:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    if-eq v3, v4, :cond_0

    .line 737
    new-instance v4, Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-direct {v4, v3, v5}, Lcom/kaspersky/kts/antitheft/ActionInfo;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Z)V

    .line 738
    const-string v3, "Id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/kaspersky/kts/antitheft/ActionInfo;->setActionId(Ljava/lang/String;)V

    .line 743
    const-string v3, "Params"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 744
    const-string v3, "Params"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/kaspersky/kts/antitheft/ActionInfo;->setActionParams(Ljava/lang/String;)V

    .line 746
    :cond_1
    invoke-virtual {v4, v5}, Lcom/kaspersky/kts/antitheft/ActionInfo;->setActionResult(I)V

    .line 747
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 752
    :cond_2
    return-void
.end method

.method private static e(Ljava/lang/String;)J
    .locals 10

    .prologue
    .line 945
    const-wide/16 v2, 0x0

    .line 946
    const-string v0, "^(\\W)?(\\d+\\.)?(\\d{2}):(\\d{2}):(\\d{2})(\\.\\d+)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 947
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 948
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    .line 952
    const-wide/16 v2, 0x0

    .line 1000
    :cond_0
    :goto_0
    return-wide v2

    .line 954
    :cond_1
    const/4 v1, 0x0

    .line 955
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 957
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 958
    if-eqz v4, :cond_2

    .line 959
    packed-switch v0, :pswitch_data_0

    .line 955
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 961
    :pswitch_0
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 965
    :pswitch_1
    invoke-static {v4}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 966
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    .line 967
    const-wide/16 v8, 0xe10

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 968
    goto :goto_2

    .line 971
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    .line 972
    const-wide/16 v8, 0xe10

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 973
    goto :goto_2

    .line 976
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    .line 977
    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 978
    goto :goto_2

    .line 981
    :pswitch_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    .line 982
    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 983
    goto :goto_2

    .line 986
    :pswitch_5
    invoke-static {v4}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 987
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v6, v4

    .line 988
    add-long/2addr v2, v6

    goto :goto_2

    .line 993
    :catch_0
    move-exception v4

    .line 994
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 997
    :cond_4
    if-eqz v1, :cond_0

    .line 998
    neg-long v2, v2

    goto :goto_0

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1008
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/16 v0, 0xb4

    .line 756
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v2

    .line 757
    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->k:LsY;

    invoke-interface {v1}, LsY;->a()LaC;

    move-result-object v1

    invoke-interface {v1}, LaC;->h()Z

    move-result v3

    .line 758
    invoke-virtual {v2}, Lse;->v()Z

    move-result v4

    .line 761
    :try_start_0
    const-string v1, "ResultCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 766
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c(Lorg/json/JSONObject;)I

    move-result v1

    .line 768
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 769
    const/16 v7, 0x10

    invoke-virtual {v2, v7, v6}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 771
    iget-object v6, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->k:LsY;

    invoke-interface {v6}, LsY;->a()LaC;

    move-result-object v6

    invoke-interface {v6}, LaC;->c()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 772
    if-ge v1, v0, :cond_3

    .line 778
    :goto_0
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "set syncInterval(minutes): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/16 v1, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 781
    const-string v0, "CommandDeliveryType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    const-string v0, "CommandDeliveryType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lse;->d(I)V

    .line 785
    :cond_0
    sparse-switch v5, :sswitch_data_0

    .line 808
    if-nez v3, :cond_1

    .line 809
    const-string v0, "KMS-ANTI-THIEF"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected server error "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lse;->g_()V

    .line 823
    return-void

    .line 787
    :sswitch_0
    if-nez v4, :cond_2

    .line 788
    :try_start_1
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 789
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lse;->k(Z)V

    .line 791
    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lse;->a(Ljava/lang/Long;)V

    .line 792
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->d(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 814
    :catch_0
    move-exception v0

    .line 820
    :try_start_2
    new-instance v1, Lcom/kaspersky/kts/antitheft/WrongProtocolException;

    invoke-direct {v1, v0}, Lcom/kaspersky/kts/antitheft/WrongProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 822
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lse;->g_()V

    throw v0

    .line 795
    :sswitch_1
    :try_start_3
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Lsz;->b()Z

    move-result v0

    .line 797
    if-eqz v0, :cond_1

    .line 798
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountNotValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_1

    .line 802
    :sswitch_2
    const-string v0, "KMS-ANTI-THIEF"

    const-string v1, "Service is under maintenance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v0, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;-><init>(Z)V

    throw v0

    .line 806
    :sswitch_3
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;

    invoke-direct {v0, v5}, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;-><init>(I)V

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    .line 785
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_3
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public static g()I
    .locals 3

    .prologue
    const v0, 0x80520

    .line 1033
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    invoke-interface {v1}, LsY;->a()LaC;

    move-result-object v1

    .line 1034
    invoke-interface {v1}, LaC;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    :goto_0
    return v0

    .line 1036
    :cond_0
    invoke-interface {v1}, LaC;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1042
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 1038
    :pswitch_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 1036
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ltp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->k:LsY;

    invoke-interface {v1}, LsY;->a()LaC;

    move-result-object v1

    .line 325
    invoke-interface {v1}, LaC;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 336
    :pswitch_0
    const-string v1, "Trial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :pswitch_1
    const-string v1, "Free"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 333
    :pswitch_2
    const-string v1, "Paid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1113
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k()V
    .locals 2

    .prologue
    .line 1120
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 1121
    const-string v1, ""

    invoke-virtual {v0, v1}, Lse;->d(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0}, Lse;->g_()V

    .line 1123
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LdW;
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 343
    new-instance v6, LdW;

    invoke-direct {v6, p0}, LdW;-><init>(Lcom/kaspersky/kts/antitheft/remoting/CommandManager;)V

    .line 344
    iput v0, v6, LdW;->h:I

    .line 345
    iput-object p1, v6, LdW;->a:Ljava/lang/String;

    .line 346
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 348
    :try_start_0
    const-string v0, "Email"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b:Leg;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Leg;->a(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_0

    .line 356
    invoke-static {v0, v6}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(Lorg/json/JSONObject;LdW;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 362
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object v0, v6

    .line 362
    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->i()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown license. Stop synchronization with portal."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x5

    iput v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->f:I

    .line 164
    return-void
.end method

.method public final a(LcS;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->g:LcS;

    .line 160
    return-void
.end method

.method public final a(Lcom/kaspersky/kts/antitheft/AtMobileStatuses;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1056
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error. SynchronizationId should not be empty!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1062
    :try_start_0
    const-string v0, "SynchronizationId"

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1063
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->l:Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    .line 1064
    invoke-static {v2, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(Lorg/json/JSONObject;Lcom/kaspersky/kts/antitheft/AtMobileStatuses;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    const/4 v8, -0x1

    .line 1075
    :try_start_1
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b:Leg;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Leg;->a(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1076
    invoke-static {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(Lorg/json/JSONObject;)I
    :try_end_1
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/kaspersky/kts/antitheft/WrongProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    move v1, v0

    move v0, v6

    .line 1084
    :goto_0
    if-eqz v1, :cond_2

    .line 1086
    const/16 v3, 0x64

    if-eq v1, v3, :cond_1

    if-eqz v0, :cond_3

    .line 1090
    :cond_1
    const-string v0, "KMS-ANTI-THIEF"

    const-string v1, "CommandManager.setParameters(): Service is not available. Resend report later."

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->g:LcS;

    new-array v1, v7, [Lcom/kaspersky/kts/antitheft/QueueItem;

    new-instance v3, Lcom/kaspersky/kts/antitheft/RequestItem;

    sget-object v4, Lcom/kaspersky/kts/antitheft/remoting/CommandManager$StaticRequestId;->SetParameters:Lcom/kaspersky/kts/antitheft/remoting/CommandManager$StaticRequestId;

    invoke-virtual {v4}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager$StaticRequestId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9, v2}, Lcom/kaspersky/kts/antitheft/RequestItem;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    aput-object v3, v1, v6

    invoke-interface {v0, v1}, LcS;->a([Lcom/kaspersky/kts/antitheft/QueueItem;)V

    .line 1101
    :cond_2
    :goto_1
    return-void

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1068
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Critical error! Cannot make json object."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1077
    :catch_1
    move-exception v0

    .line 1078
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->printStackTrace()V

    move v0, v7

    move v1, v8

    .line 1082
    goto :goto_0

    .line 1080
    :catch_2
    move-exception v0

    .line 1081
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Critical error! Cannot make json object."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1096
    :cond_3
    const-string v0, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CommandManager.setParameters(): A connection problem happened. Don\'t resend report. Ignore this error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final a(LdW;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 460
    .line 462
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c(LdW;)Lorg/json/JSONObject;

    move-result-object v2

    .line 463
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 464
    const-string v1, "Ticket"

    iget-object v5, p1, LdW;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    const-string v1, "UserInput"

    iget-object v5, p1, LdW;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    const-string v1, "Captcha"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    const-string v1, "CultureName"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b:Leg;

    invoke-direct {p0, v8}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Leg;->a(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 485
    invoke-direct {p0, v0, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(Lorg/json/JSONObject;LdW;)V

    .line 486
    :goto_1
    return-void

    .line 474
    :cond_0
    :try_start_1
    const-string v1, "%s-%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Lek;)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x1

    .line 840
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    new-instance v0, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;-><init>()V

    throw v0

    .line 843
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 845
    :try_start_0
    const-string v1, "SynchronizationId"

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 847
    invoke-virtual {p1}, Lek;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 848
    const-string v2, "Actions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    invoke-virtual {p1}, Lek;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v6, v0, v1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(ZILorg/json/JSONObject;Ljava/lang/String;)V

    .line 876
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v0

    .line 861
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 873
    :cond_1
    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->g:LcS;

    new-array v2, v3, [Lcom/kaspersky/kts/antitheft/QueueItem;

    const/4 v3, 0x0

    new-instance v4, Lcom/kaspersky/kts/antitheft/RequestItem;

    invoke-virtual {p1}, Lek;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6, v0}, Lcom/kaspersky/kts/antitheft/RequestItem;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, LcS;->a([Lcom/kaspersky/kts/antitheft/QueueItem;)V

    goto :goto_0
.end method

.method public final a(ZILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 892
    .line 893
    invoke-direct {p0, p2}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 894
    const/4 v8, -0x1

    .line 897
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b:Leg;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Leg;->a(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 898
    invoke-static {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 899
    if-nez v1, :cond_2

    move v0, v6

    :goto_0
    move v2, v0

    move v0, v7

    .line 908
    :goto_1
    if-nez v2, :cond_1

    .line 909
    if-eqz p1, :cond_4

    .line 912
    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_1

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->g:LcS;

    new-array v1, v6, [Lcom/kaspersky/kts/antitheft/QueueItem;

    new-instance v2, Lcom/kaspersky/kts/antitheft/RequestItem;

    invoke-direct {v2, p4, p2, p3}, Lcom/kaspersky/kts/antitheft/RequestItem;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    aput-object v2, v1, v7

    invoke-interface {v0, v1}, LcS;->a([Lcom/kaspersky/kts/antitheft/QueueItem;)V

    .line 928
    :cond_1
    return-void

    :cond_2
    move v0, v7

    .line 899
    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 901
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->printStackTrace()V

    .line 902
    if-nez p1, :cond_3

    .line 903
    throw v0

    :cond_3
    move v0, v6

    move v1, v8

    move v2, v7

    .line 905
    goto :goto_1

    .line 925
    :cond_4
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;

    invoke-direct {v0, v1}, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;-><init>(I)V

    throw v0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 587
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    new-instance v0, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;-><init>()V

    throw v0

    .line 595
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 597
    :try_start_0
    const-string v0, "SynchronizationId"

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 599
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 600
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    .line 601
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/ActionInfo;

    .line 602
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v0, v1

    .line 603
    goto :goto_1

    .line 604
    :cond_2
    const-string v0, "ActionIds"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b:Leg;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Leg;->a(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 615
    invoke-static {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(Lorg/json/JSONObject;)I

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(LdW;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 523
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c(LdW;)Lorg/json/JSONObject;

    move-result-object v2

    .line 524
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b:Leg;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Leg;->a(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 526
    invoke-direct {p0, v0, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c(Lorg/json/JSONObject;LdW;)V

    .line 527
    return-void
.end method

.method public final c()[Lcom/kaspersky/kts/antitheft/ActionInfo;
    .locals 6

    .prologue
    .line 659
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 661
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;-><init>()V

    throw v0

    .line 664
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 666
    :try_start_0
    const-string v0, "SynchronizationId"

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    const-string v0, "MaxActionCount"

    iget v1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->f:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 670
    invoke-static {}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->j()Ljava/lang/String;

    move-result-object v0

    .line 671
    const-string v1, "GCMMessageId"

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b:Leg;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Leg;->a(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 674
    invoke-direct {p0, v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    invoke-static {}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->k()V

    .line 682
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/antitheft/ActionInfo;

    return-object v0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

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

.method public final f()V
    .locals 4

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    new-instance v0, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;-><init>()V

    throw v0

    .line 1020
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1022
    :try_start_0
    const-string v0, "SynchronizationId"

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1023
    const-string v0, "DeviceIdHash"

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1024
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    invoke-virtual {v0}, Lsj;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->j:Ljava/lang/String;

    .line 1025
    const-string v2, "EmergencyRecoverCode"

    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->j:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1026
    const/4 v0, 0x1

    const/4 v2, 0x7

    sget-object v3, Lcom/kaspersky/kts/antitheft/remoting/CommandManager$StaticRequestId;->Unregister:Lcom/kaspersky/kts/antitheft/remoting/CommandManager$StaticRequestId;

    invoke-virtual {v3}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager$StaticRequestId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(ZILorg/json/JSONObject;Ljava/lang/String;)V

    .line 1030
    :goto_1
    return-void

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->j:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final h()Lcom/kaspersky/kts/antitheft/AtMobileStatuses;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->l:Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    return-object v0
.end method
