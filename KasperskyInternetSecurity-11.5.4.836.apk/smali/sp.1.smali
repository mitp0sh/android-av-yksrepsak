.class public final Lsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lsp;->b:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lsp;->c:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lsp;->c:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public final a(Lsu;)V
    .locals 4

    .prologue
    .line 17
    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 18
    new-instance v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v0}, Lsu;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lsp;->a:Ljava/lang/Object;

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 23
    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v2, v0}, Lsu;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lsp;->a:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 28
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v2, v0}, Lsu;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, Lsp;->a:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 32
    iget-object v1, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lsu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsp;->a:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_4
    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p1, v1, v0}, Lsu;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lsp;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lsu;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 43
    iget-object v1, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Lsu;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 47
    iget-object v1, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0}, Lsu;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 52
    iget-object v1, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v1, v0}, Lsu;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 56
    iget-object v1, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lsu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_4
    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lsp;->b:Ljava/lang/String;

    iget-object v0, p0, Lsp;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p1, v1, v0}, Lsu;->b(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0
.end method
