.class public LmZ;
.super LrP;
.source "SourceFile"

# interfaces
.implements LmY;


# instance fields
.field private final a:Lna;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "CallBlocker"

    invoke-direct {p0, v0}, LrP;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v0, Lna;

    invoke-direct {v0}, Lna;-><init>()V

    iput-object v0, p0, LmZ;->a:Lna;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()LmV;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, LmZ;->a:Lna;

    return-object v0
.end method

.method public final a(LrT;)V
    .locals 3

    .prologue
    .line 25
    invoke-interface {p1}, LrT;->a()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/kms/call/CallBlockerActivity;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LrQ;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 26
    invoke-super {p0, p1}, LrP;->a(LrT;)V

    .line 27
    return-void
.end method

.method public final a(LrT;LrU;)V
    .locals 2

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, LrP;->a(LrT;LrU;)V

    .line 20
    iget-object v0, p0, LmZ;->a:Lna;

    new-instance v1, Lnb;

    invoke-direct {v1}, Lnb;-><init>()V

    invoke-virtual {v0, v1}, Lna;->a(LmV;)Z

    .line 21
    return-void
.end method

.method public final b(LrT;)V
    .locals 3

    .prologue
    .line 31
    invoke-interface {p1}, LrT;->a()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/kms/call/CallBlockerActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LrQ;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 32
    invoke-super {p0, p1}, LrP;->b(LrT;)V

    .line 33
    return-void
.end method
