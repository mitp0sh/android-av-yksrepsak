.class public final LdA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln;

.field private final b:Lo;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Lcom/kaspersky/kts/antitheft/find/FindState;

.field private final e:LdI;

.field private final f:Landroid/net/wifi/WifiManager;

.field private g:Z

.field private h:LdE;

.field private final i:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo;LdI;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, LdA;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    new-instance v0, Lq;

    invoke-direct {v0, p1}, Lq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LdA;->a:Ln;

    .line 42
    iput-object p2, p0, LdA;->b:Lo;

    .line 43
    iput-object p3, p0, LdA;->e:LdI;

    .line 44
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, LdA;->f:Landroid/net/wifi/WifiManager;

    .line 45
    iput-object p1, p0, LdA;->i:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic a(LdA;)Lcom/kaspersky/kts/antitheft/find/FindState;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LdA;->d:Lcom/kaspersky/kts/antitheft/find/FindState;

    return-object v0
.end method

.method static synthetic a(LdA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, LdA;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, LdA;->b:Lo;

    invoke-interface {v0, p1}, Lo;->a(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, LdA;->b()V

    .line 71
    return-void
.end method

.method static synthetic b(LdA;)LdI;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LdA;->e:LdI;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, LdA;->d:Lcom/kaspersky/kts/antitheft/find/FindState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/antitheft/find/FindState;->setAttempts(I)V

    .line 75
    iget-object v0, p0, LdA;->e:LdI;

    iget-object v1, p0, LdA;->d:Lcom/kaspersky/kts/antitheft/find/FindState;

    invoke-interface {v0, v1}, LdI;->a(Lcom/kaspersky/kts/antitheft/find/FindState;)V

    .line 76
    return-void
.end method

.method static synthetic c(LdA;)Ln;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LdA;->a:Ln;

    return-object v0
.end method

.method static synthetic d(LdA;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LdA;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic e(LdA;)LdE;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LdA;->h:LdE;

    return-object v0
.end method

.method static synthetic f(LdA;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LdA;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(LdA;)Lo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LdA;->b:Lo;

    return-object v0
.end method

.method static synthetic h(LdA;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, LdA;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, LdA;->e:LdI;

    invoke-interface {v0}, LdI;->a()Lcom/kaspersky/kts/antitheft/find/FindState;

    move-result-object v0

    iput-object v0, p0, LdA;->d:Lcom/kaspersky/kts/antitheft/find/FindState;

    .line 51
    iget-object v0, p0, LdA;->d:Lcom/kaspersky/kts/antitheft/find/FindState;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/find/FindState;->getAttempts()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LdA;->a(Z)V

    .line 56
    new-instance v0, LdE;

    invoke-direct {v0, p0}, LdE;-><init>(LdA;)V

    iput-object v0, p0, LdA;->h:LdE;

    .line 57
    iget-object v0, p0, LdA;->i:Landroid/content/Context;

    iget-object v2, p0, LdA;->h:LdE;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    new-instance v5, LdB;

    invoke-direct {v5, p0}, LdB;-><init>(LdA;)V

    .line 60
    new-instance v2, LdH;

    invoke-direct {v2, v5}, LdH;-><init>(Lp;)V

    .line 61
    iget-object v0, p0, LdA;->a:Ln;

    move v4, v3

    invoke-interface/range {v0 .. v5}, Ln;->a(ILandroid/location/LocationListener;IILp;)Z

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "Cannot get current location. Number of attempts were exceeded."

    invoke-direct {p0, v0}, LdA;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 84
    if-eqz p1, :cond_1

    .line 85
    iget-object v0, p0, LdA;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, LdA;->g:Z

    .line 87
    iget-boolean v0, p0, LdA;->g:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, LdA;->f:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-boolean v0, p0, LdA;->g:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, LdA;->f:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method
