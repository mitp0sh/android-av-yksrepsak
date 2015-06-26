.class Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributionIdFetcher"
.end annotation


# static fields
.field private static final AF_ATTRIBUTION_ID_URI:Ljava/lang/String; = "https://api.appsflyer.com/install_data/v2/"


# instance fields
.field private appsFlyerDevKey:Ljava/lang/String;

.field private ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;

    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 735
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 736
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    .line 737
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    const/4 v5, 0x0

    .line 745
    .local v5, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 746
    .local v6, "context":Landroid/content/Context;
    if-nez v6, :cond_2

    .line 820
    if-eqz v5, :cond_0

    .line 821
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 749
    :cond_2
    :try_start_1
    # invokes: Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v6}, Lcom/appsflyer/AppsFlyerLib;->access$400(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    # invokes: Lcom/appsflyer/AppsFlyerLib;->getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/appsflyer/AppsFlyerLib;->access$500(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, "channel":Ljava/lang/String;
    const-string v4, ""

    .line 751
    .local v4, "channelPostfix":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 752
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 754
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "https://api.appsflyer.com/install_data/v2/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "?devkey="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&device_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 760
    .local v18, "urlString":Ljava/lang/StringBuilder;
    const-string v19, "AppsFlyer_1.1"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Calling server for attribution url: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v19, Ljava/net/URL;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 763
    const-string v19, "GET"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 764
    const/16 v19, 0x2710

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 765
    const-string v19, "Connection"

    const-string v20, "close"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 768
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 770
    const/4 v13, 0x0

    .line 771
    .local v13, "reader":Ljava/io/BufferedReader;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 772
    .local v16, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 774
    .local v9, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 775
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 777
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 778
    .local v12, "line":Ljava/lang/String;
    :goto_1
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 779
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 782
    :catchall_0
    move-exception v19

    move-object v9, v10

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v13, v14

    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v13, :cond_4

    .line 783
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 785
    :cond_4
    if-eqz v9, :cond_5

    .line 786
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    throw v19
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 814
    .end local v3    # "channel":Ljava/lang/String;
    .end local v4    # "channelPostfix":Ljava/lang/String;
    .end local v6    # "context":Landroid/content/Context;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "urlString":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v17

    .line 815
    .local v17, "t":Ljava/lang/Throwable;
    :try_start_6
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/ConversionDataListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/ConversionDataListener;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 816
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/ConversionDataListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/ConversionDataListener;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/appsflyer/ConversionDataListener;->onConversionFailure(Ljava/lang/String;)V

    .line 818
    :cond_6
    const-string v19, "AppsFlyer_1.1"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 820
    if-eqz v5, :cond_0

    .line 821
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 782
    .end local v17    # "t":Ljava/lang/Throwable;
    .restart local v3    # "channel":Ljava/lang/String;
    .restart local v4    # "channelPostfix":Ljava/lang/String;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "urlString":Ljava/lang/StringBuilder;
    :cond_7
    if-eqz v14, :cond_8

    .line 783
    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 785
    :cond_8
    if-eqz v10, :cond_9

    .line 786
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 789
    :cond_9
    const-string v19, "AppsFlyer_1.1"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Attribution data: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_c

    if-eqz v6, :cond_c

    .line 791
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/appsflyer/AppsFlyerLib;->attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;
    invoke-static/range {v19 .. v19}, Lcom/appsflyer/AppsFlyerLib;->access$600(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 792
    .local v7, "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "iscache"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 795
    .local v11, "isCache":Ljava/lang/String;
    if-eqz v11, :cond_a

    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 796
    :cond_a
    const-string v19, "appsflyer-data"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 798
    .local v15, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 799
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v19, "attributionId"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 800
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 801
    const-string v19, "AppsFlyer_1.1"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "iscache="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " caching conversion data"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_b
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/ConversionDataListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/ConversionDataListener;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 804
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/ConversionDataListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/ConversionDataListener;

    move-result-object v19

    invoke-static {v6}, Lcom/appsflyer/AppsFlyerLib;->getConversionData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/appsflyer/ConversionDataListener;->onConversionDataLoaded(Ljava/util/Map;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 820
    .end local v7    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v11    # "isCache":Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_c
    :goto_3
    if-eqz v5, :cond_0

    .line 821
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 809
    :cond_d
    :try_start_8
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/ConversionDataListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/ConversionDataListener;

    move-result-object v19

    if-eqz v19, :cond_e

    .line 810
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/ConversionDataListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/ConversionDataListener;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error connection to server: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/appsflyer/ConversionDataListener;->onConversionFailure(Ljava/lang/String;)V

    .line 812
    :cond_e
    const-string v19, "AppsFlyer_1.1"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AttributionIdFetcher response code: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  url: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 820
    .end local v3    # "channel":Ljava/lang/String;
    .end local v4    # "channelPostfix":Ljava/lang/String;
    .end local v6    # "context":Landroid/content/Context;
    .end local v18    # "urlString":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v19

    if-eqz v5, :cond_f

    .line 821
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    throw v19

    .line 782
    .restart local v3    # "channel":Ljava/lang/String;
    .restart local v4    # "channelPostfix":Ljava/lang/String;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "urlString":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v19

    goto/16 :goto_2

    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v19

    move-object v9, v10

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_2
.end method
