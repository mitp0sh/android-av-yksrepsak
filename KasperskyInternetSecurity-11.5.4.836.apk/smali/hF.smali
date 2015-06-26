.class public final LhF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhI;
.implements Lie;


# instance fields
.field private a:LhN;

.field private b:LhD;

.field private c:Ljava/util/HashMap;

.field private d:Ljava/util/HashMap;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, LhN;

    invoke-direct {v0}, LhN;-><init>()V

    iput-object v0, p0, LhF;->a:LhN;

    .line 16
    new-instance v0, LhD;

    invoke-direct {v0}, LhD;-><init>()V

    iput-object v0, p0, LhF;->b:LhD;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LhF;->c:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LhF;->d:Ljava/util/HashMap;

    .line 23
    const/4 v0, 0x1

    iput v0, p0, LhF;->e:I

    .line 25
    return-void
.end method

.method private declared-synchronized b()I
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget v0, p0, LhF;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LhF;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lic;)LhI;
    .locals 3

    .prologue
    .line 73
    new-instance v0, LhT;

    iget-object v1, p0, LhF;->b:LhD;

    iget-object v2, p0, LhF;->a:LhN;

    invoke-direct {v0, p1, v1, p0, v2}, LhT;-><init>(Lic;LhD;LhF;LhN;)V

    .line 74
    iget-object v1, p0, LhF;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LhG;

    invoke-direct {v2, p0, p1, v0}, LhG;-><init>(LhF;Lic;LhT;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 81
    iget-object v2, p0, LhF;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object v0
.end method

.method public final a(LhH;)LhJ;
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, LhF;->b()I

    move-result v0

    .line 65
    new-instance v1, LhP;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LhP;-><init>(IZ)V

    .line 66
    new-instance v2, LhO;

    invoke-direct {v2, p0, v0, p1}, LhO;-><init>(LhF;ILhH;)V

    .line 67
    iget-object v0, p0, LhF;->a:LhN;

    invoke-virtual {v0, v2, v1}, LhN;->a(LhJ;LhP;)V

    .line 68
    iget-object v0, p0, LhF;->b:LhD;

    invoke-virtual {v0, v1, p1}, LhD;->a(LhP;LhH;)V

    .line 69
    return-object v2
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, LhF;->b:LhD;

    invoke-virtual {v0}, LhD;->a()V

    .line 162
    iget-object v0, p0, LhF;->a:LhN;

    invoke-virtual {v0}, LhN;->a()V

    .line 163
    iget-object v0, p0, LhF;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    .line 165
    :try_start_0
    invoke-interface {v0}, Lic;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_1
    iget-object v2, p0, LhF;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v2, p0, LhF;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhT;

    .line 172
    invoke-virtual {v0}, LhT;->a()V

    goto :goto_0

    .line 174
    :cond_0
    iput-object v3, p0, LhF;->c:Ljava/util/HashMap;

    .line 175
    iput-object v3, p0, LhF;->d:Ljava/util/HashMap;

    .line 176
    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final a(LhJ;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, LhF;->a:LhN;

    invoke-virtual {v0, p1}, LhN;->b(LhJ;)V

    .line 184
    return-void
.end method

.method public final a(LhP;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, LhF;->b:LhD;

    invoke-virtual {v0, p1}, LhD;->b(LhP;)V

    .line 180
    return-void
.end method

.method public final b(LhJ;)LhP;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, LhF;->a:LhN;

    invoke-virtual {v0, p1}, LhN;->a(LhJ;)LhP;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lic;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, LhF;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhT;

    .line 145
    invoke-virtual {v0}, LhT;->b()V

    .line 146
    iget-object v0, p0, LhF;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, LhF;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lhs;->a()Lhs;

    move-result-object v0

    invoke-virtual {v0}, Lhs;->c()V

    .line 150
    return-void
.end method
