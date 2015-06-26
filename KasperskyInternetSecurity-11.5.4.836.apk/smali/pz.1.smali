.class public final Lpz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lpz;->a:Ljava/util/List;

    .line 23
    return-void
.end method

.method private a(Lps;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lpz;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method private b(Ljava/lang/String;Lps;)Lpt;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 188
    .line 190
    invoke-direct {p0}, Lpz;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    .line 191
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    .line 193
    invoke-interface {v0}, Lps;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :goto_1
    move-object v1, v0

    .line 197
    goto :goto_0

    .line 199
    :cond_0
    if-eqz v1, :cond_3

    .line 200
    if-eqz p2, :cond_2

    .line 201
    invoke-direct {p0, p2}, Lpz;->a(Lps;)V

    .line 202
    invoke-static {p2}, Lpt;->c(Lps;)Lpt;

    move-result-object v2

    .line 211
    :cond_1
    :goto_2
    return-object v2

    .line 204
    :cond_2
    invoke-static {v1}, Lpt;->b(Lps;)Lpt;

    move-result-object v2

    goto :goto_2

    .line 207
    :cond_3
    if-eqz p2, :cond_1

    .line 208
    invoke-direct {p0, p2}, Lpz;->a(Lps;)V

    .line 209
    invoke-static {p2}, Lpt;->a(Lps;)Lpt;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private c()Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lpz;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lpz;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpz;->a:Ljava/util/List;

    .line 50
    :cond_0
    iget-object v0, p0, Lpz;->a:Ljava/util/List;

    return-object v0
.end method

.method private d()Lpz;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lpz;

    invoke-direct {v0}, Lpz;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lpz;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lpz;->a:Ljava/util/List;

    .line 56
    return-object v0
.end method

.method private static e()Ljava/util/List;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v1

    invoke-interface {v1}, Ltg;->a()LsW;

    move-result-object v1

    .line 63
    invoke-interface {v1}, LsW;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 64
    invoke-static {}, Lcom/kms/issues/LicenseInfoIssue;->a()Lcom/kms/issues/LicenseInfoIssue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_0
    invoke-static {}, Lmg;->a()Lmg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {}, Lmg;->b()Lps;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    invoke-static {}, LpX;->a()LpX;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    invoke-static {}, LpV;->a()LpV;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_2
    invoke-static {}, LjJ;->j()Lwz;

    move-result-object v1

    invoke-virtual {v1}, Lwz;->a()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    invoke-static {v1}, Lpd;->a(Ljava/lang/String;)Lpd;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_3
    invoke-static {}, Lpo;->a()Lpo;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_4

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_4
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Lde;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    invoke-interface {v1}, Lde;->g()Z

    move-result v2

    if-nez v2, :cond_5

    .line 100
    invoke-static {}, Lpl;->a()Lpl;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_5
    invoke-interface {v1}, Lde;->h()Z

    move-result v2

    if-nez v2, :cond_6

    .line 104
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_6
    invoke-interface {v1}, Lde;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 109
    invoke-static {}, Lpa;->a()Lpa;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_7
    invoke-interface {v1}, Lde;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 113
    invoke-static {}, Lpc;->a()Lpc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_8
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v1

    invoke-interface {v1}, LkM;->a()Z

    move-result v1

    invoke-static {v1}, LoZ;->a(Z)LoZ;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_9

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_9
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->g()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 123
    invoke-static {}, Lqa;->a()Lqa;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_a
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v1

    invoke-virtual {v1}, Lsf;->e()I

    move-result v1

    .line 127
    if-lez v1, :cond_b

    .line 128
    new-instance v2, Lmi;

    invoke-direct {v2, v1}, Lmi;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_b
    invoke-static {}, Lmd;->a()Lps;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_c

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_c
    return-object v0

    .line 65
    :cond_d
    invoke-interface {v1}, LsW;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 66
    invoke-static {}, Lcom/kms/issues/LicenseInfoIssue;->b()Lcom/kms/issues/LicenseInfoIssue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :cond_e
    invoke-static {}, Lcom/kms/issues/LicenseInfoIssue;->g()Lcom/kms/issues/LicenseInfoIssue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lpz;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lps;)Lpz;
    .locals 4

    .prologue
    .line 146
    invoke-direct {p0}, Lpz;->d()Lpz;

    move-result-object v0

    .line 148
    invoke-direct {v0, p1, p2}, Lpz;->b(Ljava/lang/String;Lps;)Lpt;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v2

    invoke-virtual {v1}, Lpt;->a()Lcom/kms/issues/IssueChangeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kms/issues/IssueChangeType;->getIssueEventType()Lcom/kms/issues/IssueEventType;

    move-result-object v3

    invoke-virtual {v1}, Lpt;->b()Lps;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/kms/issues/IssueEventType;->newEvent(Lps;)Lpu;

    move-result-object v1

    invoke-interface {v2, v1}, Lrx;->a(Lrw;)V

    move-object p0, v0

    .line 155
    :cond_0
    return-object p0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lpz;->a:Ljava/util/List;

    .line 218
    invoke-direct {p0}, Lpz;->c()Ljava/util/List;

    .line 219
    return-void
.end method
