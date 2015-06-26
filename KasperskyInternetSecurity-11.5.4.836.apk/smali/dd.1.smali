.class public final Ldd;
.super Ldc;
.source "SourceFile"


# instance fields
.field private final a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

.field private final b:Ldp;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/kaspersky/kts/antitheft/remoting/CommandManager;Ljava/util/concurrent/Executor;Ldm;Ldp;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p3, p4}, Ldc;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;Ldm;)V

    .line 27
    iput-object p2, p0, Ldd;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    .line 28
    invoke-virtual {p2, p0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(LcS;)V

    .line 29
    iput-object p5, p0, Ldd;->b:Ldp;

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Lcom/kaspersky/kts/antitheft/QueueItem;)Z
    .locals 9

    .prologue
    const-wide/32 v7, 0xea60

    const/4 v1, 0x0

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/kaspersky/kts/antitheft/RequestItem;

    .line 42
    :try_start_0
    iget-object v2, p0, Ldd;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/RequestItem;->getApi()I

    move-result v4

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/RequestItem;->getJsonData()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/RequestItem;->getUniqueRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(ZILorg/json/JSONObject;Ljava/lang/String;)V

    .line 43
    sget-object v2, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->FINISHED:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    invoke-virtual {p1, v2}, Lcom/kaspersky/kts/antitheft/QueueItem;->setStatus(Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;)V
    :try_end_0
    .catch Lcom/kaspersky/kts/antitheft/WrongProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    invoke-virtual {v2}, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->printStackTrace()V

    .line 54
    invoke-virtual {v2}, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->getError()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 59
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v3, p0, Ldd;->b:Ldp;

    invoke-interface {v3, v2}, Ldp;->a(Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;)V

    .line 66
    sget-object v2, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->FINISHED:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/antitheft/RequestItem;->setStatus(Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;)V

    move v0, v1

    .line 67
    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 70
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->printStackTrace()V

    .line 72
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Ldd;->c()Ldm;

    move-result-object v0

    invoke-interface {v0, p0}, Ldm;->a(Ljava/lang/Runnable;)V

    move v0, v1

    .line 85
    goto :goto_1

    .line 87
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method
