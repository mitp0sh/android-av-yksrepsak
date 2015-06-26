.class public final Lpw;
.super LbW;
.source "SourceFile"

# interfaces
.implements Lrz;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lpw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpw;->a:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    sput-object v0, Lpw;->b:Ljava/util/Map;

    sget-object v1, Lpp;->a:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lpw;->b:Ljava/util/Map;

    sget-object v1, LpY;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lpw;->b:Ljava/util/Map;

    sget-object v1, Lmg;->a:Ljava/lang/String;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lpw;->b:Ljava/util/Map;

    sget-object v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->a:Ljava/lang/String;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lpw;->b:Ljava/util/Map;

    sget-object v1, Lcom/kms/issues/LicenseInfoIssue;->a:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LbW;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 58
    return-void
.end method

.method static synthetic a(Lps;)I
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lpw;->d(Lps;)I

    move-result v0

    return v0
.end method

.method private b(Lps;)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lpw;->c(Lps;)I

    move-result v0

    .line 147
    if-ltz v0, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lpw;->a(I)V

    .line 151
    :cond_0
    return-void
.end method

.method private c(Lps;)I
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lpw;->e()Ljava/util/List;

    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 156
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 157
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv;

    invoke-interface {v0}, Lpv;->i()Lps;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 163
    :goto_1
    return v0

    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d(Lps;)I
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lpw;->b:Ljava/util/Map;

    invoke-interface {p0}, Lps;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 230
    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 233
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lpw;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, LbW;->a(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lpw;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv;

    .line 73
    invoke-interface {v0, p1}, Lpv;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public final a(Lpu;)V
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p1}, Lpu;->a()Lps;

    move-result-object v2

    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0}, Lpw;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv;

    .line 102
    invoke-interface {v0, p1}, Lpv;->a(Lrw;)V

    .line 103
    sget-object v4, Lpp;->a:Ljava/lang/String;

    invoke-interface {v0}, Lpv;->i()Lps;

    move-result-object v5

    invoke-interface {v5}, Lps;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    move-object v1, v0

    .line 104
    goto :goto_0

    .line 108
    :cond_0
    sget-object v3, Lpx;->a:[I

    invoke-virtual {p1}, Lpu;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/issues/IssueEventType;

    invoke-virtual {v0}, Lcom/kms/issues/IssueEventType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_1
    :goto_2
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v0

    invoke-interface {v0}, LpA;->e()I

    move-result v0

    .line 131
    if-lez v0, :cond_4

    .line 132
    if-nez v1, :cond_2

    .line 133
    new-instance v1, Lpp;

    invoke-direct {v1, v0}, Lpp;-><init>(I)V

    invoke-virtual {p0, v1}, Lpw;->a(Ljava/lang/Object;)V

    .line 141
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lpw;->notifyDataSetChanged()V

    .line 142
    return-void

    .line 110
    :pswitch_0
    invoke-interface {v2}, Lps;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-direct {p0, v2}, Lpw;->b(Lps;)V

    goto :goto_2

    .line 114
    :cond_3
    invoke-direct {p0, v2}, Lpw;->c(Lps;)I

    move-result v0

    .line 115
    if-gez v0, :cond_1

    .line 116
    invoke-interface {v2}, Lps;->n()Lpv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpw;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 121
    :pswitch_1
    invoke-direct {p0, v2}, Lpw;->b(Lps;)V

    goto :goto_2

    .line 124
    :pswitch_2
    invoke-interface {v2}, Lps;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-interface {v2}, Lps;->n()Lpv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpw;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 136
    :cond_4
    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {p0, v1}, Lpw;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lpu;

    invoke-virtual {p0, p1}, Lpw;->a(Lpu;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1}, LbW;->b(Landroid/os/Bundle;)V

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0}, Lpw;->f()Ljava/util/List;

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

    check-cast v0, Lpv;

    .line 83
    invoke-interface {v0, p1}, Lpv;->b(Landroid/os/Bundle;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_0
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lpw;->notifyDataSetChanged()V

    .line 89
    :cond_1
    return-void
.end method

.method protected final c()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lpy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpy;-><init>(B)V

    return-object v0
.end method
