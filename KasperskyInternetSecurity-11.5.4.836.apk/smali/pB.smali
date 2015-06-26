.class public final LpB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LpA;


# instance fields
.field private volatile a:Lpz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lpz;

    invoke-direct {v0}, Lpz;-><init>()V

    iput-object v0, p0, LpB;->a:Lpz;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;Lps;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, LpB;->a:Lpz;

    invoke-virtual {v0, p1, p2}, Lpz;->a(Ljava/lang/String;Lps;)Lpz;

    move-result-object v0

    iput-object v0, p0, LpB;->a:Lpz;

    .line 156
    return-void
.end method

.method static synthetic a(LpB;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, LpB;->h()V

    return-void
.end method

.method static synthetic a(LpB;Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, LpB;->i()V

    return-void
.end method

.method static synthetic a(LpB;Ljava/lang/String;Lps;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, LpB;->a(Ljava/lang/String;Lps;)V

    return-void
.end method

.method private b(Lps;)Lps;
    .locals 1

    .prologue
    .line 123
    invoke-interface {p1}, Lps;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {p1}, Lps;->p()Lps;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Lps;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LpB;->a(Ljava/lang/String;Lps;)V

    .line 129
    :cond_0
    return-object p1
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v2

    .line 161
    invoke-interface {v2}, Lde;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    sget-object v3, Lpl;->a:Ljava/lang/String;

    invoke-interface {v2}, Lde;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, LpB;->a(Ljava/lang/String;Lps;)V

    .line 164
    invoke-interface {v2}, Lde;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lpb;->a:Ljava/lang/String;

    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v3

    invoke-direct {p0, v0, v3}, LpB;->a(Ljava/lang/String;Lps;)V

    .line 173
    :cond_0
    :goto_1
    sget-object v3, Lpa;->a:Ljava/lang/String;

    invoke-interface {v2}, Lde;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lpa;->a()Lpa;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v3, v0}, LpB;->a(Ljava/lang/String;Lps;)V

    .line 174
    sget-object v0, Lpc;->a:Ljava/lang/String;

    invoke-interface {v2}, Lde;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lpc;->a()Lpc;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v0, v1}, LpB;->a(Ljava/lang/String;Lps;)V

    .line 176
    sget-object v0, Lpo;->a:Ljava/lang/String;

    invoke-static {}, Lpo;->a()Lpo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LpB;->a(Ljava/lang/String;Lps;)V

    .line 177
    return-void

    .line 163
    :cond_2
    invoke-static {}, Lpl;->a()Lpl;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_3
    sget-object v0, Lpl;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, LpB;->a(Ljava/lang/String;Lps;)V

    .line 170
    sget-object v0, Lpb;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, LpB;->a(Ljava/lang/String;Lps;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 173
    goto :goto_2
.end method

.method private i()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, LpB;->h()V

    .line 182
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, LpB;->a:Lpz;

    invoke-virtual {v0}, Lpz;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lps;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, LpB;->a:Lpz;

    invoke-virtual {v0}, Lpz;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    .line 56
    invoke-interface {v0}, Lps;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lps;)Lps;
    .locals 1

    .prologue
    .line 109
    invoke-static {p1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lps;)V

    .line 111
    invoke-interface {p1}, Lps;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-interface {p1}, Lps;->o()Lps;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Lps;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LpB;->a(Ljava/lang/String;Lps;)V

    .line 117
    :cond_0
    return-object p1
.end method

.method public final a(Lrx;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-class v0, LsZ;

    new-instance v1, LpI;

    invoke-direct {v1, p0, v2}, LpI;-><init>(LpB;B)V

    invoke-interface {p1, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 39
    const-class v0, Lme;

    new-instance v1, LpG;

    invoke-direct {v1, p0, v2}, LpG;-><init>(LpB;B)V

    invoke-interface {p1, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 40
    const-class v0, LwC;

    new-instance v1, LpH;

    invoke-direct {v1, p0, v2}, LpH;-><init>(LpB;B)V

    invoke-interface {p1, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 41
    const-class v0, LcT;

    new-instance v1, LpF;

    invoke-direct {v1, p0, v2}, LpF;-><init>(LpB;B)V

    invoke-interface {p1, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 42
    const-class v0, LkJ;

    new-instance v1, LpE;

    invoke-direct {v1, p0, v2}, LpE;-><init>(LpB;B)V

    invoke-interface {p1, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 43
    const-class v0, LjF;

    new-instance v1, LpD;

    invoke-direct {v1, p0, v2}, LpD;-><init>(LpB;B)V

    invoke-interface {p1, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 44
    const-class v0, Lwn;

    new-instance v1, LpJ;

    invoke-direct {v1, p0, v2}, LpJ;-><init>(LpB;B)V

    invoke-interface {p1, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 45
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0}, LpB;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    .line 69
    invoke-interface {v0}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kms/issues/IssueType;->isProblem()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lps;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 74
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final c()Lps;
    .locals 5

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, LpB;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    .line 82
    invoke-interface {v0}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kms/issues/IssueType;->isProblem()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lps;->j()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kms/issues/IssueType;->getSeverity()I

    move-result v3

    invoke-interface {v0}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kms/issues/IssueType;->getSeverity()I

    move-result v4

    if-ge v3, v4, :cond_2

    :cond_0
    :goto_1
    move-object v1, v0

    .line 84
    goto :goto_0

    .line 89
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final d()Lcom/kms/issues/IssueType;
    .locals 5

    .prologue
    .line 94
    invoke-static {}, Lcom/kms/issues/IssueType;->getLeastSevereIssueType()Lcom/kms/issues/IssueType;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, LpB;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    .line 97
    invoke-interface {v0}, Lps;->j()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    invoke-virtual {v1}, Lcom/kms/issues/IssueType;->getSeverity()I

    move-result v3

    invoke-interface {v0}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kms/issues/IssueType;->getSeverity()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 99
    invoke-interface {v0}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    .line 104
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public final e()I
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, LpB;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    .line 137
    invoke-interface {v0}, Lps;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 142
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, LpB;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    .line 148
    invoke-interface {v0}, Lps;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-direct {p0, v0}, LpB;->b(Lps;)Lps;

    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, LpB;->a:Lpz;

    invoke-virtual {v0}, Lpz;->b()V

    .line 412
    return-void
.end method
