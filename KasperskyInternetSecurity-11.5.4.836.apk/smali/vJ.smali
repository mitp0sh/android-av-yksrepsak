.class public final LvJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LvI;


# instance fields
.field private c:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, LvJ;->c:Landroid/content/res/AssetManager;

    .line 19
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/Properties;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 74
    .line 76
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v0, p0, LvJ;->c:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "UTF-16LE"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 78
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LvH;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    invoke-direct {p0, p1}, LvJ;->b(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v1, LvH;

    invoke-direct {v1}, LvH;-><init>()V

    .line 29
    const-string v0, "RedirectionBuyUrl"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, LvH;->b(Ljava/lang/String;)V

    .line 32
    const-string v0, "RedirectionRenewUrl"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, LvH;->c(Ljava/lang/String;)V

    .line 35
    const-string v0, "TrialActivationCode_kis4android"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, LvH;->a(Ljava/lang/String;)V

    .line 38
    const-string v0, "PPCSid"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "PPCSid"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, LvH;->a(Ljava/lang/Integer;)V

    .line 44
    :cond_1
    const-string v0, "AutoActivationType"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const-string v0, "AutoActivationType"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v3, "No"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 47
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, LvH;->a(Z)V

    .line 56
    :cond_2
    const-string v0, "UcpReadiness"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    const-string v0, "UcpReadiness"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 59
    sget-object v2, LvJ;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 66
    :goto_2
    invoke-virtual {v1, v0}, LvH;->a(Ljava/lang/Boolean;)V

    :cond_3
    move-object v0, v1

    .line 69
    goto :goto_0

    .line 48
    :cond_4
    const-string v3, "Trial"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 51
    :cond_5
    new-instance v0, Lcom/kms/services/ppcs/PpcsConfigurationException;

    const-string v1, "Ppcs configuration error. Wrong %s value in file %s."

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "AutoActivationType"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kms/services/ppcs/PpcsConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_6
    sget-object v2, LvJ;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 64
    :cond_7
    new-instance v0, Lcom/kms/services/ppcs/PpcsConfigurationException;

    const-string v1, "Ppcs configuration error. Wrong %s value in file %s."

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "UcpReadiness"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kms/services/ppcs/PpcsConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
