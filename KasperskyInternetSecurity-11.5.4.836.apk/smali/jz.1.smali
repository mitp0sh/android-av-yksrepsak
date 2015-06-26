.class final Ljz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Landroid/content/Intent;

.field private synthetic c:Ljy;


# direct methods
.method constructor <init>(Ljy;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Ljz;->c:Ljy;

    iput-object p2, p0, Ljz;->a:Landroid/content/Context;

    iput-object p3, p0, Ljz;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Ljz;->c:Ljy;

    iget-object v0, v0, Ljy;->a:Ljx;

    invoke-static {v0}, Ljx;->a(Ljx;)Lcom/kavsdk/wifi/impl/WifiStatisticsManager;

    move-result-object v0

    iget-object v1, p0, Ljz;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(Landroid/content/Context;)V

    .line 192
    iget-object v0, p0, Ljz;->c:Ljy;

    iget-object v0, v0, Ljy;->a:Ljx;

    iget-object v1, p0, Ljz;->a:Landroid/content/Context;

    iget-object v2, p0, Ljz;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Ljx;->a(Ljx;Landroid/content/Context;Landroid/content/Intent;)V

    .line 193
    return-void
.end method
