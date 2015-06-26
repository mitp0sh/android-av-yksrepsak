.class final LsB;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:LsA;


# direct methods
.method constructor <init>(LsA;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, LsB;->b:LsA;

    iput-object p2, p0, LsB;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    iget-object v0, p0, LsB;->b:LsA;

    iget-object v1, p0, LsB;->a:Landroid/content/Context;

    invoke-static {v0, v1}, LsA;->a(LsA;Landroid/content/Context;)V

    .line 43
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
