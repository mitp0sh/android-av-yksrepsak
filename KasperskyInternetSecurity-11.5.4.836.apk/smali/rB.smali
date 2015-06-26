.class final LrB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lrw;

.field private synthetic b:LrA;


# direct methods
.method constructor <init>(LrA;Lrw;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, LrB;->b:LrA;

    iput-object p2, p0, LrB;->a:Lrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, LrB;->b:LrA;

    invoke-static {v0}, LrA;->a(LrA;)Lrx;

    move-result-object v0

    iget-object v1, p0, LrB;->a:Lrw;

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 41
    return-void
.end method
