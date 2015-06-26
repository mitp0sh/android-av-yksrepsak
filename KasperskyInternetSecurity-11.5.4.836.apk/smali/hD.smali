.class public final LhD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:LhD;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LhD;->a:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method public constructor <init>(LhD;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LhD;->a:Ljava/util/HashMap;

    .line 28
    iput-object p1, p0, LhD;->b:LhD;

    .line 29
    return-void
.end method

.method private e(LhP;)LhE;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, LhD;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhE;

    return-object v0
.end method


# virtual methods
.method public final a(LhP;)LhH;
    .locals 2

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, LhD;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhE;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    iget-object v0, v0, LhE;->b:LhH;

    .line 37
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, LhD;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    return-void
.end method

.method public final a(LhP;LhH;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, LhD;->e(LhP;)LhE;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    iget v1, v0, LhE;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LhE;->a:I

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, LhD;->b:LhD;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, LhD;->b:LhD;

    invoke-virtual {v0, p1}, LhD;->a(LhP;)LhH;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, LhE;

    invoke-direct {v1, p0, v0}, LhE;-><init>(LhD;LhH;)V

    .line 54
    iget-object v0, p0, LhD;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, LhE;

    invoke-direct {v0, p0, p2}, LhE;-><init>(LhD;LhH;)V

    .line 64
    iget-object v1, p0, LhD;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(LhP;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, LhD;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public final c(LhP;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LhD;->a(LhP;LhH;)V

    .line 79
    return-void
.end method

.method public final d(LhP;)Z
    .locals 3

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, LhD;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhE;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget v2, v0, LhE;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, LhE;->a:I

    if-nez v2, :cond_0

    .line 86
    iget-object v0, p0, LhD;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
