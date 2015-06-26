.class public final LhS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhJ;


# instance fields
.field private a:LhP;

.field private b:LhT;


# direct methods
.method public constructor <init>(LhT;LhP;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, LhS;->b:LhT;

    .line 18
    iput-object p2, p0, LhS;->a:LhP;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    iget-object v0, p0, LhS;->b:LhT;

    new-instance v1, LhP;

    invoke-direct {v1, v2, v2}, LhP;-><init>(IZ)V

    invoke-virtual {v0, v1}, LhT;->a(LhP;)LhX;

    move-result-object v0

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LhX;->a(I)V

    .line 25
    invoke-virtual {v0, p0}, LhX;->a(LhJ;)V

    .line 26
    invoke-virtual {v0}, LhX;->b()V

    .line 28
    return-void
.end method

.method public final b()LhP;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LhS;->a:LhP;

    return-object v0
.end method

.method public final c()LhM;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, LhS;->b:LhT;

    iget-object v1, p0, LhS;->a:LhP;

    invoke-virtual {v0, v1}, LhT;->a(LhP;)LhX;

    move-result-object v0

    return-object v0
.end method
