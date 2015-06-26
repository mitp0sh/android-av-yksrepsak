.class public final LeI;
.super Leh;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LeI;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Leh;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 36
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 37
    iget-object v1, p0, LeI;->f:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    sget-object v2, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->HardReset:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    if-ne v1, v2, :cond_1

    .line 39
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/kms/selfprotection/DeviceAdmin;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, LeI;->p()V

    .line 55
    invoke-static {}, LbD;->a()V

    .line 56
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 92
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LeI;->a(I)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, LeI;->p()V

    .line 73
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 74
    invoke-static {}, LbD;->a()V

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    invoke-static {v1}, LbD;->b(Landroid/content/ContentResolver;)V

    .line 77
    invoke-static {v1}, LbD;->a(Landroid/content/ContentResolver;)V

    .line 78
    invoke-static {v1}, LbD;->d(Landroid/content/ContentResolver;)V

    .line 79
    invoke-static {v1}, LbD;->e(Landroid/content/ContentResolver;)V

    .line 80
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    .line 81
    invoke-static {v1}, LbD;->c(Landroid/content/ContentResolver;)V

    .line 85
    :cond_2
    invoke-static {v0}, LbD;->a(Landroid/content/Context;)V

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    invoke-virtual {p0}, LeI;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->r()Z

    move-result v0

    return v0
.end method

.method protected final d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 101
    sget-object v0, LeI;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
