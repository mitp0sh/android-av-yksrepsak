.class public final Lml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmk;
.implements Lrz;


# instance fields
.field private volatile a:Lmn;

.field private volatile b:Lmo;

.field private volatile c:Lcom/kms/antivirus/MonitorMode;

.field private final d:Ljava/lang/Object;

.field private e:LgJ;

.field private f:Lms;

.field private g:Lcom/kms/antivirus/AvSynchronizedQueue;

.field private h:Lmz;

.field private i:LmE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lmn;->a()Lmn;

    move-result-object v0

    iput-object v0, p0, Lml;->a:Lmn;

    .line 31
    invoke-static {}, Lmo;->a()Lmo;

    move-result-object v0

    iput-object v0, p0, Lml;->b:Lmo;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lml;->c:Lcom/kms/antivirus/MonitorMode;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lml;->d:Ljava/lang/Object;

    .line 44
    new-instance v0, LmE;

    invoke-direct {v0}, LmE;-><init>()V

    iput-object v0, p0, Lml;->i:LmE;

    return-void
.end method

.method private a(Lme;)V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lml;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-object v2, Lmm;->a:[I

    invoke-virtual {p1}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 211
    :pswitch_0
    invoke-static {}, Lmn;->b()Lmn;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 214
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lml;->a:Lmn;

    invoke-virtual {p1}, Lme;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lmn;->a(I)Lmn;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmn;)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lml;->a:Lmn;

    invoke-virtual {p1}, Lme;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lmn;->b(I)Lmn;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmn;)V

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v0, p0, Lml;->a:Lmn;

    invoke-virtual {p1}, Lme;->j()Lmf;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmn;->a(Lmf;)Lmn;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmn;)V

    goto :goto_0

    .line 223
    :pswitch_4
    iget-object v0, p0, Lml;->a:Lmn;

    invoke-virtual {p1}, Lme;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmn;->a(Ljava/lang/String;)Lmn;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmn;)V

    goto :goto_0

    .line 226
    :pswitch_5
    iget-object v0, p0, Lml;->a:Lmn;

    invoke-virtual {p1}, Lme;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lmn;->c(I)Lmn;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmn;)V

    goto :goto_0

    .line 229
    :pswitch_6
    iget-object v0, p0, Lml;->a:Lmn;

    invoke-virtual {v0}, Lmn;->c()Lmn;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmn;)V

    goto :goto_0

    .line 232
    :pswitch_7
    invoke-virtual {p1}, Lme;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lml;->a:Lmn;

    invoke-virtual {v0}, Lmn;->d()Lmn;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmn;)V

    goto :goto_0

    .line 242
    :pswitch_8
    invoke-virtual {p1}, Lme;->g()Lcom/kms/antivirus/AntivirusUpdateReason;

    move-result-object v0

    invoke-static {v0}, Lmo;->a(Lcom/kms/antivirus/AntivirusUpdateReason;)Lmo;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmo;)V

    goto :goto_0

    .line 245
    :pswitch_9
    iget-object v0, p0, Lml;->b:Lmo;

    invoke-virtual {p1}, Lme;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lmo;->a(I)Lmo;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmo;)V

    goto/16 :goto_0

    .line 248
    :pswitch_a
    iget-object v0, p0, Lml;->b:Lmo;

    invoke-virtual {v0}, Lmo;->b()Lmo;

    move-result-object v0

    invoke-direct {p0, v0}, Lml;->a(Lmo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private a(Lmn;)V
    .locals 2

    .prologue
    .line 100
    iput-object p1, p0, Lml;->a:Lmn;

    .line 101
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ServiceStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1, p1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 102
    return-void
.end method

.method private a(Lmo;)V
    .locals 2

    .prologue
    .line 105
    iput-object p1, p0, Lml;->b:Lmo;

    .line 106
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1, p1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 107
    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 148
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v3}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 151
    if-eq v0, p1, :cond_0

    .line 152
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 155
    :cond_0
    invoke-virtual {v1, v2}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 156
    if-eq v0, p2, :cond_1

    .line 157
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 160
    :cond_1
    invoke-virtual {v1}, Lsf;->g_()V

    .line 162
    invoke-direct {p0, p2}, Lml;->b(Z)V

    .line 163
    return-void
.end method

