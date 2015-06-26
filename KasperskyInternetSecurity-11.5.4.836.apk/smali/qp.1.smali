.class public final Lqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LrE;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lqp;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget-object v1, p0, Lqp;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 124
    const-string v0, "hide:"

    invoke-direct {p0, v0}, Lqp;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wipe:"

    invoke-direct {p0, v0}, Lqp;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clean:"

    invoke-direct {p0, v0}, Lqp;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "block:"

    invoke-direct {p0, v0}, Lqp;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lock:"

    invoke-direct {p0, v0}, Lqp;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "find:"

    invoke-direct {p0, v0}, Lqp;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "locate:"

    invoke-direct {p0, v0}, Lqp;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fullreset:"

    invoke-direct {p0, v0}, Lqp;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alarm:"

    invoke-direct {p0, v0}, Lqp;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x4

    return v0
.end method

.method public final a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v4, 0x0

    const/4 v8, 0x5

    const/4 v3, 0x1

    .line 18
    .line 19
    instance-of v0, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 20
    check-cast v0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    .line 21
    iget-object v1, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lqp;->a:Ljava/lang/String;

    .line 23
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v5

    .line 24
    iget-wide v1, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    invoke-virtual {v5}, Lse;->w()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v1, v6

    if-lez v1, :cond_4

    move v2, v3

    .line 26
    :goto_0
    iget v1, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-nez v1, :cond_f

    .line 27
    if-eqz v2, :cond_e

    .line 29
    const/4 v1, 0x0

    .line 30
    const-string v6, "wipe:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 31
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->DataWipe:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    .line 97
    :goto_1
    if-eqz v3, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 99
    invoke-virtual {v0, v4}, Lcom/kms/kmsshared/cellmon/SMSEvent;->block(Z)V

    .line 101
    :cond_0
    if-eqz v1, :cond_1

    .line 102
    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->b(Lcom/google/android/apps/analytics/easytracking/GA$SmsType;)V

    :cond_1
    move v4, v3

    .line 115
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 116
    iget-wide v0, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Lse;->b(Ljava/lang/Long;)V

    .line 117
    invoke-virtual {v5}, Lse;->g_()V

    .line 120
    :cond_3
    return v4

    :cond_4
    move v2, v4

    .line 24
    goto :goto_0

    .line 36
    :cond_5
    const-string v6, "clean:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 37
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->DataWipe:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto :goto_1

    .line 42
    :cond_6
    const-string v6, "fullreset:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 43
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->FullReset:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto :goto_1

    .line 49
    :cond_7
    const-string v6, "full reset:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 51
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->FullReset:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto :goto_1

    .line 57
    :cond_8
    const-string v6, "block:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 58
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->DeviceLock:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto/16 :goto_1

    .line 65
    :cond_9
    const-string v6, "lock:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 66
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->DeviceLock:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto/16 :goto_1

    .line 73
    :cond_a
    const-string v6, "find:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 74
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->Locate:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto/16 :goto_1

    .line 79
    :cond_b
    const-string v6, "locate:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 80
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->Locate:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto/16 :goto_1

    .line 85
    :cond_c
    const-string v6, "hide:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 86
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto/16 :goto_1

    .line 91
    :cond_d
    const-string v6, "alarm:"

    invoke-direct {p0, v6}, Lqp;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 92
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v6, p0, Lqp;->a:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/kms/kmsshared/KMSApplication;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->Alarm:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto/16 :goto_1

    .line 104
    :cond_e
    invoke-direct {p0}, Lqp;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    move v4, v3

    .line 106
    goto/16 :goto_2

    .line 108
    :cond_f
    iget v1, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-ne v1, v3, :cond_2

    .line 109
    invoke-direct {p0}, Lqp;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p1, v3}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    move v4, v3

    .line 111
    goto/16 :goto_2

    :cond_10
    move v3, v4

    goto/16 :goto_1
.end method
