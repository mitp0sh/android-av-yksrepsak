.class public final LmE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LgL;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    sput-object v0, LmE;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static a()I
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    invoke-virtual {v0}, Lsl;->c()I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 40
    :pswitch_0
    sget-object v0, LmE;->b:Ljava/lang/String;

    invoke-static {v0}, Lmp;->a(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    sget-object v1, LmE;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_1
    const/4 v0, 0x4

    sget-object v1, LmE;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(LgH;Lcom/kavsdk/antivirus/ThreatType;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 56
    invoke-static {}, LmE;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p1}, LgH;->a()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-interface {p1}, LgH;->c()Ljava/lang/String;

    move-result-object v0

    .line 59
    sput-object v0, LmE;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    sget-object v0, LmE;->c:Ljava/lang/String;

    invoke-static {p2, v0, v2}, Lcom/kms/kmsshared/reports/Reports;->addDetection(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, LmE;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LmE;->b:Ljava/lang/String;

    .line 63
    sget-object v0, LmE;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 65
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 68
    :try_start_0
    sget-object v3, LmE;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lrl;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    sget-object v0, LmE;->a:Landroid/content/Context;

    const-wide/16 v3, 0xbb8

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/kavsdk/antivirus/ThreatType;)V

    .line 77
    invoke-static {}, Lcom/kms/kmsshared/Utils;->h()V

    .line 82
    new-instance v0, Landroid/content/Intent;

    sget-object v3, LmE;->a:Landroid/content/Context;

    const-class v4, Lcom/kms/antivirus/gui/AvUserActionActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    const-string v3, "com.kms.useraction.info"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "com.kms.useraction.file"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "com.kms.useraction.package"

    sget-object v2, LmE;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "com.kms.useraction.type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    const-string v1, "com.kms.useraction.mode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v1, "com.kms.useraction.launchedfrom"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    sget-object v1, LmE;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_1
    :try_start_1
    sget-object v3, LmE;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/kms/kmsshared/Utils;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {}, LmE;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "InstallationMonitorDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "intent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v1, LmE;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 104
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 106
    const-string v1, "InstallationMonitorDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "intent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v1

    .line 109
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    const/16 v2, 0xc

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 111
    invoke-virtual {v1}, Lsf;->g_()V

    .line 112
    invoke-static {}, LnE;->d()V

    .line 114
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanNewObjectAppeared:Lcom/kms/antivirus/AntivirusEventType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    const/4 v0, 0x1

    .line 122
    :cond_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 127
    invoke-static {}, LmE;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    sget-object v0, LmE;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    sget-object v5, Lcom/kavsdk/antivirus/ThreatType;->None:Lcom/kavsdk/antivirus/ThreatType;

    invoke-static/range {v0 .. v5}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/kavsdk/antivirus/ThreatType;)V

    .line 134
    :cond_0
    return-void
.end method
