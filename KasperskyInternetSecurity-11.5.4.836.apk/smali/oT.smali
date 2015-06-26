.class public final LoT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private static a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;)I
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    sget-object v1, LoU;->a:[I

    invoke-virtual {p0}, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_0
    return v0

    .line 89
    :pswitch_0
    const v0, 0x7f020063

    .line 90
    goto :goto_0

    .line 92
    :pswitch_1
    const v0, 0x7f020065

    .line 93
    goto :goto_0

    .line 95
    :pswitch_2
    const v0, 0x7f020064

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lat;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 42
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lat;->b:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    sget-object v2, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lsj;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lat;->g:Z

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    invoke-virtual {v0}, Lsz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-wide v1, p0, Lat;->a:J

    .line 53
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 54
    new-instance v3, Landroid/app/Notification;

    iget-object v4, p0, Lat;->b:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-static {v4}, LoT;->a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;)I

    move-result v4

    const v5, 0x7f070439

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 57
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-static {v4}, LnD;->a(Landroid/content/Intent;)V

    .line 59
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/high16 v5, 0x8000000

    invoke-static {p1, v8, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 61
    iget-object v5, p0, Lat;->c:Ljava/lang/String;

    iget-object v6, p0, Lat;->d:Ljava/lang/String;

    invoke-virtual {v3, p1, v5, v6, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 64
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.kms.ipm.message_removed"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v5, "com.kms.ipm.cancelledMessageId"

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 66
    invoke-static {v4}, LnD;->a(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const/high16 v5, 0x10000000

    invoke-static {p1, v8, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 70
    iput-object v4, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 72
    iget-object v4, p0, Lat;->b:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    if-ne v4, v5, :cond_2

    .line 73
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 75
    :cond_2
    invoke-static {v1, v2}, LoT;->c(J)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private static c(J)I
    .locals 4

    .prologue
    .line 110
    const-wide/32 v0, 0x40000000

    rem-long v0, p0, v0

    .line 111
    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    .line 112
    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 117
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    invoke-virtual {v0}, Lsz;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->c()Laq;

    move-result-object v0

    invoke-interface {v0}, Laq;->a()Ljava/util/List;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat;

    .line 127
    iget-wide v3, v0, Lat;->a:J

    invoke-virtual {p0, v3, v4}, LoT;->b(J)V

    .line 128
    invoke-static {v0, v1}, LoT;->a(Lat;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->c()Laq;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Laq;->a(J)Lat;

    move-result-object v1

    .line 34
    if-nez v1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {v1, v0}, LoT;->a(Lat;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    .line 81
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 82
    invoke-static {p1, p2}, LoT;->c(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 83
    return-void
.end method
