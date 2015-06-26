.class final Lhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhH;


# instance fields
.field private a:Lhg;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LhK;LhL;)V
    .locals 4

    .prologue
    .line 18
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, LbC;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 28
    :cond_0
    iget-object v3, p0, Lhf;->a:Lhg;

    if-eqz v3, :cond_1

    .line 32
    new-instance v3, Lho;

    invoke-direct {v3, v2, v0, v1}, Lho;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lhf;->a:Lhg;

    invoke-interface {v0, v3}, Lhg;->a(LgH;)Z

    .line 35
    :cond_1
    return-void
.end method

.method public final a(Lhg;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lhf;->a:Lhg;

    .line 39
    return-void
.end method
