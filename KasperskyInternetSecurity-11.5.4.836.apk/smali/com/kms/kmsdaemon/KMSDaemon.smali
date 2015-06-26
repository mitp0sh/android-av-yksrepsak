.class public Lcom/kms/kmsdaemon/KMSDaemon;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/kms/kmsdaemon/SMSReceiver;

.field private b:LrF;

.field private c:LvG;

.field private d:Lcom/kms/kmsdaemon/KMSDaemon$Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Lcom/kms/kmsdaemon/SMSReceiver;

    invoke-direct {v0}, Lcom/kms/kmsdaemon/SMSReceiver;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->a:Lcom/kms/kmsdaemon/SMSReceiver;

    .line 42
    new-instance v0, Lcom/kms/kmsdaemon/KMSDaemon$Binder;

    invoke-direct {v0, p0}, Lcom/kms/kmsdaemon/KMSDaemon$Binder;-><init>(Lcom/kms/kmsdaemon/KMSDaemon;)V

    iput-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->d:Lcom/kms/kmsdaemon/KMSDaemon$Binder;

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const v3, 0x7fffffff

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.GSM_SMS_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 77
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 79
    iget-object v2, p0, Lcom/kms/kmsdaemon/KMSDaemon;->a:Lcom/kms/kmsdaemon/SMSReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/kms/kmsdaemon/KMSDaemon;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->a:Lcom/kms/kmsdaemon/SMSReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/kms/kmsdaemon/KMSDaemon;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method


# virtual methods
.method public final a()LrF;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->b:LrF;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->b:LrF;

    invoke-virtual {v0, p1}, LrF;->a(Ljava/lang/Class;)V

    .line 112
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->c:LvG;

    invoke-virtual {v0, p1}, LvG;->b(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public final a(LrE;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->b:LrF;

    invoke-virtual {v0, p1}, LrF;->a(LrE;)V

    .line 107
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v1, 0x10810000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/kms/kmsdaemon/KMSDaemon;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->d:Lcom/kms/kmsdaemon/KMSDaemon$Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    new-instance v0, LrF;

    invoke-virtual {p0}, Lcom/kms/kmsdaemon/KMSDaemon;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LrF;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->b:LrF;

    .line 51
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    .line 53
    sget-object v1, Lqb;->a:[I

    invoke-interface {v0}, Lmk;->h()Lcom/kms/antivirus/MonitorMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/antivirus/MonitorMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 56
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 64
    new-instance v0, LvG;

    invoke-virtual {p0}, Lcom/kms/kmsdaemon/KMSDaemon;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LvG;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->c:LvG;

    .line 65
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->c:LvG;

    invoke-static {v0}, LaP;->a(LaO;)V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/kms/kmsdaemon/KMSDaemon;->c()V

    .line 69
    return-void

    .line 55
    :pswitch_0
    invoke-interface {v0}, Lmk;->k()V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->a:Lcom/kms/kmsdaemon/SMSReceiver;

    invoke-virtual {p0, v0}, Lcom/kms/kmsdaemon/KMSDaemon;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->c:LvG;

    invoke-static {v0}, LaP;->b(LaO;)V

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 92
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
