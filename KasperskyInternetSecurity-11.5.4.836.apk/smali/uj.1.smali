.class public Luj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lud;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lud;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Luj;->a:Lud;

    return-object v0
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Luj;->a:Lud;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Luj;->a:Lud;

    invoke-virtual {v0, p0, p1}, Lud;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kms/licensing/iapurchase/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 127
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Luk;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Luk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kms/licensing/iapurchase/Consts$PurchaseState;JLjava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lul;

    invoke-direct {v1, p0, p1, p2}, Lul;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method

.method public static a(LtQ;Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Luj;->a:Lud;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Luj;->a:Lud;

    invoke-virtual {v0, p1}, Lud;->a(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V

    .line 174
    :cond_0
    return-void
.end method

.method public static a(LtR;Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Luj;->a:Lud;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Luj;->a:Lud;

    invoke-virtual {v0, p1}, Lud;->b(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V

    .line 195
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lud;)V
    .locals 2

    .prologue
    .line 43
    const-class v0, Luj;

    monitor-enter v0

    :try_start_0
    sput-object p0, Luj;->a:Lud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Luj;->a:Lud;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Luj;->a:Lud;

    invoke-virtual {v0, p0, p1}, Lud;->a(ZLjava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
