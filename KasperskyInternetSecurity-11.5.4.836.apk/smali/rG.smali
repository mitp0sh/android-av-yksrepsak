.class final LrG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LrF;


# direct methods
.method constructor <init>(LrF;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, LrG;->a:LrF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, LrG;->a:LrF;

    invoke-static {v0}, LrF;->a(LrF;)LrJ;

    move-result-object v0

    invoke-virtual {v0}, LrJ;->a()V

    .line 206
    iget-object v0, p0, LrG;->a:LrF;

    invoke-static {v0}, LrF;->b(LrF;)LrI;

    move-result-object v0

    invoke-virtual {v0}, LrI;->a()V

    .line 207
    return-void
.end method
