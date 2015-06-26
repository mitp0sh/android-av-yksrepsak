.class public final Lk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lk;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 43
    sget-boolean v0, Lk;->a:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "aKHAgStwr3BdkGCzHwe7Rg"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->setAppsFlyerKey(Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, LbB;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->setAppUserId(Ljava/lang/String;)V

    .line 46
    invoke-static {v5}, Lcom/appsflyer/AppsFlyerLib;->setUseHTTPFalback(Z)V

    .line 47
    invoke-static {v5}, Lcom/appsflyer/AppsFlyerLib;->setCollectAndroidID(Z)V

    .line 48
    invoke-static {v5}, Lcom/appsflyer/AppsFlyerLib;->setCollectMACAddress(Z)V

    .line 49
    invoke-static {v5}, Lcom/appsflyer/AppsFlyerLib;->setCollectIMEI(Z)V

    .line 51
    const-string v0, ""

    .line 56
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/kisa_af_channel.afc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 61
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v0

    .line 66
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 84
    :goto_0
    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 85
    const-string v1, "appsflyer-data"

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 87
    const-string v2, "CACHED_CHANNEL"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    :cond_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 66
    :goto_1
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    .line 72
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "kisa_af_channel.afc"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 73
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 79
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    .line 79
    :goto_3
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 76
    :catch_2
    move-exception v2

    move-object v2, v1

    goto :goto_3

    .line 66
    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 63
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    sget-boolean v0, Lk;->a:Z

    if-eqz v0, :cond_1

    .line 117
    invoke-static {v1}, LbC;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->setCurrencyCode(Ljava/lang/String;)V

    .line 120
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 121
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    .line 122
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-IAP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    return-void

    .line 121
    :cond_2
    invoke-virtual {v0, p2, p3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lk;->a:Z

    .line 40
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lk;->a:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->sendTracking(Landroid/content/Context;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 127
    sget-boolean v0, Lk;->a:Z

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "Wizard_Completed"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 133
    sget-boolean v0, Lk;->a:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "TrialActivation"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 139
    sget-boolean v0, Lk;->a:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "TrialPaidTransfer"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method
