.class final LmO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LmM;


# direct methods
.method constructor <init>(LmM;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, LmO;->a:LmM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, LmO;->a:LmM;

    invoke-static {v0}, LmM;->a(LmM;)Lgz;

    move-result-object v0

    invoke-interface {v0}, Lgz;->d()V

    .line 215
    iget-object v0, p0, LmO;->a:LmM;

    invoke-static {v0}, LmM;->b(LmM;)LmT;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/gui/QuarantineOperation;->QuarantineRemoveAll:Lcom/kms/antivirus/gui/QuarantineOperation;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, LmT;->a(Lcom/kms/antivirus/gui/QuarantineOperation;Z)V

    .line 216
    iget-object v0, p0, LmO;->a:LmM;

    invoke-static {v0}, LmM;->c(LmM;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, LmO;->a:LmM;

    invoke-static {v0}, LmM;->c(LmM;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, LmO;->a:LmM;

    invoke-static {v1}, LmM;->d(LmM;)LmQ;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 219
    :cond_0
    return-void
.end method
