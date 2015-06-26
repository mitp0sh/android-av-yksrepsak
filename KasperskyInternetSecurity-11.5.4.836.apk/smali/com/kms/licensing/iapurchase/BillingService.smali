.class public Lcom/kms/licensing/iapurchase/BillingService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lcom/android/vending/billing/IMarketBillingService;

.field private static b:Ljava/util/LinkedList;

.field private static c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kms/licensing/iapurchase/BillingService;->b:Ljava/util/LinkedList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kms/licensing/iapurchase/BillingService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 444
    return-void
.end method

.method public static synthetic a(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/licensing/iapurchase/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lum;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 641
    if-nez v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    invoke-virtual {p0}, Lcom/kms/licensing/iapurchase/BillingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Luj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 650
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lun;

    .line 651
    iget-object v1, v0, Lun;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 652
    iget-object v1, v0, Lun;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_3
    iget-object v1, v0, Lun;->a:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    iget-object v2, v0, Lun;->c:Ljava/lang/String;

    iget-object v3, v0, Lun;->d:Ljava/lang/String;

    iget-wide v4, v0, Lun;->e:J

    iget-object v6, v0, Lun;->f:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Luj;->a(Landroid/content/Context;Lcom/kms/licensing/iapurchase/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 661
    invoke-direct {p0, p1, v0}, Lcom/kms/licensing/iapurchase/BillingService;->a(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static a(JLcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
    .locals 2

    .prologue
    .line 681
    sget-object v0, Lcom/kms/licensing/iapurchase/BillingService;->c:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtM;

    .line 682
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0, p2}, LtM;->a(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V

    .line 689
    :cond_0
    sget-object v0, Lcom/kms/licensing/iapurchase/BillingService;->c:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    return-void
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 483
    const-string v1, "com.kms.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-direct {p0, p2, v0}, Lcom/kms/licensing/iapurchase/BillingService;->a(I[Ljava/lang/String;)Z

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const-string v1, "com.kms.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, p2, v1}, Lcom/kms/licensing/iapurchase/BillingService;->b(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 490
    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 491
    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-direct {p0, p2, v0, v1}, Lcom/kms/licensing/iapurchase/BillingService;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_3
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 496
    const-string v2, "response_code"

    sget-object v3, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->RESULT_ERROR:Lcom/kms/licensing/iapurchase/Consts$ResponseCode;

    invoke-virtual {v3}, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 499
    invoke-static {v2}, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->valueOf(I)Lcom/kms/licensing/iapurchase/Consts$ResponseCode;

    move-result-object v2

    .line 500
    invoke-static {v0, v1, v2}, Lcom/kms/licensing/iapurchase/BillingService;->a(JLcom/kms/licensing/iapurchase/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 602
    new-instance v0, LtO;

    invoke-direct {v0, p0, p1, p2}, LtO;-><init>(Lcom/kms/licensing/iapurchase/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, LtO;->b()Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/kms/licensing/iapurchase/BillingService;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/kms/licensing/iapurchase/BillingService;->f()Z

    move-result v0

    return v0
.end method

.method private b(I[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 622
    new-instance v0, LtP;

    invoke-direct {v0, p0, p1, p2}, LtP;-><init>(Lcom/kms/licensing/iapurchase/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, LtP;->b()Z

    move-result v0

    return v0
.end method

.method public static synthetic c()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/kms/licensing/iapurchase/BillingService;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static synthetic d()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/kms/licensing/iapurchase/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method public static synthetic e()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/kms/licensing/iapurchase/BillingService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 514
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/kms/licensing/iapurchase/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 518
    if-eqz v1, :cond_0

    .line 527
    :goto_0
    return v0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 697
    const/4 v0, -0x1

    move v1, v0

    .line 699
    :cond_0
    :goto_0
    sget-object v0, Lcom/kms/licensing/iapurchase/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtM;

    if-eqz v0, :cond_3

    .line 700
    invoke-virtual {v0}, LtM;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    sget-object v2, Lcom/kms/licensing/iapurchase/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 706
    invoke-virtual {v0}, LtM;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 707
    invoke-virtual {v0}, LtM;->a()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 712
    :cond_1
    invoke-direct {p0}, Lcom/kms/licensing/iapurchase/BillingService;->f()Z

    .line 727
    :cond_2
    :goto_1
    return-void

    .line 720
    :cond_3
    if-ltz v1, :cond_2

    .line 724
    invoke-virtual {p0, v1}, Lcom/kms/licensing/iapurchase/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lcom/kms/licensing/iapurchase/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 448
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 584
    new-instance v0, LtR;

    invoke-direct {v0, p0}, LtR;-><init>(Lcom/kms/licensing/iapurchase/BillingService;)V

    invoke-virtual {v0}, LtR;->b()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 550
    new-instance v0, LtN;

    invoke-direct {v0, p0, p1}, LtN;-><init>(Lcom/kms/licensing/iapurchase/BillingService;Ljava/lang/String;)V

    invoke-virtual {v0}, LtN;->b()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 572
    new-instance v0, LtQ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LtQ;-><init>(Lcom/kms/licensing/iapurchase/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LtQ;->b()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 759
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/kms/licensing/iapurchase/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 738
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/kms/licensing/iapurchase/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    .line 739
    invoke-direct {p0}, Lcom/kms/licensing/iapurchase/BillingService;->g()V

    .line 740
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/licensing/iapurchase/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    .line 751
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Lcom/kms/licensing/iapurchase/BillingService;->a(Landroid/content/Intent;I)V

    .line 466
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0, p1, p3}, Lcom/kms/licensing/iapurchase/BillingService;->a(Landroid/content/Intent;I)V

    .line 460
    const/4 v0, 0x2

    return v0
.end method
