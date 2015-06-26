.class final LmR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/List;

.field private synthetic c:LmQ;


# direct methods
.method constructor <init>(LmQ;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, LmR;->c:LmQ;

    iput p2, p0, LmR;->a:I

    iput-object p3, p0, LmR;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, LmR;->c:LmQ;

    iget-object v0, v0, LmQ;->a:LmM;

    iget v1, p0, LmR;->a:I

    invoke-static {v0, v1}, LmM;->a(LmM;I)I

    .line 337
    iget-object v0, p0, LmR;->c:LmQ;

    iget-object v0, v0, LmQ;->a:LmM;

    iget-object v1, p0, LmR;->b:Ljava/util/List;

    invoke-static {v0, v1}, LmM;->a(LmM;Ljava/util/List;)Ljava/util/List;

    .line 339
    :try_start_0
    iget-object v0, p0, LmR;->c:LmQ;

    iget-object v0, v0, LmQ;->a:LmM;

    invoke-static {v0}, LmM;->f(LmM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object v1, p0, LmR;->c:LmQ;

    iget-object v1, v1, LmQ;->a:LmM;

    invoke-static {v1}, LmM;->a(LmM;)Lgz;

    move-result-object v1

    invoke-interface {v1}, Lgz;->e()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Lcom/kavsdk/antivirus/QuarantineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    iget-object v0, p0, LmR;->c:LmQ;

    iget-object v0, v0, LmQ;->a:LmM;

    invoke-static {v0}, LmM;->b(LmM;)LmT;

    move-result-object v0

    invoke-interface {v0}, LmT;->c()V

    .line 345
    iget-object v0, p0, LmR;->c:LmQ;

    iget-object v0, v0, LmQ;->a:LmM;

    invoke-virtual {v0}, LmM;->notifyDataSetChanged()V

    .line 346
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
