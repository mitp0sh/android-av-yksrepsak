.class public final Lwy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method public static a(Lcom/kaspersky/components/ucp/MobileStatus;)V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lwy;->g()Ljava/io/File;

    move-result-object v0

    .line 115
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 116
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 119
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 6

    .prologue
    .line 45
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lsx;->b()Z

    move-result v0

    .line 49
    if-nez v0, :cond_0

    invoke-static {}, LjJ;->o()LvH;

    move-result-object v2

    invoke-virtual {v2}, LvH;->f()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v2, "ucp.check_readiness_url"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v5

    invoke-virtual {v5}, Lsj;->r()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Ll;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v2

    const-string v3, "ucp.check_readiness_allow_answer"

    invoke-interface {v2, v3}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 53
    invoke-virtual {v1, v0}, Lsx;->a(Z)V

    .line 54
    invoke-virtual {v1}, Lsx;->g_()V

    .line 56
    :cond_0
    return v0
.end method

.method public static b()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lsz;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 67
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    invoke-static {v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 73
    invoke-static {v1, v5, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 74
    const v5, 0x7f070493

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    const v6, 0x7f070494

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v7, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v5, 0x7f020066

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 84
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 85
    const-string v2, "UCP_NOTIFICATION_TAG"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 91
    const-string v1, "UCP_NOTIFICATION_TAG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/io/File;
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lwy;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "as3_mugshots"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 106
    sput-object v0, Lwy;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lwy;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 109
    :cond_0
    sget-object v0, Lwy;->a:Ljava/io/File;

    return-object v0
.end method

.method public static f()Lcom/kaspersky/components/ucp/MobileStatus;
    .locals 5

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-static {}, Lwy;->g()Ljava/io/File;

    move-result-object v0

    .line 129
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 130
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ucp/MobileStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 133
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 135
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 137
    :goto_2
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 136
    :catch_2
    move-exception v1

    goto :goto_2

    .line 134
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static g()Ljava/io/File;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "ucp_statuses.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
