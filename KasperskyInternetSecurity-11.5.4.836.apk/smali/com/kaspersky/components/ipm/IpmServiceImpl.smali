.class public Lcom/kaspersky/components/ipm/IpmServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:LM;

.field private c:Lw;


# direct methods
.method public constructor <init>(Landroid/content/Context;LM;Lw;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kaspersky/components/ipm/IpmServiceImpl;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/kaspersky/components/ipm/IpmServiceImpl;->b:LM;

    .line 35
    iput-object p3, p0, Lcom/kaspersky/components/ipm/IpmServiceImpl;->c:Lw;

    .line 36
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    .line 143
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static {v0}, Lby;->b(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    .line 145
    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lby;->a(Ljava/io/InputStream;Ljava/io/File;Lt;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private a([Lcom/kaspersky/components/ipm/ContentReference;)V
    .locals 6

    .prologue
    .line 79
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    .line 80
    invoke-virtual {v3}, Lcom/kaspersky/components/ipm/ContentReference;->getContentPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/kaspersky/components/ipm/IpmServiceImpl;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, LE;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 82
    invoke-virtual {v3}, Lcom/kaspersky/components/ipm/ContentReference;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 84
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 91
    :try_start_0
    invoke-virtual {v3}, Lcom/kaspersky/components/ipm/ContentReference;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/kaspersky/components/ipm/IpmServiceImpl;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, LbE;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kaspersky/components/ipm/ContentReference;->setContentPath(Ljava/lang/String;)V

    .line 79
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 96
    throw v0

    .line 112
    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/kaspersky/components/ipm/Request;)[Lcom/kaspersky/components/ipm/ContentReference;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 39
    monitor-enter p0

    :try_start_0
    const-string v1, "IPM"

    const-string v2, "Start update"

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/ksn/locator/ServiceLocator;->b()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/kaspersky/components/ipm/IpmServiceImpl;->getMaterial(Lcom/kaspersky/components/ipm/Request;I)Lcom/kaspersky/components/ipm/Response;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 47
    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 49
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lcom/kaspersky/components/ipm/Response;->getSecondsTillNextRequest()J

    move-result-wide v2

    .line 50
    iget-object v4, p0, Lcom/kaspersky/components/ipm/IpmServiceImpl;->b:LM;

    invoke-interface {v4}, LM;->a()LL;

    move-result-object v4

    .line 51
    invoke-virtual {v4, v2, v3}, LL;->a(J)V

    .line 53
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, LL;->b(J)V

    .line 54
    iget-object v2, p0, Lcom/kaspersky/components/ipm/IpmServiceImpl;->b:LM;

    invoke-interface {v2, v4}, LM;->a(LL;)V

    .line 56
    invoke-virtual {v1}, Lcom/kaspersky/components/ipm/Response;->isAskLater()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/kaspersky/components/ipm/Response;->getContentReference()[Lcom/kaspersky/components/ipm/ContentReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 65
    :try_start_4
    invoke-direct {p0, v0}, Lcom/kaspersky/components/ipm/IpmServiceImpl;->a([Lcom/kaspersky/components/ipm/ContentReference;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 68
    :catchall_1
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected native getMaterial(Lcom/kaspersky/components/ipm/Request;I)Lcom/kaspersky/components/ipm/Response;
.end method
