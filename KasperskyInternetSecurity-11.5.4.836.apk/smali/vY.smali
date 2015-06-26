.class final LvY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbR;


# instance fields
.field private synthetic a:LvW;


# direct methods
.method constructor <init>(LvW;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, LvY;->a:LvW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LbS;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, LvY;->a:LvW;

    invoke-virtual {v0}, LvW;->i()Lsp;

    move-result-object v0

    .line 48
    iget-object v0, v0, Lsp;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 50
    iget-object v1, p0, LvY;->a:LvW;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, LvW;->a(LbS;Ljava/lang/Object;)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
