.class final LkP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LkU;


# instance fields
.field private synthetic a:LkO;


# direct methods
.method constructor <init>(LkO;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, LkP;->a:LkO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(I)V
    .locals 4

    .prologue
    .line 24
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, LjD;

    new-instance v2, LkQ;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LkQ;-><init>(B)V

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 25
    return-void
.end method
