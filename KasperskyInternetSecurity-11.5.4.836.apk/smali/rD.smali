.class final LrD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lrw;

.field private synthetic b:LrC;


# direct methods
.method constructor <init>(LrC;Lrw;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, LrD;->b:LrC;

    iput-object p2, p0, LrD;->a:Lrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, LrD;->b:LrC;

    invoke-static {v0}, LrC;->a(LrC;)Lrz;

    move-result-object v0

    iget-object v1, p0, LrD;->a:Lrw;

    invoke-interface {v0, v1}, Lrz;->a(Lrw;)V

    .line 47
    return-void
.end method
