.class final LmN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:LmM;


# direct methods
.method constructor <init>(LmM;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, LmN;->b:LmM;

    iput-object p2, p0, LmN;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, LmN;->b:LmM;

    invoke-static {v0}, LmM;->a(LmM;)Lgz;

    move-result-object v0

    iget-object v1, p0, LmN;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lgz;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/kavsdk/antivirus/QuarantineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/4 v0, 0x1

    .line 201
    :goto_0
    iget-object v1, p0, LmN;->b:LmM;

    invoke-static {v1}, LmM;->b(LmM;)LmT;

    move-result-object v1

    sget-object v2, Lcom/kms/antivirus/gui/QuarantineOperation;->QuarantineRemove:Lcom/kms/antivirus/gui/QuarantineOperation;

    invoke-interface {v1, v2, v0}, LmT;->a(Lcom/kms/antivirus/gui/QuarantineOperation;Z)V

    .line 202
    iget-object v0, p0, LmN;->b:LmM;

    invoke-static {v0}, LmM;->c(LmM;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, LmN;->b:LmM;

    invoke-static {v0}, LmM;->c(LmM;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, LmN;->b:LmM;

    invoke-static {v1}, LmM;->d(LmM;)LmQ;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 205
    :cond_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
