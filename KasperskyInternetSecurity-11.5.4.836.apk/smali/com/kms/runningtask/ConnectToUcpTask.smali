.class public final Lcom/kms/runningtask/ConnectToUcpTask;
.super Lvw;
.source "SourceFile"

# interfaces
.implements LaS;
.implements LaY;


# instance fields
.field private final a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:LaX;

.field private f:Z

.field private final g:Ljava/lang/Object;

.field private h:LaY;

.field private final i:Ljava/lang/Object;

.field private volatile j:Z

.field private volatile k:I

.field private volatile l:I

.field private volatile m:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lvw;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    .line 42
    iput-boolean v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->j:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->l:I

    .line 48
    iput-boolean v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->a:Z

    .line 49
    iput-object p1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->b:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->c:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lvw;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->j:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->l:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->a:Z

    .line 55
    iput-object p1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->b:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->c:Ljava/lang/String;

    .line 57
    iput-boolean p3, p0, Lcom/kms/runningtask/ConnectToUcpTask;->d:Z

    .line 58
    return-void
.end method

.method public static synthetic a(Lcom/kms/runningtask/ConnectToUcpTask;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private a(IILjava/util/Date;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->j:Z

    .line 279
    iput p1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->k:I

    .line 280
    iput p2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->l:I

    .line 281
    iput-object p3, p0, Lcom/kms/runningtask/ConnectToUcpTask;->m:Ljava/util/Date;

    .line 282
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 283
    return-void
.end method

.method public static synthetic b(Lcom/kms/runningtask/ConnectToUcpTask;)LaX;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v0, p0}, LaX;->a(LaY;)V

    .line 110
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v0, p0}, LaX;->a(LaS;)V

    .line 113
    iget-boolean v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->a:Z

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/kms/runningtask/ConnectToUcpTask;->g()V

    .line 119
    :goto_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    .line 120
    iget v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->k:I

    if-nez v1, :cond_1

    .line 121
    if-eqz v0, :cond_0

    invoke-virtual {v0}, LcW;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->C()LaV;

    move-result-object v1

    invoke-virtual {v0, v1}, LcW;->b(LaU;)V

    .line 127
    :cond_0
    invoke-static {}, Lwy;->c()V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v0, p0}, LaX;->b(LaY;)V

    .line 131
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v0, p0}, LaX;->b(LaS;)V

    .line 132
    return-void

    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/kms/runningtask/ConnectToUcpTask;->h()V

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 135
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v1}, LaX;->a()Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 136
    new-instance v1, Lvx;

    invoke-direct {v1, p0}, Lvx;-><init>(Lcom/kms/runningtask/ConnectToUcpTask;)V

    .line 146
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v0, v1}, LaX;->a(LaY;)V

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    invoke-direct {p0}, Lcom/kms/runningtask/ConnectToUcpTask;->j()V

    .line 150
    iput-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->h:LaY;

    .line 151
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    :try_start_2
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v0}, LaX;->unregisterAccount()V

    .line 153
    iget-object v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :try_start_3
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    iget-object v3, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v3}, LaX;->a()Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    move-result-object v3

    if-eq v0, v3, :cond_0

    .line 155
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 157
    :cond_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 158
    :try_start_4
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    iget-object v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v2}, LaX;->a()Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 159
    new-instance v0, Lcom/kms/runningtask/ConnectToUcpTask$UcpUnregisterException;

    const-string v2, "Cannot unregister from UCP."

    invoke-direct {v0, p0, v2}, Lcom/kms/runningtask/ConnectToUcpTask$UcpUnregisterException;-><init>(Lcom/kms/runningtask/ConnectToUcpTask;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v2, v1}, LaX;->b(LaY;)V

    .line 163
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->h:LaY;

    .line 165
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    .line 151
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0

    .line 157
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v0, v1}, LaX;->b(LaY;)V

    .line 163
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->h:LaY;

    .line 165
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 168
    :cond_2
    return-void

    .line 165
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/kms/runningtask/ConnectToUcpTask;->d:Z

    invoke-interface {v0, v1, v2, v3}, LaX;->createNewAccount(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->j:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 176
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-direct {p0}, Lcom/kms/runningtask/ConnectToUcpTask;->i()V

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lvy;

    invoke-direct {v0, p0}, Lvy;-><init>(Lcom/kms/runningtask/ConnectToUcpTask;)V

    .line 189
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v1, v0}, LaX;->a(LaY;)V

    .line 191
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    iget-object v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/kms/runningtask/ConnectToUcpTask;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, LaX;->registerAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-boolean v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->j:Z

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 196
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    invoke-interface {v1, v0}, LaX;->b(LaY;)V

    .line 198
    invoke-direct {p0}, Lcom/kms/runningtask/ConnectToUcpTask;->i()V

    .line 199
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 202
    iget v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    new-instance v0, Lur;

    invoke-direct {v0}, Lur;-><init>()V

    .line 204
    invoke-virtual {v0}, Lur;->a()V

    .line 205
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lur;->a(J)V

    .line 207
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->f:Z

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Lcom/kms/runningtask/ConnectToUcpTask$OperationCancelledException;

    const-string v1, "Cancelled"

    invoke-direct {v0, p0, v1}, Lcom/kms/runningtask/ConnectToUcpTask$OperationCancelledException;-><init>(Lcom/kms/runningtask/ConnectToUcpTask;Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    const/4 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Lcom/kms/runningtask/ConnectToUcpTask;->a(IILjava/util/Date;)V

    .line 258
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/kaspersky/components/ucp/UcpConnectionStatus;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Connected:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    if-ne p1, v0, :cond_0

    .line 227
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/kms/runningtask/ConnectToUcpTask;->a(III)V

    .line 229
    :cond_0
    return-void
.end method

.method public final a(ZLjava/util/Date;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v2

    .line 235
    iget-object v3, p0, Lcom/kms/runningtask/ConnectToUcpTask;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lse;->b(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kms/kmsshared/KMSApplication;->A()Lwo;

    move-result-object v3

    invoke-virtual {v3}, Lwo;->e()Lcom/kaspersky/components/ucp/UcpGeneralClient;

    invoke-static {}, Lcom/kaspersky/components/ucp/UcpGeneralClient;->b()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v2, v3}, Lse;->c(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2}, Lse;->g_()V

    .line 240
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v2

    .line 241
    const-class v3, Lsx;

    monitor-enter v3

    .line 242
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Lsx;->b(Z)V

    .line 243
    invoke-virtual {v2}, Lsx;->g_()V

    .line 244
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v2, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 247
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :goto_0
    :try_start_1
    invoke-direct {p0, v3, v0, p2}, Lcom/kms/runningtask/ConnectToUcpTask;->a(IILjava/util/Date;)V

    .line 248
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lrq;->b(I)V

    .line 251
    iget-boolean v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->a:Z

    invoke-static {v1, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(ZZ)V

    .line 252
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    move v0, v1

    .line 247
    goto :goto_0

    .line 248
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b()I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v4

    .line 71
    :try_start_0
    iget-object v5, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lcom/kms/runningtask/ConnectToUcpTask$OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kms/runningtask/ConnectToUcpTask$UcpUnregisterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :try_start_1
    invoke-direct {p0}, Lcom/kms/runningtask/ConnectToUcpTask;->j()V

    .line 74
    invoke-virtual {v4}, Lcom/kms/kmsshared/KMSApplication;->B()LaX;

    move-result-object v3

    iput-object v3, p0, Lcom/kms/runningtask/ConnectToUcpTask;->e:LaX;

    .line 75
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    invoke-direct {p0}, Lcom/kms/runningtask/ConnectToUcpTask;->f()V

    .line 77
    invoke-direct {p0}, Lcom/kms/runningtask/ConnectToUcpTask;->e()V
    :try_end_2
    .catch Lcom/kms/runningtask/ConnectToUcpTask$OperationCancelledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/kms/runningtask/ConnectToUcpTask$UcpUnregisterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    monitor-enter v3

    .line 91
    :try_start_3
    iget v5, p0, Lcom/kms/runningtask/ConnectToUcpTask;->k:I

    .line 92
    iget v6, p0, Lcom/kms/runningtask/ConnectToUcpTask;->l:I

    .line 93
    iget-object v7, p0, Lcom/kms/runningtask/ConnectToUcpTask;->m:Ljava/util/Date;

    .line 94
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    if-nez v0, :cond_0

    .line 97
    if-eq v6, v2, :cond_0

    .line 98
    invoke-virtual {p0, v8, v1, v6, v7}, Lcom/kms/runningtask/ConnectToUcpTask;->a(IIILjava/lang/Object;)V

    .line 99
    invoke-virtual {v4}, Lcom/kms/kmsshared/KMSApplication;->A()Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->f()V

    .line 100
    invoke-virtual {v4}, Lcom/kms/kmsshared/KMSApplication;->E()LaZ;

    move-result-object v0

    invoke-interface {v0}, LaZ;->publishLicenseInfo()V

    move v0, v1

    .line 105
    :goto_1
    return v0

    .line 75
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5

    throw v3
    :try_end_4
    .catch Lcom/kms/runningtask/ConnectToUcpTask$OperationCancelledException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/kms/runningtask/ConnectToUcpTask$UcpUnregisterException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0

    .line 82
    :catch_1
    move-exception v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 94
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 104
    :cond_0
    invoke-virtual {p0, v8, v2, v5, v0}, Lcom/kms/runningtask/ConnectToUcpTask;->a(IIILjava/lang/Object;)V

    move v0, v2

    .line 105
    goto :goto_1

    .line 80
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 263
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    const/4 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Lcom/kms/runningtask/ConnectToUcpTask;->a(IILjava/util/Date;)V

    .line 265
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->f:Z

    .line 213
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->h:LaY;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/kms/runningtask/ConnectToUcpTask;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 216
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

.method public final d()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method
