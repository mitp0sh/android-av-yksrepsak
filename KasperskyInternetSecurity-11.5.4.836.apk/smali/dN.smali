.class final LdN;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:LdM;


# direct methods
.method constructor <init>(LdM;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, LdN;->a:LdM;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    .line 22
    iget-object v0, p0, LdN;->a:LdM;

    iget-boolean v0, v0, LdM;->d:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    :try_start_0
    iget-object v0, p0, LdN;->a:LdM;

    invoke-static {v0}, LdM;->a(LdM;)LdJ;

    move-result-object v0

    invoke-virtual {v0}, LdJ;->a()V

    .line 30
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LdN;->a:LdM;

    iget v1, v1, LdM;->e:I

    if-ge v0, v1, :cond_2

    .line 31
    iget-object v0, p0, LdN;->a:LdM;

    invoke-static {v0}, LdM;->a(LdM;)LdJ;

    move-result-object v0

    invoke-virtual {v0}, LdJ;->c()[B

    move-result-object v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    iget-object v1, p0, LdN;->a:LdM;

    iget-object v1, v1, LdM;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_2
    :goto_1
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LdN;->a:LdM;

    iget v1, v1, LdM;->e:I

    if-ne v0, v1, :cond_3

    .line 48
    iget-object v0, p0, LdN;->a:LdM;

    iput-boolean v3, v0, LdM;->d:Z

    .line 49
    invoke-virtual {p0}, LdN;->cancel()Z

    .line 52
    :cond_3
    iget-object v0, p0, LdN;->a:LdM;

    iget-boolean v0, v0, LdM;->d:Z

    if-eqz v0, :cond_0

    .line 53
    :try_start_1
    iget-object v0, p0, LdN;->a:LdM;

    invoke-static {v0}, LdM;->a(LdM;)LdJ;

    move-result-object v0

    invoke-virtual {v0}, LdJ;->b()V

    .line 57
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v1, v2

    .line 58
    :goto_2
    iget-object v0, p0, LdN;->a:LdM;

    iget v0, v0, LdM;->e:I

    if-ge v1, v0, :cond_7

    .line 60
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 62
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 70
    :goto_3
    iget-object v3, p0, LdN;->a:LdM;

    invoke-virtual {v3}, LdM;->n()Len;

    move-result-object v3

    iget-object v4, p0, LdN;->a:LdM;

    invoke-virtual {v4}, LdM;->o()Lef;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v0, v5}, Lef;->a([BI)Lee;

    move-result-object v0

    invoke-virtual {v3, v0}, Len;->a(Lee;)V
    :try_end_1
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 35
    :cond_4
    :try_start_2
    iget-object v0, p0, LdN;->a:LdM;

    const/4 v1, 0x1

    iput-boolean v1, v0, LdM;->d:Z

    .line 36
    invoke-virtual {p0}, LdN;->cancel()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 41
    invoke-static {v3}, LdJ;->a(Z)V

    .line 42
    iget-object v1, p0, LdN;->a:LdM;

    iput-boolean v3, v1, LdM;->d:Z

    .line 43
    invoke-virtual {p0}, LdN;->cancel()Z

    .line 44
    const-string v1, "KMS-ANTI-THIEF"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    :cond_5
    :try_start_3
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->b:Ljava/util/List;

    iget-object v3, p0, LdN;->a:LdM;

    iget-object v3, v3, LdM;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_3

    .line 74
    :cond_6
    invoke-static {}, LdJ;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p0, LdN;->a:LdM;

    invoke-virtual {v0}, LdM;->l()Leb;

    move-result-object v0

    .line 76
    const-string v1, "PARAM_RUN_IMEDIATELY"

    invoke-interface {v0, v1}, Leb;->b(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, LdN;->a:LdM;

    invoke-static {v0}, LdM;->b(LdM;)Led;

    move-result-object v0

    iget-object v1, p0, LdN;->a:LdM;

    invoke-interface {v0, v1}, Led;->a(LdY;)Lec;

    move-result-object v0

    invoke-interface {v0}, Lec;->k()V
    :try_end_3
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :cond_7
    :goto_4
    invoke-static {}, LdJ;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    sget-object v0, LdQ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    iget-object v0, p0, LdN;->a:LdM;

    invoke-static {v0}, LdM;->c(LdM;)V

    goto/16 :goto_0

    .line 80
    :cond_8
    :try_start_4
    iget-object v0, p0, LdN;->a:LdM;

    const/4 v1, 0x6

    invoke-static {v0, v1}, LdM;->a(LdM;I)V
    :try_end_4
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 84
    :catch_1
    move-exception v0

    .line 85
    :try_start_5
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    invoke-static {}, LdJ;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    sget-object v0, LdQ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 95
    :catch_2
    move-exception v0

    .line 88
    :try_start_6
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 90
    invoke-static {}, LdJ;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, LdN;->a:LdM;

    iget-object v0, v0, LdM;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    sget-object v0, LdQ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    iget-object v0, p0, LdN;->a:LdM;

    invoke-static {v0}, LdM;->c(LdM;)V

    goto/16 :goto_0

    .line 90
    :catchall_0
    move-exception v0

    invoke-static {}, LdJ;->e()Z

    move-result v1

    if-nez v1, :cond_9

    .line 91
    iget-object v1, p0, LdN;->a:LdM;

    iget-object v1, v1, LdM;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 92
    iget-object v1, p0, LdN;->a:LdM;

    iget-object v1, v1, LdM;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    sget-object v1, LdQ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    iget-object v1, p0, LdN;->a:LdM;

    invoke-static {v1}, LdM;->c(LdM;)V

    :cond_9
    throw v0
.end method
