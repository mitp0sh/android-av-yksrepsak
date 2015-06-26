.class public Lcom/kms/licensing/iapurchase/BillingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;JI)V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    const-class v1, Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    const-string v1, "response_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kms.GET_PURCHASE_INFORMATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    const-class v1, Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const-class v1, Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    const-string v1, "inapp_signed_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "inapp_signature"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const-string v0, "inapp_signed_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "inapp_signature"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {p1, v0, v1}, Lcom/kms/licensing/iapurchase/BillingReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v1, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    const-string v0, "notification_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/kms/licensing/iapurchase/BillingReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 63
    const-string v2, "response_code"

    sget-object v3, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->RESULT_ERROR:Lcom/kms/licensing/iapurchase/Consts$ResponseCode;

    invoke-virtual {v3}, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 66
    invoke-static {p1, v0, v1, v2}, Lcom/kms/licensing/iapurchase/BillingReceiver;->a(Landroid/content/Context;JI)V

    goto :goto_0
.end method
