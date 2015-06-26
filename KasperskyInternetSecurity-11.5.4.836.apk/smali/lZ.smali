.class final LlZ;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private volatile b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 51
    iput-boolean p1, p0, LlZ;->b:Z

    .line 52
    return-void
.end method

.method private a(IIIZ)Ljava/lang/String;
    .locals 5

    .prologue
    .line 93
    const/4 v1, 0x5

    .line 94
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move v2, v1

    .line 95
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 108
    packed-switch v1, :pswitch_data_0

    .line 178
    :cond_1
    :pswitch_0
    const-wide/16 v3, 0x4e20

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 184
    iget-boolean v3, p0, LlZ;->a:Z

    if-eqz v3, :cond_0

    .line 186
    throw v1

    .line 112
    :pswitch_1
    if-eqz p4, :cond_2

    .line 114
    const-wide/16 v3, 0x7530

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 117
    :cond_2
    if-lez p3, :cond_3

    .line 119
    const-wide/16 v3, 0x7530

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 120
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 125
    :cond_3
    invoke-static {v0}, LlZ;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_1
    return-object v0

    .line 129
    :pswitch_2
    invoke-static {v0}, LlZ;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 132
    :pswitch_3
    const-wide/32 v3, 0xea60

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 133
    if-nez p4, :cond_0

    .line 135
    invoke-static {v0}, LlZ;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 140
    :pswitch_4
    const-wide/32 v3, 0xea60

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 141
    if-nez p4, :cond_1

    .line 143
    invoke-static {v0}, LlZ;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 152
    :pswitch_5
    invoke-static {v0}, LlZ;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 156
    if-nez p4, :cond_1

    .line 158
    if-lez v2, :cond_4

    .line 160
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    .line 162
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 166
    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 173
    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, LqO;->a()Z

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {}, LnE;->c()V

    goto :goto_0
.end method

.method private static d()V
    .locals 5

    .prologue
    .line 206
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v1

    .line 207
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v2, Lcom/kms/kmsshared/KMSApplication;

    .line 210
    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v3, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v3}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v3

    invoke-interface {v3}, LsY;->a()LaC;

    move-result-object v3

    const/16 v4, 0x17

    invoke-interface {v3, v4}, LaC;->a(I)Z

    move-result v3

    .line 212
    if-nez v3, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 219
    const v3, 0x7f0701af

    invoke-virtual {v2, v3}, Lcom/kms/kmsshared/KMSApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    :cond_2
    invoke-static {v1}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const-string v0, "SIM-Watch:"

    invoke-static {v1, v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 371
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 372
    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, LlZ;->a:Z

    .line 240
    invoke-virtual {p0}, LlZ;->interrupt()V

    .line 241
    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LlZ;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LlZ;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 258
    :try_start_0
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v3

    .line 259
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 261
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 264
    if-nez v1, :cond_4

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 269
    const/16 v1, 0x8

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 270
    invoke-virtual {v3}, Lse;->g_()V

    .line 275
    :goto_0
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    invoke-interface {v1}, LsY;->a()LaC;

    move-result-object v1

    const/16 v5, 0x17

    invoke-interface {v1, v5}, LaC;->a(I)Z

    move-result v1

    .line 277
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LlZ;->b:Z

    if-eqz v1, :cond_2

    .line 289
    :cond_0
    const v0, 0xea60

    const/16 v1, 0x7530

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v2, v4}, LlZ;->a(IIIZ)Ljava/lang/String;

    move-result-object v0

    .line 290
    const/4 v1, 0x6

    invoke-virtual {v3, v1, v0}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 291
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 292
    invoke-virtual {v3}, Lse;->g_()V

    .line 367
    :cond_1
    :goto_1
    return-void

    .line 302
    :cond_2
    const v1, 0xea60

    const/16 v4, 0x7530

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {p0, v1, v4, v5, v6}, LlZ;->a(IIIZ)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    invoke-static {}, LlZ;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    invoke-static {}, LlZ;->c()V

    .line 332
    const v1, 0xea60

    const/16 v4, 0x7530

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v1, v4, v5, v6}, LlZ;->a(IIIZ)Ljava/lang/String;

    move-result-object v1

    .line 340
    if-nez v2, :cond_3

    .line 343
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v1}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 344
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 345
    invoke-virtual {v3}, Lse;->g_()V

    goto :goto_1

    .line 365
    :catch_0
    move-exception v0

    goto :goto_1

    .line 350
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    invoke-static {}, LlZ;->d()V

    .line 361
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v1}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 362
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 363
    invoke-virtual {v3}, Lse;->g_()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    move v2, v1

    goto/16 :goto_0
.end method
