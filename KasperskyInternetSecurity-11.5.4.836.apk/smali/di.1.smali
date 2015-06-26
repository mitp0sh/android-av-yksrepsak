.class public final Ldi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ldm;

.field private final b:LcS;

.field private final c:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

.field private final d:Ldh;

.field private final e:Ldp;

.field private f:Z


# direct methods
.method public constructor <init>(ZLcom/kaspersky/kts/antitheft/remoting/CommandManager;LcS;Ldm;Ldh;Ldp;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p4, p0, Ldi;->a:Ldm;

    .line 26
    iput-object p2, p0, Ldi;->c:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    .line 27
    iput-object p3, p0, Ldi;->b:LcS;

    .line 28
    iput-object p5, p0, Ldi;->d:Ldh;

    .line 29
    iput-boolean p1, p0, Ldi;->f:Z

    .line 30
    iput-object p6, p0, Ldi;->e:Ldp;

    .line 31
    return-void
.end method

.method private static b()V
    .locals 5

    .prologue
    .line 73
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lse;->a()I

    move-result v1

    .line 75
    if-gtz v1, :cond_1

    .line 76
    invoke-static {}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->g()I

    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Lse;->a(I)V

    .line 91
    :goto_0
    invoke-virtual {v0}, Lse;->g_()V

    .line 92
    :cond_0
    return-void

    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0xa

    .line 80
    const/16 v2, 0x3c

    if-gt v1, v2, :cond_0

    .line 81
    invoke-virtual {v0, v1}, Lse;->a(I)V

    .line 83
    const-string v2, "KMS-ANTI-THIEF"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Service is unavailable. Increase synchronization time to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Ldi;->c:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->c()[Lcom/kaspersky/kts/antitheft/ActionInfo;

    move-result-object v1

    .line 97
    array-length v0, v1

    if-lez v0, :cond_1

    .line 98
    array-length v0, v1

    new-array v2, v0, [Lcom/kaspersky/kts/antitheft/QueueItem;

    .line 99
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 100
    new-instance v3, Lcom/kaspersky/kts/antitheft/CommandItem;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lcom/kaspersky/kts/antitheft/CommandItem;-><init>(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    aput-object v3, v2, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Ldi;->b:LcS;

    invoke-interface {v0, v2}, LcS;->a([Lcom/kaspersky/kts/antitheft/QueueItem;)V

    .line 102
    iget-object v0, p0, Ldi;->c:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b()V

    .line 104
    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldi;->d:Ldh;

    invoke-interface {v0}, Ldh;->a()V

    .line 43
    iget-boolean v0, p0, Ldi;->f:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Ldi;->c()V
    :try_end_0
    .catch Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lrq;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :try_start_2
    iget-object v1, p0, Ldi;->e:Ldp;

    invoke-interface {v1, v0}, Ldp;->a(Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    :try_start_3
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->printStackTrace()V

    .line 51
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    iget-object v0, p0, Ldi;->a:Ldm;

    invoke-interface {v0, p0}, Ldm;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->isServiceUnderMaintenance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Ldi;->b()V

    goto :goto_0

    .line 63
    :catch_2
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldi;->f:Z

    .line 108
    return-void
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Ldi;->a()V

    .line 36
    return-void
.end method
