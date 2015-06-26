.class public final LmH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LgB;


# static fields
.field private static final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    sput-object v0, LmH;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LgH;Lcom/kavsdk/antivirus/ThreatType;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 28
    sget-object v0, LmH;->a:Landroid/content/Context;

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, LgH;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1}, LgH;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v1, LmH;->a:Landroid/content/Context;

    const-class v2, Lcom/kms/KisMainActivity;

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/kms/kmsshared/Utils;->h()V

    .line 34
    invoke-interface {p1}, LgH;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, LgH;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/kms/kmsshared/reports/Reports;->addDetection(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->h()V

    .line 38
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lsl;->b()I

    move-result v0

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 43
    :pswitch_0
    const/4 v0, 0x4

    invoke-interface {p1}, LgH;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-interface {p1}, LgH;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_2
    :try_start_0
    invoke-interface {p1}, LgH;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, LgH;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lmp;->a(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/kavsdk/antivirus/QuarantineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    const-string v0, "MonitorDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MonitorDispatcher: failed to add to quarantine: file path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, LgH;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
