.class public final LvF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljq;
.implements LvA;


# instance fields
.field private a:Z

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Lcom/kms/antivirus/AntivirusUpdateReason;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljr;

.field private g:Ljava/util/Set;


# direct methods
.method public constructor <init>(ZLjava/util/concurrent/atomic/AtomicBoolean;Lcom/kms/antivirus/AntivirusUpdateReason;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, LvF;->e:Z

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LvF;->g:Ljava/util/Set;

    .line 57
    iput-boolean p1, p0, LvF;->a:Z

    .line 58
    iput-object p2, p0, LvF;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    iput-object p3, p0, LvF;->c:Lcom/kms/antivirus/AntivirusUpdateReason;

    .line 60
    iput-object p4, p0, LvF;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private static a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 146
    and-int/lit16 v0, p0, 0xff

    .line 147
    if-nez v0, :cond_0

    .line 148
    const/16 v0, 0x9

    const-string v1, "Update Server"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    .line 149
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdated:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent()Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 160
    :goto_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFinished:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent()Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 161
    return-void

    .line 151
    :cond_0
    if-ne p0, v5, :cond_1

    .line 152
    const/16 v0, 0x4a

    const-string v1, "Update Server"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    .line 153
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesAlreadyLatest:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent()Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0

    .line 155
    :cond_1
    const/16 v1, 0xa

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Serializable;

    const/4 v3, 0x0

    const-string v4, "Update Server"

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 156
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFailed:Lcom/kms/antivirus/AntivirusEventType;

    invoke-static {p0}, Lcom/kms/antivirus/AntivirusUpdateError;->getByErrorCode(I)Lcom/kms/antivirus/AntivirusUpdateError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 171
    const-string v0, "kc_kism_sdkm.xms"

    const-string v1, "kh_kism_sdkm.xms"

    const-string v2, "ksncliwin32keys.dat"

    invoke-static {v0, v1, v2}, Ljs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljr;->a()Ljr;

    move-result-object v0

    iput-object v0, p0, LvF;->f:Ljr;

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public final a(II)Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 71
    :pswitch_0
    iget-boolean v0, p0, LvF;->e:Z

    if-eqz v0, :cond_1

    move v2, v3

    .line 142
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    :pswitch_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 77
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 80
    packed-switch p1, :pswitch_data_1

    move v1, v2

    .line 113
    :goto_1
    iget-boolean v0, p0, LvF;->e:Z

    if-nez v0, :cond_2

    .line 115
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v6, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v6

    invoke-interface {v0, v6}, Lrx;->a(Lrw;)V

    .line 118
    :cond_2
    iget-object v0, p0, LvF;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, LvF;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 121
    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 82
    :pswitch_2
    iput v2, v4, Landroid/os/Message;->what:I

    .line 83
    const-string v0, "result"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStarted:Lcom/kms/antivirus/AntivirusEventType;

    iget-object v6, p0, LvF;->c:Lcom/kms/antivirus/AntivirusUpdateReason;

    invoke-virtual {v1, v6}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    move v1, v2

    .line 85
    goto :goto_1

    .line 88
    :pswitch_3
    iput v3, v4, Landroid/os/Message;->what:I

    .line 89
    const-string v0, "serverAddress"

    const-string v1, "Update Server"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/16 v0, 0x19

    move v1, v0

    .line 91
    goto :goto_1

    .line 94
    :pswitch_4
    const/4 v0, 0x2

    iput v0, v4, Landroid/os/Message;->what:I

    .line 95
    const-string v0, "result"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const/16 v0, 0x32

    move v1, v0

    .line 97
    goto :goto_1

    .line 100
    :pswitch_5
    const/4 v0, 0x3

    iput v0, v4, Landroid/os/Message;->what:I

    .line 101
    const-string v0, "result"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const/16 v0, 0x4b

    move v1, v0

    .line 103
    goto :goto_1

    .line 106
    :pswitch_6
    iput v8, v4, Landroid/os/Message;->what:I

    .line 107
    const-string v0, "result"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const/16 v0, 0x64

    move v1, v0

    goto/16 :goto_1

    .line 124
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 125
    const/16 v0, 0x1f4

    iput v0, v4, Landroid/os/Message;->what:I

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string v5, "result"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 129
    iget-object v0, p0, LvF;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 130
    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 134
    :cond_4
    if-ne p1, v8, :cond_0

    .line 135
    invoke-static {p2}, LvF;->a(I)V

    .line 136
    invoke-static {}, LnE;->d()V

    .line 137
    if-eqz p2, :cond_5

    if-ne p2, v3, :cond_0

    .line 138
    :cond_5
    invoke-static {}, LmC;->a()LmC;

    move-result-object v0

    invoke-virtual {v0}, LmC;->c()V

    goto/16 :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 80
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Landroid/os/Handler;)Z
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, LvF;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 221
    :try_start_0
    invoke-virtual {p0}, LvF;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, LvF;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, LvF;->a:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v1, p0, LvF;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 180
    :goto_0
    :try_start_0
    iget-object v0, p0, LvF;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :try_start_1
    iget-object v0, p0, LvF;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :cond_1
    :try_start_4
    iget-object v0, p0, LvF;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, LvF;->f:Ljr;

    iget-object v1, p0, LvF;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljr;->a(Ljava/lang/String;Ljq;)V
    :try_end_4
    .catch Lcom/kavsdk/license/SdkLicenseViolationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 199
    :goto_1
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    iget-boolean v1, p0, LvF;->a:Z

    invoke-virtual {v0, v1}, Lwz;->b(Z)V

    .line 202
    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 194
    :cond_3
    :try_start_5
    iget-object v0, p0, LvF;->f:Ljr;

    invoke-virtual {v0, p0}, Ljr;->a(Ljq;)V
    :try_end_5
    .catch Lcom/kavsdk/license/SdkLicenseViolationException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 197
    :catch_1
    move-exception v0

    const/4 v0, -0x1

    goto :goto_2
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, LvF;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 207
    iget-boolean v0, p0, LvF;->e:Z

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFinished:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent()Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, LvF;->e:Z

    .line 211
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, LvF;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LvF;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
