.class public final LjA;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/kavsdk/wifi/impl/WifiStatisticsManager;


# direct methods
.method public constructor <init>(Lcom/kavsdk/wifi/impl/WifiStatisticsManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, LjA;->b:Lcom/kavsdk/wifi/impl/WifiStatisticsManager;

    iput-object p2, p0, LjA;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 205
    const-wide/16 v0, 0x1f40

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    iget-object v0, p0, LjA;->b:Lcom/kavsdk/wifi/impl/WifiStatisticsManager;

    iget-object v1, p0, LjA;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(Lcom/kavsdk/wifi/impl/WifiStatisticsManager;Landroid/content/Context;)Z

    .line 210
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
