.class public final LgJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LgK;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, LgK;

    invoke-direct {v0, p1}, LgK;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LgJ;->a:LgK;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(LgL;LgM;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, LgJ;->a:LgK;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LgK;->a(LgL;LgM;)V

    .line 45
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, LgJ;->a:LgK;

    invoke-virtual {v0, p1}, LgK;->a(Z)V

    .line 56
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, LgJ;->a:LgK;

    invoke-virtual {v0, p1}, LgK;->b(Z)V

    .line 60
    return-void
.end method
