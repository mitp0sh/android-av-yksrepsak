.class final LaQ;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:LaP;


# direct methods
.method constructor <init>(LaP;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, LaQ;->a:LaP;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 62
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v4, "logcat -v brief"

    invoke-virtual {v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-static {v0, v1}, LaP;->a(LaP;Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {v0}, LaP;->a(LaP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    :goto_0
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {v0}, LaP;->a(LaP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {v0}, LaP;->b(LaP;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 74
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v0, v3

    .line 80
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    if-eqz v1, :cond_3

    .line 83
    :try_start_2
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {v0, v1}, LaP;->a(LaP;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    if-eqz v5, :cond_6

    .line 86
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {v0}, LaP;->c(LaP;)Ljava/util/HashSet;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    :try_start_3
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {v0}, LaP;->c(LaP;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaO;

    .line 92
    invoke-interface {v0}, LaO;->a()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 94
    invoke-interface {v0, v1}, LaO;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    :goto_3
    return-void

    .line 101
    :cond_2
    :try_start_4
    invoke-interface {v0}, LaO;->a()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0, v1}, LaO;->a(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 110
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v6

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 113
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 115
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    :cond_3
    iget-object v1, p0, LaQ;->a:LaP;

    invoke-static {v1}, LaP;->b(LaP;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 119
    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {v0, v10}, LaP;->a(LaP;Ljava/lang/Process;)Ljava/lang/Process;

    .line 122
    invoke-static {v4}, LbB;->a(Ljava/io/Closeable;)Z

    goto :goto_3

    .line 128
    :cond_4
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 129
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v5, "logcat"

    invoke-virtual {v1, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-static {v0, v1}, LaP;->a(LaP;Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 131
    :catch_2
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    invoke-static {v4}, LbB;->a(Ljava/io/Closeable;)Z

    goto :goto_3

    .line 137
    :cond_5
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {v0}, LaP;->b(LaP;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 139
    iget-object v0, p0, LaQ;->a:LaP;

    invoke-static {v0, v10}, LaP;->a(LaP;Ljava/lang/Process;)Ljava/lang/Process;

    goto :goto_3

    .line 113
    :catch_3
    move-exception v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_1
.end method
