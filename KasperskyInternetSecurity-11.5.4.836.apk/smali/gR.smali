.class final LgR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/content/Intent;

.field private synthetic c:LgP;


# direct methods
.method constructor <init>(LgP;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, LgR;->c:LgP;

    iput-object p2, p0, LgR;->a:Ljava/lang/String;

    iput-object p3, p0, LgR;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 656
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 658
    :cond_0
    iget-object v2, p0, LgR;->c:LgP;

    iget-object v3, p0, LgR;->a:Ljava/lang/String;

    invoke-static {v2, v3}, LgP;->a(LgP;Ljava/lang/String;)V

    .line 661
    const-wide/16 v2, 0x190

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    iget-object v2, p0, LgR;->c:LgP;

    invoke-static {v2}, LgP;->a(LgP;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, LgR;->a:Ljava/lang/String;

    invoke-static {v2, v3}, LgP;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 665
    iget-object v2, p0, LgR;->c:LgP;

    iget-object v3, p0, LgR;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, LgP;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 675
    :goto_1
    return-void

    .line 669
    :cond_1
    iget-object v2, p0, LgR;->b:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 670
    iget-object v2, p0, LgR;->b:Landroid/content/Intent;

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    iget-object v2, p0, LgR;->b:Landroid/content/Intent;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 672
    iget-object v2, p0, LgR;->c:LgP;

    invoke-static {v2}, LgP;->a(LgP;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, LgR;->b:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 674
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
