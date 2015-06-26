.class public final LfX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x2

    iput v0, p0, LfX;->a:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LfX;->d:Ljava/util/List;

    .line 48
    iput-boolean p1, p0, LfX;->b:Z

    .line 49
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, LfX;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 103
    iget v0, p0, LfX;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, LfX;->a:I

    if-lt v0, v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, LfX;->d:Ljava/util/List;

    iget v1, p0, LfX;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb;

    .line 108
    iget v1, p0, LfX;->a:I

    .line 109
    if-eqz v0, :cond_0

    move v3, v1

    move-object v1, v0

    move v0, v3

    .line 110
    :goto_1
    invoke-virtual {v1}, Lgb;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 111
    add-int/lit8 v1, v0, 0x1

    .line 114
    if-ge v1, v2, :cond_2

    if-gez v1, :cond_3

    .line 118
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, LfX;->a:I

    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, LfX;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb;

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_1

    .line 124
    :cond_4
    iput v0, p0, LfX;->a:I

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-boolean v0, p0, LfX;->b:Z

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsz;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 86
    :goto_0
    iget-object v0, p0, LfX;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 87
    iget-object v0, p0, LfX;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb;

    .line 88
    invoke-static {v0}, Lgb;->a(Lgb;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 89
    iput v1, p0, LfX;->a:I

    .line 97
    :cond_0
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LfX;->a(Z)V

    .line 98
    return-void

    .line 86
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_2
    iput v1, p0, LfX;->a:I

    goto :goto_1
.end method

.method private f()I
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, LfX;->d:Ljava/util/List;

    iget v1, p0, LfX;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb;

    invoke-static {v0}, Lgb;->a(Lgb;)I

    move-result v0

    .line 180
    iget-boolean v1, p0, LfX;->b:Z

    if-eqz v1, :cond_0

    .line 181
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v1

    .line 182
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsz;->a(ILjava/lang/Object;)Lss;

    .line 183
    invoke-virtual {v1}, Lsz;->g_()V

    .line 185
    :cond_0
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, LfX;->c:I

    return v0
.end method

.method public final a(I)I
    .locals 4

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, LfX;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb;

    .line 131
    invoke-static {v0}, Lgb;->b(Lgb;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 134
    :cond_1
    invoke-static {v0}, Lgb;->a(Lgb;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 138
    :cond_2
    return v1
.end method

.method public final a(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v1}, LfX;->a(IZI)V

    .line 61
    return-void
.end method

.method public final a(IZI)V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, LfY;->a()LfY;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LfX;->a(IZILga;)V

    .line 65
    return-void
.end method

.method public final a(IZILga;)V
    .locals 2

    .prologue
    .line 72
    if-eqz p2, :cond_0

    .line 73
    iget v0, p0, LfX;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LfX;->c:I

    .line 75
    :cond_0
    iget-object v0, p0, LfX;->d:Ljava/util/List;

    new-instance v1, Lgb;

    invoke-direct {v1, p1, p2, p3, p4}, Lgb;-><init>(IZILga;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public final a(IZIZ)V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    new-instance v1, LfZ;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2}, LfZ;-><init>(ZB)V

    invoke-virtual {p0, p1, v0, p3, v1}, LfX;->a(IZILga;)V

    .line 69
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 142
    iget v1, p0, LfX;->a:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 143
    iget-object v1, p0, LfX;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0}, LfX;->e()V

    .line 154
    :goto_0
    iget v1, p0, LfX;->a:I

    if-eq v1, v0, :cond_0

    iget v1, p0, LfX;->a:I

    iget-object v2, p0, LfX;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 158
    :cond_0
    :goto_1
    return v0

    .line 150
    :cond_1
    iget v1, p0, LfX;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LfX;->a:I

    .line 151
    const/4 v1, 0x1

    invoke-direct {p0, v1}, LfX;->a(Z)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0}, LfX;->f()I

    move-result v0

    goto :goto_1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, LfX;->f()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 189
    iget v0, p0, LfX;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, LfX;->a:I

    iget-object v1, p0, LfX;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v0, p0, LfX;->d:Ljava/util/List;

    iget v1, p0, LfX;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb;

    invoke-static {v0}, Lgb;->c(Lgb;)I

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
