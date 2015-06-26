.class public final LsQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LsY;
.implements Lua;


# static fields
.field private static a:Lcom/kms/licensing/ActivationType;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Landroid/util/SparseArray;

.field private f:Ljava/util/List;

.field private g:Ltc;

.field private h:Lv;

.field private i:LsX;

.field private j:Landroid/content/Context;

.field private k:LvB;

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LsQ;->b:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LsQ;->c:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LsQ;->d:Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, LsQ;->e:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LsQ;->f:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LsQ;->m:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, LsQ;->o:Z

    return-void
.end method

.method static synthetic a(LsQ;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, LsQ;->l:Landroid/os/Handler;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 729
    const-string v0, ""

    .line 730
    iget-object v1, p0, LsQ;->i:LsX;

    invoke-virtual {v1}, LsX;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 731
    if-gtz v1, :cond_1

    .line 732
    const v0, 0x7f0701e9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    :cond_0
    :goto_0
    return-object v0

    .line 733
    :cond_1
    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    .line 734
    const v0, 0x7f07015b

    const v2, 0x7f07015a

    const v3, 0x7f070159

    invoke-static {v1, v0, v2, v3}, Lcom/kms/kmsshared/Utils;->a(IIII)I

    move-result v0

    .line 736
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, LsQ;->o()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(LsQ;)Ltc;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, LsQ;->g:Ltc;

    return-object v0
.end method

.method static synthetic a(LsQ;Ltc;)Ltc;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, LsQ;->g:Ltc;

    return-object v0
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 869
    iget-object v1, p0, LsQ;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 870
    :try_start_0
    iget-object v0, p0, LsQ;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 871
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 872
    iput p1, v0, Landroid/os/Message;->what:I

    .line 873
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 874
    const-string v3, "error_key"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 877
    iget-object v2, p0, LsQ;->l:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 879
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/kms/licensing/ActivationType;I)V
    .locals 2

    .prologue
    .line 1086
    invoke-static {p0}, LsO;->a(Landroid/content/Context;)V

    .line 1088
    invoke-static {p2}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->convertLicenseTypeToGA(I)Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    move-result-object v0

    .line 1089
    invoke-static {v0}, LsQ;->a(Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    sget-object v1, LsT;->a:[I

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1107
    const/4 v0, 0x0

    .line 1110
    :goto_1
    if-eqz v0, :cond_0

    .line 1111
    invoke-static {v0, p1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;Lcom/kms/licensing/ActivationType;)V

    goto :goto_0

    .line 1097
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->Free:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    goto :goto_1

    .line 1100
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->Paid:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    goto :goto_1

    .line 1103
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    .line 1104
    invoke-static {p0}, Lk;->e(Landroid/content/Context;)V

    goto :goto_1

    .line 1095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lay;Z)V
    .locals 3

    .prologue
    .line 422
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, LsQ;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 423
    iget-object v0, p0, LsQ;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 424
    iget-object v0, p0, LsQ;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax;

    .line 429
    if-eqz v0, :cond_1

    .line 430
    invoke-interface {v0, p1}, Lax;->a(Lay;)V

    .line 422
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, LsQ;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 438
    :cond_2
    iget-object v0, p0, LsQ;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 440
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 441
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax;

    invoke-interface {v0, p1}, Lax;->a(Lay;)V

    goto :goto_2

    .line 443
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 446
    :cond_4
    return-void
.end method

.method public static a(Lcom/kms/licensing/ActivationType;)V
    .locals 0

    .prologue
    .line 1127
    sput-object p0, LsQ;->a:Lcom/kms/licensing/ActivationType;

    .line 1128
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ltw;

    iget-object v1, p0, LsQ;->n:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1, p1}, Ltw;-><init>(Ltf;LsQ;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Lte;->a()V

    .line 205
    return-void
.end method

.method static synthetic a(LsQ;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, LsQ;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(LsX;LsX;)V
    .locals 3

    .prologue
    .line 1064
    invoke-static {}, LsQ;->l()Lcom/kms/licensing/ActivationType;

    move-result-object v0

    .line 1065
    if-nez v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, LsQ;->a(Lcom/kms/licensing/ActivationType;)V

    .line 1072
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1076
    invoke-virtual {p1}, LsX;->c()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->convertLicenseTypeToGA(I)Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    move-result-object v1

    .line 1077
    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Paid:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    if-ne v1, v2, :cond_0

    .line 1081
    iget-object v1, p0, LsQ;->j:Landroid/content/Context;

    invoke-virtual {p2}, LsX;->c()I

    move-result v2

    invoke-static {v1, v0, v2}, LsQ;->a(Landroid/content/Context;Lcom/kms/licensing/ActivationType;I)V

    goto :goto_0
.end method

.method private a(Lsh;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 449
    iget-object v0, p0, LsQ;->i:LsX;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LsX;->a(I)Z

    move-result v0

    .line 451
    invoke-virtual {p1}, Lsh;->a()I

    move-result v1

    invoke-static {v1}, Lcom/kms/antivirus/MonitorMode;->getById(I)Lcom/kms/antivirus/MonitorMode;

    move-result-object v1

    .line 452
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v2

    invoke-interface {v2}, Lmk;->h()Lcom/kms/antivirus/MonitorMode;

    move-result-object v2

    .line 454
    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {p1}, Lsh;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p1, v3}, Lsh;->a(Z)V

    .line 457
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0, v1}, Lmk;->a(Lcom/kms/antivirus/MonitorMode;)V

    .line 458
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Extended:Lcom/kms/antivirus/MonitorMode;

    if-ne v1, v0, :cond_0

    .line 460
    :try_start_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgz;->a(Z)V
    :try_end_0
    .catch Lcom/kavsdk/license/SdkLicenseViolationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    const-string v1, "KMS"

    const-string v2, "GeneralLicenseController.handleAvMonitorState()  SdkLicenseViolationException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v0}, Lcom/kavsdk/license/SdkLicenseViolationException;->printStackTrace()V

    goto :goto_0

    .line 471
    :cond_1
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    if-eq v2, v0, :cond_0

    .line 472
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    invoke-interface {v0, v1}, Lmk;->a(Lcom/kms/antivirus/MonitorMode;)V

    .line 473
    sget-object v0, Lcom/kms/antivirus/MonitorMode;->Extended:Lcom/kms/antivirus/MonitorMode;

    if-ne v2, v0, :cond_2

    .line 475
    :try_start_1
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgz;->a(Z)V
    :try_end_1
    .catch Lcom/kavsdk/license/SdkLicenseViolationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 483
    :cond_2
    :goto_1
    invoke-virtual {p1, v4}, Lsh;->a(Z)V

    .line 484
    invoke-virtual {v2}, Lcom/kms/antivirus/MonitorMode;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lsh;->a(I)V

    goto :goto_0

    .line 477
    :catch_1
    move-exception v0

    .line 478
    const-string v1, "KMS"

    const-string v3, "GeneralLicenseController.handleAvMonitorState()  SdkLicenseViolationException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v0}, Lcom/kavsdk/license/SdkLicenseViolationException;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(ZLss;Lss;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 665
    if-eqz p0, :cond_1

    .line 666
    invoke-virtual {p1, p3}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 667
    invoke-virtual {p2, p4}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lss;->a(ILjava/lang/Object;)Lss;

    .line 669
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lss;->a(ILjava/lang/Object;)Lss;

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    invoke-virtual {p1, p3}, Lss;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 674
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lss;->a(ILjava/lang/Object;)Lss;

    .line 675
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lss;->a(ILjava/lang/Object;)Lss;

    goto :goto_0
.end method

.method private static a(Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;)Z
    .locals 2

    .prologue
    .line 1116
    sget-object v0, LsT;->a:[I

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1122
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1120
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(IILjava/lang/String;)V
    .locals 4

    .prologue
    .line 251
    iget-object v1, p0, LsQ;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, LsQ;->l:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 253
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 254
    iput p1, v0, Landroid/os/Message;->what:I

    .line 255
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 256
    const-string v3, "error_key"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    invoke-static {p3}, Lra;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    const-string v3, "error_message"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 261
    iget-object v2, p0, LsQ;->l:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 1000
    iget-object v1, p0, LsQ;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 1001
    :try_start_0
    iget-object v0, p0, LsQ;->l:Landroid/os/Handler;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1002
    iput-object p1, p0, LsQ;->l:Landroid/os/Handler;

    .line 1004
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 5

    .prologue
    .line 141
    iput-object p1, p0, LsQ;->n:Ljava/lang/String;

    .line 142
    new-instance v0, Lvz;

    new-instance v1, LsR;

    invoke-direct {v1, p0, p3, p2}, LsR;-><init>(LsQ;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lvz;-><init>(Lte;)V

    .line 160
    iget-object v1, p0, LsQ;->k:LvB;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, LvB;->a(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)LvD;

    .line 162
    return-void
.end method

.method static synthetic b(LsQ;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, LsQ;->m()V

    return-void
.end method

.method private b(LsX;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 354
    iget-object v2, p0, LsQ;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 356
    if-eqz p1, :cond_5

    .line 357
    :try_start_0
    invoke-direct {p0, p1}, LsQ;->c(LsX;)V

    .line 369
    :cond_0
    :goto_0
    iget-object v3, p0, LsQ;->i:LsX;

    invoke-virtual {v3}, LsX;->a()Lay;

    move-result-object v3

    invoke-interface {v3}, Lay;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, LsQ;->i:LsX;

    invoke-virtual {v3}, LsX;->a()Lay;

    move-result-object v3

    invoke-interface {v3}, Lay;->b()I

    move-result v3

    if-eqz v3, :cond_6

    .line 372
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v3

    sget-object v4, Lcom/kms/licensing/LicenseEventType;->LicenseExpiring:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v4}, Lcom/kms/licensing/LicenseEventType;->newEvent()LsZ;

    move-result-object v4

    invoke-interface {v3, v4}, Lrx;->a(Lrw;)V

    .line 379
    :cond_1
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v3

    sget-object v4, Lcom/kms/licensing/LicenseEventType;->InformationValid:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v4}, Lcom/kms/licensing/LicenseEventType;->newEvent()LsZ;

    move-result-object v4

    invoke-interface {v3, v4}, Lrx;->a(Lrw;)V

    .line 383
    :goto_1
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v3

    .line 385
    iget-object v4, p0, LsQ;->i:LsX;

    invoke-virtual {v4}, LsX;->a()Lay;

    move-result-object v4

    invoke-interface {v4}, Lay;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 386
    iget-object v1, p0, LsQ;->i:LsX;

    invoke-virtual {v1}, LsX;->a()Lay;

    move-result-object v1

    invoke-interface {v1}, Lay;->k()Laz;

    move-result-object v1

    .line 387
    invoke-interface {v1}, Laz;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk;->f(Ljava/lang/String;)V

    .line 388
    invoke-interface {v1}, Laz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lsk;->g(Ljava/lang/String;)V

    .line 389
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lsk;->a(I)V

    .line 391
    new-instance v1, LtH;

    invoke-direct {v1}, LtH;-><init>()V

    invoke-direct {p0, v1}, LsQ;->c(LsX;)V

    .line 392
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    sget-object v4, Lcom/kms/UiEventType;->NotifyLicenseBlocked:Lcom/kms/UiEventType;

    invoke-virtual {v4}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v4

    invoke-interface {v1, v4}, Lrx;->a(Lrw;)V

    move v1, v0

    .line 401
    :cond_2
    :goto_2
    iget-object v4, p0, LsQ;->i:LsX;

    invoke-virtual {v4}, LsX;->c()I

    move-result v4

    .line 402
    const/16 v5, 0x8

    if-eq v4, v5, :cond_8

    .line 403
    invoke-virtual {v3}, Lsk;->g()V

    .line 404
    const/4 v1, 0x3

    if-ne v4, v1, :cond_3

    .line 405
    invoke-virtual {v3}, Lsk;->e()V

    .line 409
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 410
    invoke-virtual {v3}, Lsk;->g_()V

    .line 412
    :cond_4
    monitor-exit v2

    return-void

    .line 359
    :cond_5
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v3

    .line 360
    invoke-virtual {v3}, Lsk;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 361
    new-instance v3, LtG;

    invoke-direct {v3}, LtG;-><init>()V

    .line 362
    invoke-virtual {v3}, LtG;->c()LaD;

    move-result-object v3

    .line 363
    if-eqz v3, :cond_0

    .line 364
    new-instance v4, Ltu;

    invoke-direct {v4, v3}, Ltu;-><init>(LaD;)V

    invoke-direct {p0, v4}, LsQ;->c(LsX;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 376
    :cond_6
    :try_start_1
    iget-object v3, p0, LsQ;->i:LsX;

    invoke-virtual {v3}, LsX;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v3

    sget-object v4, Lcom/kms/licensing/LicenseEventType;->InformationExpired:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v4}, Lcom/kms/licensing/LicenseEventType;->newEvent()LsZ;

    move-result-object v4

    invoke-interface {v3, v4}, Lrx;->a(Lrw;)V

    goto/16 :goto_1

    .line 394
    :cond_7
    iget-object v4, p0, LsQ;->i:LsX;

    invoke-virtual {v4}, LsX;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 395
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lsk;->a(I)V

    .line 396
    const-string v1, ""

    invoke-virtual {v3, v1}, Lsk;->f(Ljava/lang/String;)V

    .line 397
    const-string v1, ""

    invoke-virtual {v3, v1}, Lsk;->g(Ljava/lang/String;)V

    .line 399
    new-instance v1, LtH;

    invoke-direct {v1}, LtH;-><init>()V

    invoke-direct {p0, v1}, LsQ;->c(LsX;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3
.end method

.method private b(Lsh;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 490
    invoke-static {}, LjJ;->h()LkZ;

    move-result-object v0

    .line 492
    iget-object v1, p0, LsQ;->i:LsX;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, LsX;->a(I)Z

    move-result v1

    .line 494
    invoke-virtual {p1}, Lsh;->c()I

    move-result v2

    .line 496
    invoke-interface {v0}, LkZ;->a()I

    move-result v3

    .line 497
    if-eqz v1, :cond_1

    .line 498
    invoke-virtual {p1}, Lsh;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {p1, v4}, Lsh;->b(Z)V

    .line 501
    invoke-interface {v0, v2}, LkZ;->a(I)V

    .line 502
    if-eqz v2, :cond_0

    .line 503
    invoke-interface {v0}, LkZ;->d()V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    if-eqz v3, :cond_0

    .line 509
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_2

    .line 510
    invoke-static {}, Lcom/kms/antispam/ContactsBlocker;->a()V

    .line 511
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lsh;->b(Z)V

    .line 512
    invoke-virtual {p1, v3}, Lsh;->b(I)V

    .line 513
    invoke-interface {v0, v4}, LkZ;->a(I)V

    goto :goto_0
.end method

.method private c(LsX;)V
    .locals 1

    .prologue
    .line 1045
    iput-object p1, p0, LsQ;->i:LsX;

    .line 1047
    invoke-virtual {p1}, LsX;->c()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->convertLicenseTypeToGA(I)Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    move-result-object v0

    .line 1048
    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->b(Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;)V

    .line 1049
    return-void
.end method

.method private c(Lsh;)V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, LsQ;->i:LsX;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, LsX;->a(I)Z

    move-result v0

    .line 523
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v1

    .line 524
    invoke-interface {v1}, LkM;->d()Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v2

    .line 525
    invoke-virtual {p1}, Lsh;->e()I

    move-result v3

    invoke-static {v3}, Lcom/kms/antiphishing/AntiPhishingMode;->getById(I)Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v3

    .line 527
    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {p1}, Lsh;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsh;->c(Z)V

    .line 531
    sget-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    if-ne v2, v0, :cond_0

    .line 532
    invoke-interface {v1, v3}, LkM;->a(Lcom/kms/antiphishing/AntiPhishingMode;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    sget-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    if-eq v2, v0, :cond_0

    .line 536
    sget-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    invoke-interface {v1, v0}, LkM;->a(Lcom/kms/antiphishing/AntiPhishingMode;)V

    .line 537
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsh;->c(Z)V

    goto :goto_0
.end method

.method private d(Lsh;)V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 544
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v4

    .line 545
    invoke-virtual {v4}, Lsb;->b()Z

    move-result v0

    .line 546
    invoke-virtual {p1}, Lsh;->g()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 547
    iget-object v6, p0, LsQ;->i:LsX;

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, LsX;->a(I)Z

    move-result v6

    .line 550
    if-eqz v6, :cond_3

    .line 551
    if-eqz v5, :cond_6

    .line 552
    invoke-virtual {p1}, Lsh;->h()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 553
    invoke-virtual {p1, v2}, Lsh;->d(Z)V

    .line 555
    if-eqz v0, :cond_2

    move v0, v1

    .line 557
    :goto_0
    invoke-virtual {v4, v5}, Lsb;->a(Z)V

    .line 558
    invoke-virtual {v4}, Lsb;->g_()V

    .line 560
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kms/kmsshared/KMSApplication;->o()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v4

    .line 561
    if-eqz v4, :cond_0

    .line 562
    sget-object v5, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v5}, LkW;->a(Landroid/content/Context;)LrE;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kms/kmsdaemon/KMSDaemon;->a(LrE;)V

    .line 581
    :cond_0
    :goto_1
    if-eq v0, v3, :cond_1

    .line 582
    if-nez v0, :cond_5

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsh;->a(Ljava/lang/Boolean;)V

    .line 584
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 555
    goto :goto_0

    .line 567
    :cond_3
    if-eqz v0, :cond_6

    .line 568
    invoke-virtual {p1, v1}, Lsh;->d(Z)V

    .line 572
    invoke-virtual {v4, v2}, Lsb;->a(Z)V

    .line 573
    invoke-virtual {v4}, Lsb;->g_()V

    .line 575
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->o()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_4

    .line 577
    const-class v4, LkW;

    invoke-virtual {v0, v4}, Lcom/kms/kmsdaemon/KMSDaemon;->a(Ljava/lang/Class;)V

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    .line 582
    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method private static g(I)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Lcom/kms/licensing/ActivationType;
    .locals 1

    .prologue
    .line 1131
    sget-object v0, LsQ;->a:Lcom/kms/licensing/ActivationType;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ltr;

    iget-object v1, p0, LsQ;->n:Ljava/lang/String;

    new-instance v2, Ltq;

    iget-object v3, p0, LsQ;->i:LsX;

    invoke-direct {v2, v3}, Ltq;-><init>(LsX;)V

    invoke-direct {v0, v1, p0, v2}, Ltr;-><init>(Ljava/lang/String;Ltf;Ltd;)V

    .line 198
    invoke-virtual {v0}, Lte;->a()V

    .line 199
    return-void
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 587
    invoke-static {}, Lsr;->k()Lsh;

    move-result-object v1

    .line 589
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v2

    .line 591
    invoke-direct {p0, v1}, LsQ;->a(Lsh;)V

    .line 592
    invoke-direct {p0, v1}, LsQ;->b(Lsh;)V

    .line 593
    invoke-direct {p0, v1}, LsQ;->c(Lsh;)V

    .line 594
    invoke-direct {p0, v1}, LsQ;->d(Lsh;)V

    .line 599
    :try_start_0
    iget-object v0, p0, LsQ;->i:LsX;

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, LsX;->a(I)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, LsQ;->a(ZLss;Lss;II)V

    .line 606
    iget-object v0, p0, LsQ;->i:LsX;

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, LsX;->a(I)Z

    move-result v0

    const/16 v3, 0x9

    const/16 v4, 0x8

    invoke-static {v0, v2, v1, v3, v4}, LsQ;->a(ZLss;Lss;II)V

    .line 612
    iget-object v0, p0, LsQ;->i:LsX;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, LsX;->a(I)Z

    move-result v0

    const/16 v3, 0xa

    const/16 v4, 0x9

    invoke-static {v0, v2, v1, v3, v4}, LsQ;->a(ZLss;Lss;II)V

    .line 618
    iget-object v0, p0, LsQ;->i:LsX;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, LsX;->a(I)Z

    move-result v0

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-static {v0, v2, v1, v3, v4}, LsQ;->a(ZLss;Lss;II)V

    .line 624
    iget-object v0, p0, LsQ;->i:LsX;

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, LsX;->a(I)Z

    move-result v0

    const/16 v3, 0xd

    const/4 v4, 0x7

    invoke-static {v0, v2, v1, v3, v4}, LsQ;->a(ZLss;Lss;II)V

    .line 630
    iget-object v0, p0, LsQ;->i:LsX;

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, LsX;->a(I)Z

    move-result v0

    const/16 v3, 0xc

    const/16 v4, 0xa

    invoke-static {v0, v2, v1, v3, v4}, LsQ;->a(ZLss;Lss;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    invoke-virtual {v1}, Lsh;->g_()V

    .line 639
    invoke-virtual {v2}, Lse;->g_()V

    .line 641
    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->c()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 642
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Z)V

    .line 646
    :cond_0
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    invoke-virtual {v0}, LcW;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    new-instance v0, LsS;

    invoke-direct {v0, p0}, LsS;-><init>(LsQ;)V

    invoke-virtual {v0}, LsS;->start()V

    .line 659
    :cond_1
    :goto_1
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 655
    :cond_2
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->E()LaZ;

    move-result-object v0

    invoke-interface {v0}, LaZ;->publishLicenseInfo()V

    .line 657
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->A()Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->f()V

    goto :goto_1
.end method

.method private o()I
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    .line 742
    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->d()I

    move-result v1

    .line 747
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 748
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 749
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 751
    iget-object v4, p0, LsQ;->i:LsX;

    invoke-virtual {v4}, LsX;->e()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 752
    iget-object v4, p0, LsQ;->i:LsX;

    invoke-virtual {v4}, LsX;->f()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 755
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 760
    const/4 v0, 0x0

    .line 791
    :cond_0
    :goto_0
    return v0

    .line 768
    :cond_1
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 769
    rem-long v6, v4, v8

    long-to-int v6, v6

    .line 770
    div-long/2addr v4, v8

    long-to-int v0, v4

    .line 771
    if-eqz v6, :cond_2

    .line 772
    add-int/lit8 v0, v0, 0x1

    .line 774
    :cond_2
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    .line 776
    if-lt v0, v1, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 779
    :cond_4
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-lez v2, :cond_3

    .line 781
    if-le v0, v1, :cond_3

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 856
    iget-object v1, p0, LsQ;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 857
    :try_start_0
    iget-object v0, p0, LsQ;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 858
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1008
    iget-object v1, p0, LsQ;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 1009
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, LsQ;->l:Landroid/os/Handler;

    .line 1010
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()LaC;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, LsQ;->i:LsX;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, LsQ;->b(IILjava/lang/String;)V

    .line 247
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-static {p2}, LsQ;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3}, LsQ;->b(IILjava/lang/String;)V

    .line 187
    iget-object v1, p0, LsQ;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, LsQ;->l:Landroid/os/Handler;

    .line 189
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    new-instance v0, Ltc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Ltc;-><init>(ZILjava/lang/String;LsX;)V

    iput-object v0, p0, LsQ;->g:Ltc;

    .line 192
    invoke-direct {p0}, LsQ;->p()V

    .line 193
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ILtc;)V
    .locals 3

    .prologue
    .line 209
    iput-object p2, p0, LsQ;->g:Ltc;

    .line 210
    iget-object v1, p0, LsQ;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    invoke-virtual {p2}, Ltc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, LsQ;->i:LsX;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p2}, Ltc;->d()LsX;

    move-result-object v0

    iget-object v2, p0, LsQ;->i:LsX;

    invoke-direct {p0, v0, v2}, LsQ;->a(LsX;LsX;)V

    .line 216
    :cond_0
    invoke-virtual {p2}, Ltc;->d()LsX;

    move-result-object v0

    invoke-virtual {p0, v0}, LsQ;->a(LsX;)V

    .line 218
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v2

    .line 219
    iget-object v0, p0, LsQ;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lsk;->e(Ljava/lang/String;)V

    .line 220
    iget-boolean v0, p0, LsQ;->o:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lsk;->b(I)V

    .line 223
    invoke-virtual {v2}, Lsk;->g_()V

    .line 225
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {p2}, Ltc;->b()I

    move-result v0

    invoke-virtual {p2}, Ltc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, LsQ;->b(IILjava/lang/String;)V

    .line 229
    iget-object v1, p0, LsQ;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, LsQ;->l:Landroid/os/Handler;

    .line 231
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    invoke-direct {p0}, LsQ;->p()V

    .line 233
    return-void

    .line 220
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 231
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 796
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Lsk;->b()I

    move-result v0

    .line 799
    packed-switch v0, :pswitch_data_0

    .line 804
    :goto_0
    return-void

    .line 802
    :pswitch_0
    new-instance v0, LtA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LtA;-><init>(Ltf;LsY;)V

    .line 803
    invoke-virtual {p0, v0, p1}, LsQ;->a(Lte;Landroid/os/Handler;)V

    goto :goto_0

    .line 799
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 884
    invoke-direct {p0, p1}, LsQ;->b(Landroid/os/Handler;)V

    .line 886
    new-instance v0, Lvz;

    new-instance v1, LtS;

    invoke-direct {v1, p0, p2}, LtS;-><init>(Lua;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lvz;-><init>(Lte;)V

    .line 887
    iget-object v1, p0, LsQ;->k:LvB;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, LvB;->a(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)LvD;

    .line 889
    return-void
.end method

.method public final a(Landroid/os/Handler;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 893
    invoke-direct {p0, p1}, LsQ;->b(Landroid/os/Handler;)V

    .line 894
    new-instance v0, Lvz;

    new-instance v1, Luf;

    invoke-direct {v1, p0, p2, p3}, Luf;-><init>(Lua;Landroid/content/Context;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Lvz;-><init>(Lte;)V

    .line 895
    iget-object v1, p0, LsQ;->k:LvB;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, LvB;->a(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)LvD;

    .line 898
    return-void
.end method

.method public final a(Lax;)V
    .locals 3

    .prologue
    .line 1015
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1016
    iget-object v1, p0, LsQ;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1017
    :try_start_0
    iget-object v2, p0, LsQ;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, LsQ;->o:Z

    .line 137
    invoke-direct {p0, p1, v1, v1}, LsQ;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 138
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, LsQ;->o:Z

    .line 131
    invoke-direct {p0, p1, p2, p3}, LsQ;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 132
    return-void
.end method

.method public final a(LsX;)V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, LsQ;->i:LsX;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, LsQ;->h:Lv;

    iget-object v1, p0, LsQ;->i:LsX;

    invoke-virtual {v1}, LsX;->l()I

    move-result v1

    invoke-interface {v0, v1}, Lv;->b(I)V

    .line 334
    iget-object v0, p0, LsQ;->h:Lv;

    iget-object v1, p0, LsQ;->i:LsX;

    invoke-virtual {v1}, LsX;->m()I

    move-result v1

    invoke-interface {v0, v1}, Lv;->b(I)V

    .line 335
    iget-object v0, p0, LsQ;->h:Lv;

    iget-object v1, p0, LsQ;->i:LsX;

    invoke-virtual {v1}, LsX;->n()I

    move-result v1

    invoke-interface {v0, v1}, Lv;->b(I)V

    .line 338
    :cond_0
    invoke-direct {p0, p1}, LsQ;->b(LsX;)V

    .line 339
    invoke-direct {p0}, LsQ;->n()V

    .line 340
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v0

    invoke-interface {v0}, LpA;->g()V

    .line 342
    iget-object v1, p0, LsQ;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, LsQ;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LsQ;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    :cond_1
    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->a()Lay;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, LsQ;->a(Lay;Z)V

    .line 346
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v0, p0, LsQ;->h:Lv;

    iget-object v1, p0, LsQ;->i:LsX;

    invoke-virtual {v1}, LsX;->l()I

    move-result v1

    invoke-interface {v0, v1}, Lv;->a(I)V

    .line 348
    iget-object v0, p0, LsQ;->h:Lv;

    iget-object v1, p0, LsQ;->i:LsX;

    invoke-virtual {v1}, LsX;->m()I

    move-result v1

    invoke-interface {v0, v1}, Lv;->a(I)V

    .line 349
    iget-object v0, p0, LsQ;->h:Lv;

    iget-object v1, p0, LsQ;->i:LsX;

    invoke-virtual {v1}, LsX;->n()I

    move-result v1

    invoke-interface {v0, v1}, Lv;->a(I)V

    .line 350
    invoke-virtual {p0}, LsQ;->d()V

    .line 351
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lte;Landroid/os/Handler;)V
    .locals 5

    .prologue
    .line 166
    new-instance v0, Lvz;

    invoke-direct {v0, p1}, Lvz;-><init>(Lte;)V

    .line 167
    invoke-virtual {p1, p0}, Lte;->a(Ltf;)V

    .line 168
    iget-object v1, p0, LsQ;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v2, p0, LsQ;->l:Landroid/os/Handler;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 170
    iput-object p2, p0, LsQ;->l:Landroid/os/Handler;

    .line 172
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v1, p0, LsQ;->k:LvB;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, LvB;->a(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)LvD;

    .line 175
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lv;Landroid/content/Context;LvB;Z)V
    .locals 2

    .prologue
    .line 110
    iput-object p1, p0, LsQ;->h:Lv;

    .line 111
    iput-object p2, p0, LsQ;->j:Landroid/content/Context;

    .line 112
    iput-object p3, p0, LsQ;->k:LvB;

    .line 114
    new-instance v0, Lta;

    invoke-direct {v0}, Lta;-><init>()V

    .line 115
    iget-object v1, p0, LsQ;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p4}, Lta;->a(Landroid/content/Context;LsQ;Z)V

    .line 116
    invoke-virtual {v0}, Lta;->a()LsX;

    move-result-object v0

    invoke-virtual {p0, v0}, LsQ;->a(LsX;)V

    .line 117
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 919
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LsQ;->a(II)V

    .line 923
    invoke-direct {p0}, LsQ;->q()V

    .line 924
    return-void
.end method

.method public final a(Lax;I)Z
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, LsQ;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, LsQ;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    monitor-exit v1

    .line 318
    :goto_0
    return v0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 308
    iget-object v2, p0, LsQ;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->a()Lay;

    move-result-object v0

    invoke-interface {p1, v0}, Lax;->a(Lay;)V

    .line 312
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, LsQ;->i:LsX;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->o()V

    .line 284
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, LsQ;->b(IILjava/lang/String;)V

    .line 270
    return-void
.end method

.method public final b(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 902
    invoke-direct {p0, p1}, LsQ;->b(Landroid/os/Handler;)V

    .line 903
    new-instance v0, Lvz;

    new-instance v1, Luh;

    invoke-direct {v1, p0, p2}, Luh;-><init>(Lua;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lvz;-><init>(Lte;)V

    .line 904
    iget-object v1, p0, LsQ;->k:LvB;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, LvB;->a(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)LvD;

    .line 907
    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 864
    new-instance v0, Ltz;

    invoke-direct {v0, p0, p0, p1}, Ltz;-><init>(Ltf;LsY;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0, v0, p2}, LsQ;->a(Lte;Landroid/os/Handler;)V

    .line 866
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->j()V

    .line 419
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, LsQ;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, LsQ;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 325
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 9

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->a()Lay;

    move-result-object v0

    .line 684
    iget-object v2, p0, LsQ;->h:Lv;

    invoke-interface {v2, v4}, Lv;->b(I)V

    .line 686
    iget-object v2, p0, LsQ;->i:LsX;

    invoke-virtual {v2}, LsX;->d()I

    move-result v2

    .line 688
    const/16 v3, 0xe

    if-gt v2, v3, :cond_0

    .line 689
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v2

    sget-object v3, Lcom/kms/licensing/LicenseEventType;->LicenseExpiring:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v3}, Lcom/kms/licensing/LicenseEventType;->newEvent()LsZ;

    move-result-object v3

    invoke-interface {v2, v3}, Lrx;->a(Lrw;)V

    .line 691
    :cond_0
    iget-object v2, p0, LsQ;->h:Lv;

    invoke-interface {v2, v4}, Lv;->a(I)V

    .line 692
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v2

    .line 693
    iget-object v3, p0, LsQ;->j:Landroid/content/Context;

    invoke-direct {p0, v3}, LsQ;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-interface {v0}, Lay;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lay;->b()I

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    const/4 v0, 0x1

    .line 698
    :goto_0
    invoke-static {v3}, Lra;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lsj;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 725
    :cond_1
    :goto_1
    return-void

    .line 702
    :cond_2
    iget-object v0, p0, LsQ;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 703
    const-string v0, "com.kaspersky.kts.gui.settingspanelid"

    const/16 v5, 0xf

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    iget-object v0, p0, LsQ;->j:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 709
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cat"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    iget-object v7, p0, LsQ;->j:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v1, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 714
    new-instance v4, Landroid/app/Notification;

    const v7, 0x7f02007e

    invoke-direct {v4, v7, v3, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 716
    iget-object v5, p0, LsQ;->j:Landroid/content/Context;

    iget-object v6, p0, LsQ;->j:Landroid/content/Context;

    const v7, 0x7f07002e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 717
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 720
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 722
    const-class v1, Lsj;

    monitor-enter v1

    .line 723
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Lsj;->b(Z)V

    .line 724
    invoke-virtual {v2}, Lsj;->g_()V

    .line 725
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 928
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LsQ;->a(II)V

    .line 930
    invoke-direct {p0}, LsQ;->q()V

    .line 931
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 911
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LsQ;->a(II)V

    .line 914
    return-void
.end method

.method public final e(I)V
    .locals 2

    .prologue
    .line 972
    const/16 v0, 0xd

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LsQ;->a(II)V

    .line 974
    invoke-direct {p0}, LsQ;->q()V

    .line 976
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 935
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LsQ;->a(II)V

    .line 938
    return-void
.end method

.method public final f(I)V
    .locals 1

    .prologue
    .line 994
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, LsQ;->a(II)V

    .line 996
    invoke-direct {p0}, LsQ;->q()V

    .line 997
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 942
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LsQ;->a(II)V

    .line 944
    invoke-direct {p0}, LsQ;->q()V

    .line 945
    return-void
.end method

.method public final h()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 949
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v3

    .line 950
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lsk;->a(I)V

    .line 952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lsk;->b(J)V

    .line 956
    iget-object v4, p0, LsQ;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 957
    :try_start_0
    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->c()I

    move-result v0

    .line 958
    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lsk;->a(Z)V

    .line 960
    invoke-virtual {v3}, Lsk;->g_()V

    .line 961
    iget-object v0, p0, LsQ;->i:LsX;

    invoke-virtual {v0}, LsX;->o()V

    .line 962
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    const/16 v0, 0xd

    new-instance v3, Ltc;

    const/4 v4, 0x0

    new-instance v5, LtV;

    iget-object v6, p0, LsQ;->j:Landroid/content/Context;

    invoke-direct {v5, v6}, LtV;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v2, v1, v4, v5}, Ltc;-><init>(ZILjava/lang/String;LsX;)V

    invoke-virtual {p0, v0, v3}, LsQ;->a(ILtc;)V

    .line 968
    return-void

    :cond_1
    move v0, v1

    .line 958
    goto :goto_0

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 980
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LsQ;->a(II)V

    .line 983
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 987
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LsQ;->a(II)V

    .line 989
    invoke-direct {p0}, LsQ;->q()V

    .line 990
    return-void
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, LsQ;->k:LvB;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LvB;->a(I)Z

    move-result v0

    return v0
.end method
