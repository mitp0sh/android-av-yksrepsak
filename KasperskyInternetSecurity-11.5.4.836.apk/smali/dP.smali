.class final LdP;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:LdO;


# direct methods
.method constructor <init>(LdO;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, LdP;->a:LdO;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, LdP;->a:LdO;

    iget-boolean v0, v0, LdO;->d:Z

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    iget-object v0, p0, LdP;->a:LdO;

    invoke-static {v0}, LdO;->a(LdO;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, LdP;->a:LdO;

    const/4 v3, 0x1

    iput-boolean v3, v0, LdO;->d:Z

    .line 62
    :cond_2
    :goto_1
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, LdP;->a:LdO;

    iget v3, v3, LdO;->e:I

    if-lt v0, v3, :cond_3

    .line 63
    iget-object v0, p0, LdP;->a:LdO;

    const/4 v3, 0x1

    iput-boolean v3, v0, LdO;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_3
    :goto_2
    iget-object v0, p0, LdP;->a:LdO;

    iget-boolean v0, v0, LdO;->d:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, LdP;->cancel()Z

    .line 74
    :try_start_1
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v3, v2

    .line 75
    :goto_3
    iget-object v0, p0, LdP;->a:LdO;

    iget v0, v0, LdO;->e:I

    if-ge v3, v0, :cond_8

    .line 77
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 79
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_4
    :try_start_2
    iget-object v4, p0, LdP;->a:LdO;

    invoke-virtual {v4}, LdO;->n()Len;

    move-result-object v4

    iget-object v5, p0, LdP;->a:LdO;

    invoke-virtual {v5}, LdO;->o()Lef;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v0, v6}, Lef;->a([BI)Lee;

    move-result-object v0

    invoke-virtual {v4, v0}, Len;->a(Lee;)V
    :try_end_2
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 75
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_3

    .line 52
    :cond_4
    :try_start_3
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, LdP;->a:LdO;

    iget v3, v3, LdO;->e:I

    if-ge v0, v3, :cond_2

    .line 53
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->o()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->b()V

    .line 55
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, LdP;->a:LdO;

    invoke-static {v3}, LdO;->b(LdO;)I

    move-result v3

    if-eq v0, v3, :cond_5

    .line 56
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v3, p0, LdP;->a:LdO;

    iget-object v3, v3, LdO;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, LdO;->a(LdO;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    iget-object v3, p0, LdP;->a:LdO;

    iput-boolean v1, v3, LdO;->d:Z

    .line 67
    const-string v3, "KMS"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 57
    :cond_5
    :try_start_4
    iget-object v0, p0, LdP;->a:LdO;

    invoke-static {v0}, LdO;->c(LdO;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 58
    iget-object v0, p0, LdP;->a:LdO;

    const/4 v3, 0x1

    iput-boolean v3, v0, LdO;->d:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 85
    :cond_6
    :try_start_5
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    iget-object v4, p0, LdP;->a:LdO;

    iget-object v4, v4, LdO;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto/16 :goto_4

    .line 91
    :catch_1
    move-exception v0

    iget-object v0, p0, LdP;->a:LdO;

    invoke-virtual {v0}, LdO;->j()Ldj;

    move-result-object v0

    invoke-interface {v0}, Ldj;->b()V

    .line 92
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    invoke-virtual {v0}, LcW;->c()V

    move v0, v2

    .line 93
    goto/16 :goto_5

    .line 97
    :cond_7
    iget-object v0, p0, LdP;->a:LdO;

    const/4 v3, 0x6

    invoke-static {v0, v3}, LdO;->b(LdO;I)V
    :try_end_5
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 106
    :cond_8
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/kms/kmsshared/KMSApplication;->a(LdT;)V

    .line 108
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iget-object v0, p0, LdP;->a:LdO;

    invoke-virtual {v0}, LdO;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    if-eqz v1, :cond_0

    .line 111
    iget-object v0, p0, LdP;->a:LdO;

    invoke-static {v0}, LdO;->d(LdO;)V

    goto/16 :goto_0

    .line 100
    :catch_2
    move-exception v0

    .line 101
    :try_start_6
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 106
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/kms/kmsshared/KMSApplication;->a(LdT;)V

    .line 108
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iget-object v0, p0, LdP;->a:LdO;

    invoke-virtual {v0}, LdO;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    if-eqz v1, :cond_0

    .line 111
    iget-object v0, p0, LdP;->a:LdO;

    invoke-static {v0}, LdO;->d(LdO;)V

    goto/16 :goto_0

    .line 102
    :catch_3
    move-exception v0

    .line 103
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    iget-object v0, p0, LdP;->a:LdO;

    const/4 v3, 0x6

    invoke-static {v0, v3}, LdO;->c(LdO;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 106
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/kms/kmsshared/KMSApplication;->a(LdT;)V

    .line 108
    iget-object v0, p0, LdP;->a:LdO;

    iget-object v0, v0, LdO;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iget-object v0, p0, LdP;->a:LdO;

    invoke-virtual {v0}, LdO;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    if-eqz v1, :cond_0

    .line 111
    iget-object v0, p0, LdP;->a:LdO;

    invoke-static {v0}, LdO;->d(LdO;)V

    goto/16 :goto_0

    .line 106
    :catchall_0
    move-exception v0

    iget-object v3, p0, LdP;->a:LdO;

    iget-object v3, v3, LdO;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 107
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/kms/kmsshared/KMSApplication;->a(LdT;)V

    .line 108
    iget-object v3, p0, LdP;->a:LdO;

    iget-object v3, v3, LdO;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iget-object v3, p0, LdP;->a:LdO;

    invoke-virtual {v3}, LdO;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    if-eqz v1, :cond_9

    .line 111
    iget-object v1, p0, LdP;->a:LdO;

    invoke-static {v1}, LdO;->d(LdO;)V

    :cond_9
    throw v0
.end method
