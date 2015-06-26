.class public LnE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:LnE;

.field private static c:Landroid/support/v4/app/NotificationCompat$Builder;

.field private static d:Lcom/kms/gui/NotificationMode;

.field private static e:Z

.field private static f:Z

.field private static volatile g:Z

.field private static h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static j:LnG;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " <b><font color=\"#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, -0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LnE;->a:Ljava/lang/String;

    .line 47
    new-instance v0, LnE;

    invoke-direct {v0}, LnE;-><init>()V

    sput-object v0, LnE;->b:LnE;

    .line 49
    sget-object v0, Lcom/kms/gui/NotificationMode;->Normal:Lcom/kms/gui/NotificationMode;

    sput-object v0, LnE;->d:Lcom/kms/gui/NotificationMode;

    .line 50
    sput-boolean v2, LnE;->e:Z

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, LnE;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LnE;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, LnG;

    sget-object v1, LnE;->b:LnE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, LnG;-><init>(LnE;B)V

    sput-object v0, LnE;->j:LnG;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private static a(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 177
    sget-object v0, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 178
    sget-object v0, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 179
    return-void
.end method

.method private static declared-synchronized a(Lcom/kms/gui/NotificationMode;)V
    .locals 2

    .prologue
    .line 68
    const-class v1, LnE;

    monitor-enter v1

    :try_start_0
    sget-object v0, LnE;->d:Lcom/kms/gui/NotificationMode;

    if-eq v0, p0, :cond_0

    .line 69
    sput-object p0, LnE;->d:Lcom/kms/gui/NotificationMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit v1

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lmn;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 340
    sget-object v0, LnF;->c:[I

    invoke-virtual {p0}, Lmn;->e()Lcom/kms/antivirus/AntivirusStateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    invoke-static {}, LnE;->d()V

    .line 354
    return-void

    .line 342
    :pswitch_0
    sget-object v0, Lcom/kms/gui/NotificationMode;->Scanning:Lcom/kms/gui/NotificationMode;

    invoke-static {v0}, LnE;->a(Lcom/kms/gui/NotificationMode;)V

    .line 343
    sget-object v0, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    invoke-virtual {p0}, Lmn;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 346
    :pswitch_1
    invoke-static {}, LnE;->g()Lcom/kms/gui/NotificationMode;

    move-result-object v0

    invoke-static {v0}, LnE;->a(Lcom/kms/gui/NotificationMode;)V

    .line 347
    sget-object v0, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3, v3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(LnE;Lmn;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p1}, LnE;->a(Lmn;)V

    return-void
.end method

.method public static a(LsQ;)V
    .locals 2

    .prologue
    .line 242
    sget-object v0, LnE;->b:LnE;

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, LsQ;->a(Lax;I)Z

    .line 243
    return-void
.end method

.method private static a(Z)V
    .locals 6

    .prologue
    .line 100
    invoke-static {}, LnE;->g()Lcom/kms/gui/NotificationMode;

    move-result-object v0

    invoke-static {v0}, LnE;->a(Lcom/kms/gui/NotificationMode;)V

    .line 101
    const-class v1, LnE;

    monitor-enter v1

    .line 102
    :try_start_0
    invoke-static {}, LnE;->j()Landroid/app/NotificationManager;

    move-result-object v0

    .line 103
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 105
    invoke-static {}, LnE;->e()I

    move-result v2

    .line 106
    sget-object v3, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v3, :cond_0

    .line 107
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    sput-object v3, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f07002e

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 110
    :cond_0
    sget-object v3, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 111
    sget-object v2, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 112
    sget-object v2, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 113
    sget-object v2, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 114
    invoke-static {}, LnE;->l()V

    .line 115
    const/4 v2, 0x1

    sget-object v3, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, LnE;->e:Z

    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 74
    const-class v0, LnE;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, LnE;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, Lme;

    sget-object v2, LnE;->j:LnG;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, LnE;->a(Z)V

    .line 97
    return-void
.end method

.method public static declared-synchronized c()V
    .locals 3

    .prologue
    .line 139
    const-class v1, LnE;

    monitor-enter v1

    :try_start_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v2, LnE;->j:LnG;

    invoke-interface {v0, v2}, Lrx;->a(Lrz;)V

    .line 140
    invoke-static {}, LnE;->j()Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, LnE;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit v1

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, LnE;->e:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, LnE;->l()V

    .line 147
    invoke-static {}, LnE;->k()V

    .line 149
    :cond_0
    return-void
.end method

.method private static e()I
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, LnE;->g:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020066

    :goto_0
    return v0

    :cond_0
    invoke-static {}, LnE;->f()I

    move-result v0

    goto :goto_0
.end method

.method private static f()I
    .locals 2

    .prologue
    .line 82
    invoke-static {}, LnE;->h()Z

    move-result v0

    .line 83
    invoke-static {}, Lcom/kms/kmsshared/Utils;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    if-eqz v0, :cond_0

    const v0, 0x7f02006a

    .line 86
    :goto_0
    return v0

    .line 84
    :cond_0
    const v0, 0x7f020066

    goto :goto_0

    .line 86
    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x7f02006b

    goto :goto_0

    :cond_2
    const v0, 0x7f020068

    goto :goto_0
.end method

.method private static g()Lcom/kms/gui/NotificationMode;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, LnE;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kms/gui/NotificationMode;->Expired:Lcom/kms/gui/NotificationMode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kms/gui/NotificationMode;->Normal:Lcom/kms/gui/NotificationMode;

    goto :goto_0
.end method

.method private static h()Z
    .locals 1

    .prologue
    .line 126
    invoke-static {}, LnE;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, LnE;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 130
    sget-object v0, LnE;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 135
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private static k()V
    .locals 3

    .prologue
    .line 152
    sget-boolean v0, LnE;->e:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, LnE;->j()Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 155
    :cond_0
    return-void
.end method

.method private static l()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, LnF;->a:[I

    sget-object v1, LnE;->d:Lcom/kms/gui/NotificationMode;

    invoke-virtual {v1}, Lcom/kms/gui/NotificationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 160
    :pswitch_0
    invoke-static {}, LnE;->o()V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-static {}, LnE;->m()V

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-static {}, LnE;->n()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    sget-object v0, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->H()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 173
    invoke-static {}, LnE;->e()I

    move-result v0

    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f070209

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v3

    invoke-interface {v3}, Lmk;->a()Lmn;

    move-result-object v3

    invoke-virtual {v3}, Lmn;->k()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LnE;->a(ILjava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method private static n()V
    .locals 6

    .prologue
    const v5, 0x7f02006a

    .line 182
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v1

    .line 184
    const/4 v0, 0x0

    .line 185
    sget-object v2, LnE;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 206
    :goto_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v5, v0}, LnE;->a(ILjava/lang/CharSequence;)V

    .line 208
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->H()Landroid/content/Intent;

    move-result-object v0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cat"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    sget-object v2, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 212
    sget-object v0, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 213
    return-void

    .line 187
    :pswitch_0
    sget-object v0, LnE;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const v0, 0x7f070374

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_0
    const v0, 0x7f070225

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :pswitch_1
    const v0, 0x7f070375

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_2
    const v0, 0x7f070376

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_3
    const v0, 0x7f070377

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :pswitch_4
    const v0, 0x7f070378

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static o()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v2

    .line 218
    sput-boolean v4, LnE;->f:Z

    .line 220
    invoke-static {}, LnE;->e()I

    move-result v1

    .line 222
    sget-boolean v0, LnE;->g:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-static {v2, v5}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, LnE;->p()I

    move-result v1

    .line 237
    :goto_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v1, v0}, LnE;->a(ILjava/lang/CharSequence;)V

    .line 238
    sget-object v0, LnE;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->H()Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x8000000

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 239
    return-void

    .line 225
    :cond_0
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->h()Lcom/kms/antivirus/MonitorMode;

    move-result-object v0

    sget-object v3, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    if-ne v0, v3, :cond_1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LnE;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0x7f07020d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</font></b>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {}, Lcom/kms/kmsshared/Utils;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LnE;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07020c

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font></b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    sput-boolean v5, LnE;->f:Z

    .line 230
    const v1, 0x7f02006a

    goto :goto_0

    .line 231
    :cond_2
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->h()Lcom/kms/antivirus/MonitorMode;

    move-result-object v0

    sget-object v3, Lcom/kms/antivirus/MonitorMode;->Recommended:Lcom/kms/antivirus/MonitorMode;

    if-ne v0, v3, :cond_3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " <b>"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f07020b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</b>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 234
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " <b>"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f07020a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</b>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static p()I
    .locals 5

    .prologue
    .line 302
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v1

    .line 303
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    invoke-virtual {v1}, Lsf;->b()J

    move-result-wide v1

    .line 305
    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 306
    :cond_0
    const v0, 0x7f02006a

    .line 308
    :goto_0
    return v0

    :cond_1
    const v0, 0x7f020066

    goto :goto_0
.end method


# virtual methods
.method public final a(Lay;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 247
    invoke-interface {p1}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, LnE;->g:Z

    .line 248
    invoke-interface {p1}, Lay;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, LnE;->g:Z

    if-eqz v0, :cond_3

    .line 249
    :cond_0
    sget-object v0, LnE;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 250
    sget-object v0, LnE;->d:Lcom/kms/gui/NotificationMode;

    sget-object v1, Lcom/kms/gui/NotificationMode;->Expired:Lcom/kms/gui/NotificationMode;

    if-ne v0, v1, :cond_1

    .line 251
    sget-object v0, Lcom/kms/gui/NotificationMode;->Normal:Lcom/kms/gui/NotificationMode;

    invoke-static {v0}, LnE;->a(Lcom/kms/gui/NotificationMode;)V

    .line 275
    :cond_1
    :goto_1
    sget-object v0, LnE;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p1}, Lay;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 276
    invoke-static {}, LnE;->d()V

    .line 277
    return-void

    :cond_2
    move v0, v2

    .line 247
    goto :goto_0

    .line 254
    :cond_3
    invoke-interface {p1}, Lay;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 270
    sget-object v0, LnE;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 273
    :goto_2
    sget-object v0, Lcom/kms/gui/NotificationMode;->Expired:Lcom/kms/gui/NotificationMode;

    invoke-static {v0}, LnE;->a(Lcom/kms/gui/NotificationMode;)V

    goto :goto_1

    .line 257
    :pswitch_0
    sget-object v0, LnE;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    goto :goto_2

    .line 260
    :pswitch_1
    sget-object v0, LnE;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    goto :goto_2

    .line 263
    :pswitch_2
    sget-object v0, LnE;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    goto :goto_2

    .line 266
    :pswitch_3
    sget-object v0, LnE;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    goto :goto_2

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
