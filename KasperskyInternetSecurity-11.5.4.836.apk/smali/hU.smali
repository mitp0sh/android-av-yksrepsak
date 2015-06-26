.class public final LhU;
.super LhN;
.source "SourceFile"


# instance fields
.field private a:LhN;


# direct methods
.method public constructor <init>(LhN;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, LhN;-><init>()V

    .line 7
    iput-object p1, p0, LhU;->a:LhN;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(LhP;)LhJ;
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p1, LhP;->b:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, LhU;->a:LhN;

    invoke-virtual {v0, p1}, LhN;->a(LhP;)LhJ;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, LhN;->a(LhP;)LhJ;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(LhJ;)LhP;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, LhN;->a(LhJ;)LhP;

    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, LhU;->a:LhN;

    invoke-virtual {v0, p1}, LhN;->a(LhJ;)LhP;

    move-result-object v0

    .line 18
    :cond_0
    return-object v0
.end method
