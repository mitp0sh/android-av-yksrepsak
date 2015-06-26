.class public abstract LhX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhM;


# instance fields
.field protected a:LhR;

.field protected b:LhT;


# direct methods
.method public constructor <init>(LhT;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, LhX;->b:LhT;

    .line 15
    new-instance v0, LhR;

    invoke-direct {v0, p1}, LhR;-><init>(LhT;)V

    iput-object v0, p0, LhX;->a:LhR;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LhX;->a:LhR;

    invoke-virtual {v0, p1}, LhR;->a(I)V

    .line 45
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, LhX;->a:LhR;

    invoke-virtual {v0, p1, p2}, LhR;->a(J)V

    .line 51
    return-void
.end method

.method public final a(LhJ;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, LhX;->a:LhR;

    invoke-virtual {v0, p1}, LhR;->a(LhJ;)V

    .line 75
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, LhX;->a:LhR;

    invoke-virtual {v0, p1}, LhR;->a(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public final a(Ljava/util/Vector;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, LhX;->a:LhR;

    invoke-virtual {v0, p1}, LhR;->a(Ljava/util/Vector;)V

    .line 92
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, LhX;->a:LhR;

    invoke-virtual {v0, p1}, LhR;->a(Z)V

    .line 22
    return-void
.end method
