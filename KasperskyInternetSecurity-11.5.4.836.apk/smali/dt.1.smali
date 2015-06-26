.class public final Ldt;
.super LdY;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/lang/Object;


# instance fields
.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ldt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldt;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldj;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Alarm:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-direct {p0, v0, p1}, LdY;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Ldj;)V

    .line 42
    return-void
.end method

.method protected static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 168
    const-string v2, "scale"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 169
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 170
    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Ldt;I)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ldt;->a(I)V

    return-void
.end method

.method static synthetic a(Ldt;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Ldt;->c:Z

    return v0
.end method

.method static synthetic a(Ldt;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Ldt;->c:Z

    return p1
.end method

.method public static a_()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Ldt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v1, Ldt;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Ldt;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Ldt;I)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ldt;->a(I)V

    return-void
.end method

.method static synthetic b(Ldt;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Ldt;->d:Z

    return v0
.end method

.method static synthetic b(Ldt;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Ldt;->d:Z

    return p1
.end method

.method static synthetic c(Ldt;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Ldt;->p()V

    return-void
.end method

.method static synthetic d(Ldt;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Ldt;->i()V

    return-void
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ldt;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldu;

    invoke-direct {v1, p0}, Ldu;-><init>(Ldt;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ldt;->g()V

    .line 55
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->g()Z

    move-result v0

    return v0
.end method

.method protected final d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Ldt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
