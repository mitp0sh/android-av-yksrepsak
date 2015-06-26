.class public final Lcy;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kaspersky/components/webfilter/ProxySettings;


# direct methods
.method public constructor <init>(Lcom/kaspersky/components/webfilter/ProxySettings;)V
    .locals 1

    .prologue
    .line 704
    iput-object p1, p0, Lcy;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    .line 705
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 706
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 713
    iget-object v0, p0, Lcy;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    iget-object v1, p0, Lcy;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-static {v1}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Lcom/kaspersky/components/webfilter/ProxySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Lcom/kaspersky/components/webfilter/ProxySettings;Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    .line 715
    :cond_0
    return-void
.end method
