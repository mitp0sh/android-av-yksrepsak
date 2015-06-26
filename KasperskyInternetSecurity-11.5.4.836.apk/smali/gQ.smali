.class final LgQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:LgP;


# direct methods
.method constructor <init>(LgP;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, LgQ;->b:LgP;

    iput-object p2, p0, LgQ;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 371
    const/4 v2, 0x0

    .line 373
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.avsdk.READY PROCESS_ID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, LgQ;->a:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 376
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-static {}, LgP;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 387
    :goto_0
    iget-object v0, p0, LgQ;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 388
    return-void

    .line 378
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 379
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Pipe wasn\'t created"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 383
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 387
    :cond_1
    :goto_3
    iget-object v1, p0, LgQ;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 381
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 378
    :catch_3
    move-exception v0

    goto :goto_1
.end method
