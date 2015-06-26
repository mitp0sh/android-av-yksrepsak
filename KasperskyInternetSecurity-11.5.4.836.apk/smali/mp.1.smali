.class public final Lmp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    .line 40
    :try_start_0
    invoke-interface {v0, p1, p2}, Lgz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/kavsdk/antivirus/QuarantineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmp;->a(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Z)V

    .line 49
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const/4 v1, 0x6

    invoke-static {v1, p1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    .line 45
    throw v0
.end method

.method public static a(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 13
    invoke-static {p1}, Lmp;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    if-eqz p2, :cond_0

    .line 15
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    sget-object v0, Lmq;->a:[I

    invoke-virtual {p0}, Lcom/kavsdk/antivirus/ThreatType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type of problem in file is not Riskware, Adware or Malware"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :pswitch_0
    const/16 v0, 0x35

    .line 33
    :goto_1
    invoke-static {v0, p1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 24
    :pswitch_1
    const/16 v0, 0x34

    .line 25
    goto :goto_1

    .line 27
    :pswitch_2
    const/4 v0, 0x5

    .line 28
    goto :goto_1

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    invoke-interface {v0, p0}, Lgz;->c(Ljava/lang/String;)Z

    .line 57
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    invoke-interface {v0, p0}, Lgz;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
