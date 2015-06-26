.class public final LtZ;
.super Lud;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p3, p2}, Lud;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, LtZ;->d:I

    .line 29
    iput-object p1, p0, LtZ;->a:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/kms/licensing/iapurchase/Consts$PurchaseState;)V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->PURCHASED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    if-ne p1, v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, LtZ;->c:Z

    .line 62
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->h()V

    .line 64
    :cond_0
    iget-object v1, p0, LtZ;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, LtZ;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    sget-object v1, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->RESULT_OK:Lcom/kms/licensing/iapurchase/Consts$ResponseCode;

    if-ne p1, v1, :cond_1

    .line 83
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    invoke-interface {v1}, LsY;->a()LaC;

    move-result-object v1

    invoke-interface {v1}, LaC;->c()I

    move-result v1

    .line 84
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    sget-object v3, Lcom/kms/licensing/ActivationType;->InappPurchase:Lcom/kms/licensing/ActivationType;

    invoke-static {v2, v3, v1}, LsQ;->a(Landroid/content/Context;Lcom/kms/licensing/ActivationType;I)V

    .line 101
    :goto_0
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, LtZ;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, LtZ;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 104
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    return-void

    .line 89
    :cond_1
    sget-object v0, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/kms/licensing/iapurchase/Consts$ResponseCode;

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    if-eqz p2, :cond_0

    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, LtZ;->b:Z

    .line 42
    :cond_1
    iget-object v1, p0, LtZ;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, LtZ;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, LtZ;->b:Z

    return v0
.end method

.method public final b(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->RESULT_OK:Lcom/kms/licensing/iapurchase/Consts$ResponseCode;

    if-ne p1, v0, :cond_0

    .line 116
    const-class v1, Lsj;

    monitor-enter v1

    .line 117
    :try_start_0
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lsj;->q()V

    .line 119
    invoke-virtual {v0}, Lsj;->g_()V

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    iget-object v1, p0, LtZ;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_1
    iget-object v0, p0, LtZ;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 135
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 127
    :cond_0
    sget-object v0, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/kms/licensing/iapurchase/Consts$ResponseCode;

    if-ne p1, v0, :cond_1

    .line 128
    const/4 v0, 0x1

    iput v0, p0, LtZ;->d:I

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, LtZ;->d:I

    goto :goto_0

    .line 135
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, LtZ;->c:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, LtZ;->d:I

    return v0
.end method
