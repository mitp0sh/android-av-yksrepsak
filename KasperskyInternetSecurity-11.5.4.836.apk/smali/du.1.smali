.class final Ldu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldt;


# direct methods
.method constructor <init>(Ldt;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Ldu;->a:Ldt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 71
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "AlarmCommandLock"

    invoke-static {v0, v1}, LbB;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 72
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-static {v0, v7}, Ldt;->a(Ldt;Z)Z

    .line 76
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-static {v0, v7}, Ldt;->b(Ldt;Z)Z

    .line 78
    :try_start_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 79
    :try_start_1
    sget-object v4, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 80
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v1, Ldv;

    invoke-direct {v1, p0, v3}, Ldv;-><init>(Ldu;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 94
    const v1, 0x7f060003

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v1

    .line 95
    :try_start_2
    iget-object v2, p0, Ldu;->a:Ldt;

    invoke-static {v2}, Ldt;->a(Ldt;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :try_start_3
    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 98
    :try_start_4
    iget-object v2, p0, Ldu;->a:Ldt;

    invoke-static {v2}, Ldt;->a(Ldt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 101
    :cond_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :cond_1
    :try_start_5
    iget-object v2, p0, Ldu;->a:Ldt;

    invoke-static {v2}, Ldt;->b(Ldt;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 108
    iget-object v2, p0, Ldu;->a:Ldt;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ldt;->b(Ldt;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 147
    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 154
    :cond_2
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-virtual {v0}, Ldt;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-static {v0}, Ldt;->d(Ldt;)V

    .line 156
    if-eqz v10, :cond_3

    .line 157
    invoke-static {v10}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 159
    :cond_3
    :goto_0
    return-void

    .line 101
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3

    throw v2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 105
    :catch_0
    move-exception v2

    .line 103
    :try_start_7
    iget-object v2, p0, Ldu;->a:Ldt;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ldt;->a(Ldt;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 147
    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 154
    :cond_4
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-virtual {v0}, Ldt;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-static {v0}, Ldt;->d(Ldt;)V

    .line 156
    if-eqz v10, :cond_3

    .line 157
    invoke-static {v10}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    goto :goto_0

    .line 112
    :cond_5
    const-wide/32 v2, 0x493e0

    .line 113
    :try_start_8
    iget-object v5, p0, Ldu;->a:Ldt;

    invoke-static {v4}, Ldt;->a(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_d

    .line 114
    const-wide/32 v2, 0xea60

    move-wide v8, v2

    .line 116
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    const v6, 0x3f19999a    # 0.6f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result v3

    .line 121
    :try_start_9
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 123
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 124
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 125
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 127
    iget-object v2, p0, Ldu;->a:Ldt;

    invoke-static {v2}, Ldt;->c(Ldt;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 129
    :try_start_a
    invoke-static {}, Ldt;->e()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 130
    :try_start_b
    invoke-static {}, Ldt;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 131
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 134
    :goto_2
    if-eqz v3, :cond_6

    .line 139
    :try_start_c
    invoke-virtual {v0, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 140
    :cond_6
    if-eqz v1, :cond_7

    .line 141
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 142
    :cond_7
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-virtual {v0}, Ldt;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-static {v0}, Ldt;->d(Ldt;)V

    .line 156
    if-eqz v10, :cond_3

    .line 157
    invoke-static {v10}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    goto/16 :goto_0

    .line 131
    :catchall_1
    move-exception v2

    :try_start_d
    monitor-exit v4

    throw v2
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 135
    :catch_1
    move-exception v2

    .line 133
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_2

    .line 144
    :catch_2
    move-exception v2

    move-object v11, v2

    move v2, v3

    move-object v3, v0

    move-object v0, v11

    .line 145
    :goto_3
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 147
    if-eqz v3, :cond_9

    .line 148
    if-eqz v2, :cond_8

    .line 149
    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 150
    :cond_8
    if-eqz v1, :cond_9

    .line 151
    invoke-virtual {v3, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 154
    :cond_9
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-virtual {v0}, Ldt;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    iget-object v0, p0, Ldu;->a:Ldt;

    invoke-static {v0}, Ldt;->d(Ldt;)V

    .line 156
    if-eqz v10, :cond_3

    .line 157
    invoke-static {v10}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    goto/16 :goto_0

    .line 147
    :catchall_2
    move-exception v0

    move v3, v7

    move-object v2, v1

    move v1, v7

    :goto_4
    if-eqz v2, :cond_b

    .line 148
    if-eqz v3, :cond_a

    .line 149
    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 150
    :cond_a
    if-eqz v1, :cond_b

    .line 151
    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 154
    :cond_b
    iget-object v1, p0, Ldu;->a:Ldt;

    invoke-virtual {v1}, Ldt;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    iget-object v1, p0, Ldu;->a:Ldt;

    invoke-static {v1}, Ldt;->d(Ldt;)V

    .line 156
    if-eqz v10, :cond_c

    .line 157
    invoke-static {v10}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    :cond_c
    throw v0

    .line 147
    :catchall_3
    move-exception v1

    move v3, v7

    move-object v2, v0

    move-object v0, v1

    move v1, v7

    goto :goto_4

    :catchall_4
    move-exception v2

    move v3, v7

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_4

    :catchall_5
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_4

    :catchall_6
    move-exception v0

    move v11, v2

    move-object v2, v3

    move v3, v11

    goto :goto_4

    .line 144
    :catch_3
    move-exception v0

    move v2, v7

    move-object v3, v1

    move v1, v7

    goto :goto_3

    :catch_4
    move-exception v1

    move v2, v7

    move-object v3, v0

    move-object v0, v1

    move v1, v7

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move v2, v7

    goto :goto_3

    :cond_d
    move-wide v8, v2

    goto/16 :goto_1
.end method
