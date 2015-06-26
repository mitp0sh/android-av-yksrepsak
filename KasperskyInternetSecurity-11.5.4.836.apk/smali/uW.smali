.class final LuW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lsm;

.field private synthetic b:LuV;


# direct methods
.method constructor <init>(LuV;Lsm;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, LuW;->b:LuV;

    iput-object p2, p0, LuW;->a:Lsm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, LuW;->b:LuV;

    invoke-static {v0}, LuV;->a(LuV;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 74
    iget-object v0, p0, LuW;->b:LuV;

    iget-object v1, p0, LuW;->a:Lsm;

    invoke-static {v0, v1}, LuV;->a(LuV;Lsm;)V

    .line 75
    iget-object v0, p0, LuW;->b:LuV;

    invoke-static {v0}, LuV;->a(LuV;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 76
    return-void
.end method