.method private b(Lcom/kms/antivirus/MonitorMode;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v2

    .line 174
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 175
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 177
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 178
    :goto_0
    if-eqz v0, :cond_2

    .line 179
    if-nez v2, :cond_0

    .line 181
    invoke-direct {p0, v3, v3}, Lml;->a(ZZ)V

    .line 186
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 184
    :cond_2
    invoke-direct {p0, v2, v1}, Lml;->a(ZZ)V

    goto :goto_1
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lml;->e:LgJ;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lml;->e:LgJ;

    invoke-virtual {v0, p1}, LgJ;->a(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method private static c(Lcom/kms/antivirus/MonitorMode;)V
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 191
    invoke-static {}, Lsr;->k()Lsh;

    move-result-object v1

    .line 192
    invoke-virtual {v0}, Lsl;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lsh;->a(I)V

    .line 193
    invoke-virtual {v1}, Lsh;->g_()V

    .line 195
    const-class v1, Lsl;

    monitor-enter v1

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/kms/antivirus/MonitorMode;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lsl;->b(I)V

    .line 197
    invoke-virtual {v0}, Lsl;->g_()V

    .line 198
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized d(Lcom/kms/antivirus/MonitorMode;)V
    .locals 2

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    sget-object v0, Lmm;->b:[I

    invoke-virtual {p1}, Lcom/kms/antivirus/MonitorMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown monitor mode!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lml;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lml;->o()V

    goto :goto_0

    .line 278
    :pswitch_2
    invoke-virtual {p0}, Lml;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private m()Lmz;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lml;->h:Lmz;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lmz;

    iget-object v1, p0, Lml;->g:Lcom/kms/antivirus/AvSynchronizedQueue;

    invoke-direct {v0, v1}, Lmz;-><init>(Lcom/kms/antivirus/AvSynchronizedQueue;)V

    iput-object v0, p0, Lml;->h:Lmz;

    .line 306
    :cond_0
    iget-object v0, p0, Lml;->h:Lmz;

    return-object v0
.end method

.method private n()Lcom/kms/antivirus/AvSynchronizedQueue;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lml;->g:Lcom/kms/antivirus/AvSynchronizedQueue;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/kms/antivirus/AvSynchronizedQueue;

    invoke-direct {v0}, Lcom/kms/antivirus/AvSynchronizedQueue;-><init>()V

    iput-object v0, p0, Lml;->g:Lcom/kms/antivirus/AvSynchronizedQueue;

    .line 313
    :cond_0
    iget-object v0, p0, Lml;->g:Lcom/kms/antivirus/AvSynchronizedQueue;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lml;->f:Lms;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lml;->f:Lms;

    invoke-virtual {v0}, Lms;->a()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lml;->f:Lms;

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lmn;
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lml;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lml;->a:Lmn;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/kms/antivirus/MonitorMode;)V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lml;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lml;->h()Lcom/kms/antivirus/MonitorMode;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 125
    iput-object p1, p0, Lml;->c:Lcom/kms/antivirus/MonitorMode;

    .line 127
    invoke-direct {p0, p1}, Lml;->b(Lcom/kms/antivirus/MonitorMode;)V

    .line 128
    invoke-static {p1}, Lml;->c(Lcom/kms/antivirus/MonitorMode;)V

    .line 130
    invoke-direct {p0, p1}, Lml;->d(Lcom/kms/antivirus/MonitorMode;)V

    .line 132
    invoke-static {}, LnE;->d()V

    .line 133
    invoke-static {}, LoR;->b()Z

    .line 135
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->MonitorModeChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v2, p1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v2

    invoke-interface {v0, v2}, Lrx;->a(Lrw;)V

    .line 137
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lme;

    invoke-direct {p0, p1}, Lml;->a(Lme;)V

    return-void
.end method

.method public final a(Lrx;)V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lme;

    invoke-interface {p1, v0, p0}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 48
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lml;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-direct {p0, p1, p1}, Lml;->a(ZZ)V

    .line 144
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Lmo;
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lml;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lml;->b:Lmo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v1

    invoke-interface {v1}, Lgz;->a()LgE;

    move-result-object v1

    sget-object v2, Lcom/kms/antivirus/AntivirusScanType;->Quick:Lcom/kms/antivirus/AntivirusScanType;

    invoke-virtual {v2}, Lcom/kms/antivirus/AntivirusScanType;->getScanFlag()I

    move-result v2

    const-string v3, "/"

    invoke-static {v1, v2, v3, v0}, Lmx;->a(LgE;ILjava/lang/String;Z)Ljava/lang/Thread;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v1

    invoke-interface {v1}, Lgz;->a()LgE;

    move-result-object v1

    sget-object v2, Lcom/kms/antivirus/AntivirusScanType;->Full:Lcom/kms/antivirus/AntivirusScanType;

    invoke-virtual {v2}, Lcom/kms/antivirus/AntivirusScanType;->getScanFlag()I

    move-result v2

    const-string v3, "/"

    invoke-static {v1, v2, v3, v0}, Lmx;->a(LgE;ILjava/lang/String;Z)Ljava/lang/Thread;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->m()I

    move-result v1

    .line 86
    if-eqz v1, :cond_0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 91
    invoke-static {}, Lmx;->b()V

    .line 92
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->n()V

    .line 97
    return-void
.end method

.method public final h()Lcom/kms/antivirus/MonitorMode;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lml;->c:Lcom/kms/antivirus/MonitorMode;

    if-nez v0, :cond_1

    .line 112
    iget-object v1, p0, Lml;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lml;->c:Lcom/kms/antivirus/MonitorMode;

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    invoke-virtual {v0}, Lsl;->c()I

    move-result v0

    invoke-static {v0}, Lcom/kms/antivirus/MonitorMode;->getById(I)Lcom/kms/antivirus/MonitorMode;

    move-result-object v0

    iput-object v0, p0, Lml;->c:Lcom/kms/antivirus/MonitorMode;

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    iget-object v0, p0, Lml;->c:Lcom/kms/antivirus/MonitorMode;

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final i()LgJ;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lml;->e:LgJ;

    return-object v0
.end method

.method public final j()Lmy;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lml;->f:Lms;

    return-object v0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lml;->f:Lms;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lms;

    invoke-direct {p0}, Lml;->n()Lcom/kms/antivirus/AvSynchronizedQueue;

    move-result-object v1

    invoke-direct {p0}, Lml;->m()Lmz;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lms;-><init>(Lcom/kms/antivirus/AvSynchronizedQueue;Lmz;)V

    iput-object v0, p0, Lml;->f:Lms;

    .line 290
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lml;->e:LgJ;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, LgJ;

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-direct {v0, v1}, LgJ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lml;->e:LgJ;

    .line 296
    iget-object v0, p0, Lml;->e:LgJ;

    iget-object v1, p0, Lml;->i:LmE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LgJ;->a(LgL;LgM;)V

    .line 297
    iget-object v1, p0, Lml;->e:LgJ;

    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, LgJ;->a(Z)V

    .line 298
    iget-object v1, p0, Lml;->e:LgJ;

    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, LgJ;->b(Z)V

    .line 300
    :cond_0
    return-void
.end method
