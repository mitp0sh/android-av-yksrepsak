.class final Lmz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LgF;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lmt;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/kms/antivirus/AvSynchronizedQueue;

.field private g:Z

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Lcom/kms/antivirus/AvSynchronizedQueue;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iput-object v0, p0, Lmz;->e:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lmz;->f:Lcom/kms/antivirus/AvSynchronizedQueue;

    .line 42
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/ThreatType;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 110
    if-eq p1, v8, :cond_0

    if-ne p1, v6, :cond_2

    :cond_0
    iget-boolean v0, p0, Lmz;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmz;->g:Z

    if-nez v0, :cond_2

    .line 113
    iput-boolean v6, p0, Lmz;->a:Z

    .line 114
    invoke-static {p5, p4, p3}, Lcom/kms/kmsshared/reports/Reports;->addDetection(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p2}, Lcom/kms/kmsshared/Utils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lmz;->e:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 118
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    const/16 v3, 0x8

    if-lt v2, v3, :cond_3

    .line 121
    :try_start_0
    invoke-static {v0, v1}, Lrl;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    iget-object v0, p0, Lmz;->e:Landroid/content/Context;

    iget-object v1, p0, Lmz;->b:Ljava/lang/String;

    const-wide/16 v3, 0xbb8

    move-object v2, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/kavsdk/antivirus/ThreatType;)V

    .line 130
    invoke-static {}, Lcom/kms/kmsshared/Utils;->h()V

    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmz;->e:Landroid/content/Context;

    const-class v2, Lcom/kms/antivirus/gui/AvUserActionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    const-string v1, "com.kms.useraction.info"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "com.kms.useraction.file"

    iget-object v2, p0, Lmz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "com.kms.useraction.package"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "com.kms.useraction.type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 141
    const-string v1, "com.kms.useraction.mode"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lmz;->d:Lmt;

    invoke-virtual {v1}, Lmt;->c()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 144
    const-string v1, "com.kms.useraction.launchedfrom"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    :cond_1
    iget-object v1, p0, Lmz;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    iget-object v0, p0, Lmz;->d:Lmt;

    invoke-virtual {v0}, Lmt;->b()Lmy;

    move-result-object v0

    invoke-interface {v0}, Lmy;->c()V

    .line 150
    iget-object v0, p0, Lmz;->d:Lmt;

    invoke-virtual {v0}, Lmt;->b()Lmy;

    move-result-object v0

    invoke-interface {v0}, Lmy;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_2
    :goto_1
    return-void

    .line 123
    :cond_3
    :try_start_1
    invoke-static {v0, v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lmz;->d:Lmt;

    invoke-virtual {v0}, Lmt;->c()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 154
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmz;->d:Lmt;

    invoke-virtual {v1}, Lmt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-static {v6, p2}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_4
    const/4 v0, 0x5

    invoke-static {v0, p2}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_1

    .line 163
    :pswitch_1
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(IILgH;Lcom/kavsdk/antivirus/ThreatType;)I
    .locals 6

    .prologue
    .line 182
    invoke-interface {p3}, LgH;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3}, LgH;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmz;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/ThreatType;)V

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lmz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 48
    iget-object v0, p0, Lmz;->f:Lcom/kms/antivirus/AvSynchronizedQueue;

    invoke-virtual {v0}, Lcom/kms/antivirus/AvSynchronizedQueue;->poll()Lmt;

    move-result-object v0

    iput-object v0, p0, Lmz;->d:Lmt;

    .line 49
    iget-object v0, p0, Lmz;->d:Lmt;

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lgz;->a()LgE;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v3

    .line 59
    invoke-static {}, Lcom/kms/kmsshared/Utils;->f()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v9

    :goto_1
    iput-boolean v1, p0, Lmz;->g:Z

    .line 60
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmz;->g:Z

    if-eqz v1, :cond_7

    :cond_1
    move v1, v9

    .line 63
    :goto_2
    const/16 v2, 0x2002

    .line 65
    if-eqz v1, :cond_2

    .line 66
    const/16 v2, 0x2202

    .line 69
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lmz;->g:Z

    if-eqz v1, :cond_4

    .line 70
    :cond_3
    or-int/lit16 v2, v2, 0x800

    .line 73
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmz;->a:Z

    .line 74
    iget-object v1, p0, Lmz;->d:Lmt;

    invoke-virtual {v1}, Lmt;->a()Ljava/lang/String;

    move-result-object v1

    .line 75
    const/4 v3, 0x0

    iput-object v3, p0, Lmz;->c:Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lmz;->d:Lmt;

    invoke-virtual {v3}, Lmt;->c()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 77
    invoke-static {v1}, Lcom/kms/kmsshared/Utils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmz;->b:Ljava/lang/String;

    .line 79
    :cond_5
    iget-object v3, p0, Lmz;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 83
    iget-boolean v3, p0, Lmz;->g:Z

    if-eqz v3, :cond_8

    move v3, v7

    .line 84
    :goto_3
    invoke-interface {v0, v1}, LgE;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 85
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, p0

    invoke-interface/range {v0 .. v6}, LgE;->a(Ljava/lang/String;IILgF;[Ljava/lang/String;Z)V

    .line 91
    :goto_4
    iget-boolean v0, p0, Lmz;->a:Z

    if-nez v0, :cond_0

    .line 92
    iget-boolean v0, p0, Lmz;->g:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lmz;->e:Landroid/content/Context;

    iget-object v1, p0, Lmz;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    sget-object v5, Lcom/kavsdk/antivirus/ThreatType;->None:Lcom/kavsdk/antivirus/ThreatType;

    invoke-static/range {v0 .. v5}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/kavsdk/antivirus/ThreatType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    move v1, v8

    .line 59
    goto :goto_1

    :cond_7
    move v1, v8

    .line 60
    goto :goto_2

    .line 83
    :cond_8
    const/4 v3, 0x5

    goto :goto_3

    .line 88
    :cond_9
    const/4 v5, 0x1

    move-object v4, p0

    :try_start_1
    invoke-interface/range {v0 .. v5}, LgE;->a(Ljava/lang/String;IILgF;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 105
    :cond_a
    return-void
.end method
