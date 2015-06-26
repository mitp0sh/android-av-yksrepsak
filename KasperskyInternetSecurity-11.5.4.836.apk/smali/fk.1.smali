.class final Lfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfj;


# direct methods
.method constructor <init>(Lfj;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lfk;->a:Lfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lfk;->a:Lfj;

    invoke-virtual {v0}, Lfj;->v()V

    .line 345
    iget-object v0, p0, Lfk;->a:Lfj;

    invoke-virtual {v0}, Lfj;->k()V

    .line 346
    return-void
.end method
