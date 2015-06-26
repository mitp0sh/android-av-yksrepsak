.class public final Lcom/kaspersky/kts/antitheft/WebRegistrationThread;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

.field private b:LdW;

.field private c:Lds;

.field private final d:Ljava/lang/ref/WeakReference;

.field private final e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->e:Ljava/util/concurrent/ExecutorService;

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->d:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method

.method public static a()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, LcW;->b()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 60
    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget v0, v0, LdW;->h:I

    sparse-switch v0, :sswitch_data_0

    .line 96
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    invoke-static {v2}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const v0, 0x7f0702cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    .line 109
    :goto_0
    return-void

    .line 83
    :sswitch_0
    const v0, 0x7f0702d0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 86
    :sswitch_1
    const/4 v0, 0x3

    const v1, 0x7f0702cc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 89
    :sswitch_2
    const/4 v0, 0x7

    const v1, 0x7f0702cf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 92
    :sswitch_3
    const/16 v0, 0x8

    const v1, 0x7f0702c3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    invoke-direct {p0, v1, v2}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private b()V
    .locals 2

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget-object v0, v0, LdW;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 71
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 72
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    if-nez v2, :cond_1

    .line 113
    const v2, 0x7f0702cd

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget v2, v2, LdW;->h:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 117
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    sget-object v3, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->REGISTER_NEW:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    if-ne v2, v3, :cond_3

    .line 118
    const/4 v1, 0x2

    const v2, 0x7f0702d3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget v2, v2, LdW;->h:I

    if-eqz v2, :cond_3

    .line 123
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    sget-object v3, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->SIGN_IN:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget v2, v2, LdW;->h:I

    if-nez v2, :cond_4

    .line 128
    const/4 v1, 0x5

    const v2, 0x7f0702d4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget-object v2, v2, LdW;->c:Ljava/lang/String;

    invoke-static {v2}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 133
    goto :goto_0

    .line 136
    :cond_5
    invoke-direct {p0}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b()V

    .line 137
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget-object v2, v2, LdW;->f:Ljava/lang/String;

    invoke-static {v2}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget v0, v0, LdW;->h:I

    if-nez v0, :cond_3

    .line 143
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v3

    .line 144
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    sget-object v4, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->REGISTER_NEW:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 145
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lse;->a(Ljava/lang/Boolean;)V

    .line 146
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lse;->k(Z)V

    .line 147
    invoke-virtual {v3, v2}, Lse;->j(Z)V

    .line 148
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lse;->a(Ljava/lang/Long;)V

    .line 149
    invoke-virtual {v3, v1}, Lse;->h(Z)V

    .line 150
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget-object v0, v0, LdW;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lse;->b(Ljava/lang/String;)V

    .line 151
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v2, "antitheft.web_portal_url"

    invoke-interface {v0, v2}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lse;->c(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Lse;->g_()V

    .line 154
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, v6}, LcW;->a(LaU;)V

    .line 157
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v2, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v2}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v2

    invoke-interface {v0, v2}, Lrx;->a(Lrw;)V

    .line 158
    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->i(Z)V

    .line 160
    :cond_0
    const/16 v0, 0x9

    invoke-direct {p0, v0, v6}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    .line 165
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 144
    goto :goto_0

    :cond_2
    move v0, v2

    .line 146
    goto :goto_1

    .line 163
    :cond_3
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(Landroid/content/Context;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;Lds;)V
    .locals 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    .line 232
    iput-object p2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->c:Lds;

    .line 233
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldq;

    invoke-direct {v1, p0}, Ldq;-><init>(Lcom/kaspersky/kts/antitheft/WebRegistrationThread;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    invoke-static {p1}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    const/4 v1, 0x4

    iput v1, v0, LdW;->h:I

    .line 244
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(Landroid/content/Context;)V

    .line 254
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iput-object p1, v0, LdW;->f:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldr;

    invoke-direct {v1, p0}, Ldr;-><init>(Lcom/kaspersky/kts/antitheft/WebRegistrationThread;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 170
    if-nez p1, :cond_0

    .line 171
    :try_start_0
    invoke-static {}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v0

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->c:Lds;

    invoke-static {v2}, Lds;->a(Lds;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(Ljava/lang/String;)LdW;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    .line 172
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->c:Lds;

    invoke-static {v2}, Lds;->b(Lds;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LdW;->b:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->c:Lds;

    invoke-static {v2}, Lds;->c(Lds;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LdW;->g:Ljava/lang/String;

    .line 176
    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    sget-object v2, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->REGISTER_NEW:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    if-ne v0, v2, :cond_3

    .line 178
    invoke-static {}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v0

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(LdW;)V

    .line 179
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(ZZ)V

    .line 185
    :goto_0
    invoke-direct {p0, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->c(Landroid/content/Context;)V

    .line 209
    :cond_2
    :goto_1
    return-void

    .line 182
    :cond_3
    invoke-static {}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v0

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->b:LdW;

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(LdW;)V

    .line 183
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(ZZ)V
    :try_end_0
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kaspersky/kts/antitheft/WrongProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    const v2, 0x7f0702ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    .line 195
    :goto_2
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->printStackTrace()V

    goto :goto_1

    .line 193
    :cond_4
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    goto :goto_2

    .line 197
    :catch_1
    move-exception v0

    .line 198
    const v2, 0x7f0702cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    .line 199
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/WrongProtocolException;->printStackTrace()V

    goto :goto_1

    .line 201
    :catch_2
    move-exception v0

    .line 202
    const v2, 0x7f0702ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    .line 203
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;->printStackTrace()V

    goto :goto_1

    .line 205
    :catch_3
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    const v0, 0x7f0702cd

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(ILjava/lang/Object;)V

    goto :goto_1
.end method
