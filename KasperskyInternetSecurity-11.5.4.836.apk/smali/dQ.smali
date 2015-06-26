.class public abstract LdQ;
.super LdY;
.source "SourceFile"


# static fields
.field protected static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field protected b:Ljava/util/List;

.field protected c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected d:Z

.field protected final e:I

.field private g:Ljava/util/Timer;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LdQ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Ldj;I)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-direct {p0, v0, p1}, LdY;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Ldj;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LdQ;->b:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LdQ;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, LdQ;->g:Ljava/util/Timer;

    .line 74
    new-instance v0, LdR;

    invoke-direct {v0, p0}, LdR;-><init>(LdQ;)V

    iput-object v0, p0, LdQ;->h:Landroid/content/BroadcastReceiver;

    .line 37
    iput p2, p0, LdQ;->e:I

    .line 38
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p0}, LdQ;->n()Len;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Len;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, LdQ;->a(I)V

    .line 47
    invoke-virtual {p0, v3}, LdQ;->a(Z)V

    .line 48
    invoke-virtual {p0}, LdQ;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {v0}, Len;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :try_start_0
    invoke-virtual {v0}, Len;->a()V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LdQ;->a(Z)V
    :try_end_0
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    invoke-virtual {p0}, LdQ;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    invoke-virtual {p0, v2}, LdQ;->a(Z)V

    .line 57
    invoke-virtual {p0}, LdQ;->j()Ldj;

    move-result-object v0

    invoke-interface {v0}, Ldj;->b()V

    .line 58
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    invoke-virtual {v0}, LcW;->c()V

    goto :goto_1

    .line 62
    :cond_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iget-object v1, p0, LdQ;->h:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->f()Z

    move-result v0

    return v0
.end method

.method protected final d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 101
    sget-object v0, LdQ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method protected abstract e()Ljava/util/TimerTask;
.end method

.method protected g()V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, LdQ;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, LdQ;->d:Z

    .line 89
    iget-object v0, p0, LdQ;->g:Ljava/util/Timer;

    invoke-virtual {p0}, LdQ;->e()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 90
    return-void
.end method
