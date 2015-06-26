.class public final Le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static a(Lcom/kms/antivirus/AntivirusScanType;)V
    .locals 3

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->getByScanType(Lcom/kms/antivirus/AntivirusScanType;)Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is no correspondent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for scan type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lkk;)V
    .locals 2

    .prologue
    .line 13
    sget-object v1, Lf;->a:[I

    invoke-virtual {p1}, Lkk;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/UiEventType;

    invoke-virtual {v0}, Lcom/kms/UiEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 27
    :goto_0
    :pswitch_0
    return-void

    .line 23
    :pswitch_1
    invoke-virtual {p1}, Lkk;->b()Lcom/kms/antivirus/AntivirusScanType;

    move-result-object v0

    .line 24
    invoke-static {v0}, Le;->a(Lcom/kms/antivirus/AntivirusScanType;)V

    goto :goto_0

    .line 13
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lkk;

    invoke-direct {p0, p1}, Le;->a(Lkk;)V

    return-void
.end method
