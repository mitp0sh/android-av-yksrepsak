.class final Ltt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lts;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 25
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 27
    :try_start_0
    const-string v0, "SerialNumber"

    invoke-virtual {p0}, Lts;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v0, "CreationDate"

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-wide/16 v0, 0x0

    .line 30
    const-class v3, LsL;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :try_start_1
    invoke-static {}, LsL;->getLicenseExpireDate()J
    :try_end_1
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 36
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    const-string v3, "ActivationDate"

    invoke-virtual {p0}, Lts;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, LbB;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v3, "ExpirationDate"

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-static {v0, v1}, LbB;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v0, "Term"

    invoke-virtual {p0}, Lts;->g()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v0, "LicenseType"

    invoke-virtual {p0}, Lts;->c()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v0, "AppId"

    const-string v1, "1335"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v0, "LicensingObject"

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v0, "ProductId"

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 47
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :catch_0
    move-exception v4

    .line 34
    :try_start_4
    invoke-virtual {v4}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3

    throw v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method
