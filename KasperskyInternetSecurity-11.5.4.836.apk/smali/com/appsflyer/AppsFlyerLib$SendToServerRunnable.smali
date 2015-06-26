.class Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;
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
    name = "SendToServerRunnable"
.end annotation


# instance fields
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

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .param p1, "urlString"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 607
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 608
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    .line 609
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    .line 610
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 611
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Landroid/content/Context;
    .param p4, "x3"    # Lcom/appsflyer/AppsFlyerLib$1;

    .prologue
    .line 599
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method private callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "postData"    # Ljava/lang/String;
    .param p3, "appsFlyerDevKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    iget-object v11, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 675
    .local v3, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 677
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 679
    const-string v11, "POST"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v2, v11

    .line 681
    .local v2, "contentLength":I
    const-string v11, "Content-Length"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v11, "Connection"

    const-string v12, "close"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/16 v11, 0x2710

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 684
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 685
    const/4 v6, 0x0

    .line 687
    .local v6, "out":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    .end local v6    # "out":Ljava/io/OutputStreamWriter;
    .local v7, "out":Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 690
    if-eqz v7, :cond_0

    .line 691
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 694
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 695
    .local v10, "statusCode":I
    const-string v11, "AppsFlyer_1.1"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "response code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v11, "response from server. status="

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v11, v12, v3}, Lcom/appsflyer/AppsFlyerLib;->access$300(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 697
    const-string v11, "appsflyer-data"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 698
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v11, 0xc8

    if-ne v10, v11, :cond_1

    .line 699
    iget-object v11, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 701
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 702
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "sentSuccessfully"

    const-string v12, "true"

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 703
    const-string v11, "appsFlyerCount"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 704
    .local v4, "counter":I
    const-string v11, "appsFlyerCount"

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v5, v11, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 705
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 709
    .end local v4    # "counter":I
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v11, "attributionId"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_6

    if-eqz p3, :cond_6

    .line 711
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 713
    .local v8, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v11, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-direct {v11, v12, v0}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v12, 0xa

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v11, v12, v13, v14}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 718
    .end local v8    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 719
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 722
    :cond_3
    return-void

    .line 690
    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .end local v9    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v10    # "statusCode":I
    .restart local v6    # "out":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v11

    :goto_1
    if-eqz v6, :cond_4

    .line 691
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    :cond_4
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 718
    .end local v2    # "contentLength":I
    .end local v6    # "out":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v11

    if-eqz v1, :cond_5

    .line 719
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v11

    .line 714
    .restart local v2    # "contentLength":I
    .restart local v7    # "out":Ljava/io/OutputStreamWriter;
    .restart local v9    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v10    # "statusCode":I
    :cond_6
    if-nez p3, :cond_2

    .line 715
    :try_start_5
    const-string v11, "AppsFlyer_1.1"

    const-string v12, "AppsFlyer dev key is missing."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 690
    .end local v9    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v10    # "statusCode":I
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .restart local v6    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 615
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 616
    .local v4, "context":Landroid/content/Context;
    const/4 v12, 0x0

    .line 617
    .local v12, "sentSuccessfully":Z
    if-eqz v4, :cond_1

    .line 618
    const-string v18, "appsflyer-data"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 619
    .local v13, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v18, "referrer"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 620
    .local v11, "referrer":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "referrer"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_0

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "referrer"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_0
    const-string v18, "true"

    const-string v19, "sentSuccessfully"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "counter"

    const-string v20, "appsFlyerCount"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .end local v11    # "referrer":Ljava/lang/String;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v19, v0

    const-string v20, "isFirstCall"

    if-nez v12, :cond_3

    const/16 v18, 0x1

    :goto_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "af_timestamp"

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "appsflyerKey"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 634
    .local v3, "afDevKey":Ljava/lang/String;
    new-instance v18, Lcom/appsflyer/HashUtils;

    invoke-direct/range {v18 .. v18}, Lcom/appsflyer/HashUtils;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/appsflyer/HashUtils;->getHashCode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 635
    .local v6, "hash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "af_v"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v9, "postData":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 639
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 640
    .local v17, "value":Ljava/lang/String;
    if-nez v17, :cond_4

    const-string v17, ""

    .line 641
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 642
    const/16 v18, 0x26

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    :cond_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x3d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 667
    .end local v3    # "afDevKey":Ljava/lang/String;
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "hash":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "postData":Ljava/lang/StringBuilder;
    .end local v12    # "sentSuccessfully":Z
    .end local v17    # "value":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 668
    .local v14, "t":Ljava/lang/Throwable;
    const-string v18, "AppsFlyer_1.1"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    .end local v14    # "t":Ljava/lang/Throwable;
    :goto_3
    return-void

    .line 628
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v12    # "sentSuccessfully":Z
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 640
    .restart local v3    # "afDevKey":Ljava/lang/String;
    .restart local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "postData":Ljava/lang/StringBuilder;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 648
    .end local v8    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 650
    .local v10, "postDataString":Ljava/lang/String;
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 651
    .local v15, "url":Ljava/net/URL;
    const-string v18, "AppsFlyer_1.1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "url: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v18, "call server."

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\nPOST:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    # invokes: Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v4}, Lcom/appsflyer/AppsFlyerLib;->access$300(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 653
    const-string v18, "AppsFlyer_1.1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 656
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v3}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 657
    :catch_1
    move-exception v5

    .line 659
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v18

    const-string v19, "useHttpFallback"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 660
    .local v16, "useHttpFallback":Z
    if-eqz v16, :cond_6

    .line 661
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "https failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    # invokes: Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v4}, Lcom/appsflyer/AppsFlyerLib;->access$300(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 662
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "https:"

    const-string v21, "http:"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10, v3}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 664
    :cond_6
    const-string v18, "AppsFlyer_1.1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed to send requeset to server. "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method
