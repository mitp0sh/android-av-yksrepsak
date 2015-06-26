.class final Lgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lgw;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Lgu;

.field private d:Lorg/apache/http/client/HttpClient;

.field private e:Lgs;

.field private f:LbA;

.field private g:[C


# direct methods
.method public constructor <init>(Lgw;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgr;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    iput-object p1, p0, Lgr;->a:Lgw;

    .line 62
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lgr;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lgr;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lgr;->d:Lorg/apache/http/client/HttpClient;

    .line 217
    :cond_0
    iget-object v0, p0, Lgr;->c:Lgu;

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lgr;->c:Lgu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_1
    :goto_0
    iget-object v0, p0, Lgr;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lgs;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lgr;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iput-object p1, p0, Lgr;->e:Lgs;

    .line 193
    invoke-virtual {p0}, Lgr;->run()V

    .line 197
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(LbA;[C)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lgr;->f:LbA;

    .line 150
    iput-object p2, p0, Lgr;->g:[C

    .line 151
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 164
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 165
    new-instance v0, Lgs;

    invoke-direct {v0, p0, p1, p2}, Lgs;-><init>(Lgr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lgr;->a(Lgs;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized run()V
    .locals 8

    .prologue
    const/4 v3, -0x5

    const/4 v2, -0x3

    .line 66
    monitor-enter p0

    .line 68
    const/4 v1, 0x0

    .line 70
    :try_start_0
    iget-object v0, p0, Lgr;->e:Lgs;

    invoke-static {v0}, Lgs;->a(Lgs;)V

    .line 72
    iget-object v0, p0, Lgr;->d:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lgr;->c:Lgu;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lgu;

    iget-object v4, p0, Lgr;->e:Lgs;

    invoke-static {v4}, Lgs;->b(Lgs;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgr;->e:Lgs;

    invoke-static {v5}, Lgs;->c(Lgs;)I

    move-result v5

    iget-object v6, p0, Lgr;->f:LbA;

    iget-object v7, p0, Lgr;->g:[C

    invoke-direct {v0, v4, v5, v6, v7}, Lgu;-><init>(Ljava/lang/String;ILbA;[C)V

    iput-object v0, p0, Lgr;->c:Lgu;

    .line 77
    :cond_0
    iget-object v0, p0, Lgr;->c:Lgu;

    invoke-virtual {v0}, Lgu;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lgr;->d:Lorg/apache/http/client/HttpClient;

    .line 79
    :cond_1
    iget-object v0, p0, Lgr;->e:Lgs;

    invoke-static {v0}, Lgs;->d(Lgs;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 80
    iget-object v4, p0, Lgr;->d:Lorg/apache/http/client/HttpClient;

    iget-object v5, p0, Lgr;->c:Lgu;

    invoke-virtual {v5}, Lgu;->b()Lorg/apache/http/protocol/HttpContext;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 82
    if-nez v1, :cond_2

    .line 84
    :try_start_1
    const-string v0, "No response"

    .line 85
    iget-object v2, p0, Lgr;->a:Lgw;

    new-instance v4, Lgt;

    const/4 v5, -0x5

    invoke-direct {v4, v5, v0, v1}, Lgt;-><init>(ILjava/lang/String;Lorg/apache/http/HttpResponse;)V

    invoke-interface {v2, v4}, Lgw;->a(Lgx;)V

    .line 86
    invoke-direct {p0}, Lgr;->a()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Error response: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v3, p0, Lgr;->a:Lgw;

    new-instance v4, Lgt;

    const/4 v5, -0x3

    invoke-direct {v4, v5, v0, v1}, Lgt;-><init>(ILjava/lang/String;Lorg/apache/http/HttpResponse;)V

    invoke-interface {v3, v4}, Lgw;->a(Lgx;)V

    .line 94
    invoke-direct {p0}, Lgr;->a()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_2
    invoke-direct {p0}, Lgr;->a()V

    .line 144
    iget-object v3, p0, Lgr;->a:Lgw;

    new-instance v4, Lgt;

    invoke-direct {v4, v2, v0, v1}, Lgt;-><init>(ILjava/lang/String;Lorg/apache/http/HttpResponse;)V

    invoke-interface {v3, v4}, Lgw;->a(Lgx;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_3
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 101
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 109
    :catch_1
    move-exception v0

    .line 110
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 112
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 116
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    const/4 v2, 0x0

    .line 119
    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 124
    :catch_2
    move-exception v0

    .line 125
    :goto_5
    :try_start_8
    instance-of v3, v0, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_5

    .line 126
    const/4 v2, -0x4

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 112
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v0

    .line 120
    :cond_6
    const-string v0, "HttpEntity is null"
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 124
    :catch_3
    move-exception v0

    move v2, v3

    goto :goto_5

    .line 122
    :catch_4
    move-exception v0

    move v2, v3

    goto :goto_1
.end method
