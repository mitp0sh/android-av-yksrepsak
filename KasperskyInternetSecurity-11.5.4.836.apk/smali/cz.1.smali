.class public final Lcz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/kaspersky/components/webfilter/ProxySettings;

.field private final b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/kaspersky/components/webfilter/ProxySettings;)V
    .locals 1

    .prologue
    .line 678
    iput-object p1, p0, Lcz;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 680
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcz;->b:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kaspersky/components/webfilter/ProxySettings;B)V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcz;-><init>(Lcom/kaspersky/components/webfilter/ProxySettings;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 684
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 685
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcz;->b:Landroid/os/Handler;

    new-instance v1, LcA;

    invoke-direct {v1, p0, p1}, LcA;-><init>(Lcz;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    :cond_0
    return-void
.end method
