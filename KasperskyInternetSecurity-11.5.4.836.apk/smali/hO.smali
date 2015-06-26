.class public final LhO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhJ;


# instance fields
.field private a:LhP;

.field private b:LhH;

.field private c:LhF;


# direct methods
.method public constructor <init>(LhF;ILhH;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, LhP;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, LhP;-><init>(IZ)V

    iput-object v0, p0, LhO;->a:LhP;

    .line 16
    iput-object p3, p0, LhO;->b:LhH;

    .line 17
    iput-object p1, p0, LhO;->c:LhF;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, LhO;->c:LhF;

    iget-object v1, p0, LhO;->a:LhP;

    invoke-virtual {v0, v1}, LhF;->a(LhP;)V

    .line 26
    iget-object v0, p0, LhO;->c:LhF;

    invoke-virtual {v0, p0}, LhF;->a(LhJ;)V

    .line 27
    return-void
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
