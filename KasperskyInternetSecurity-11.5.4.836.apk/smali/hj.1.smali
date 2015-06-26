.class final Lhj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LhF;

.field private b:LhT;

.field private c:LhS;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Lid;Ljava/lang/String;LhH;LhC;III)Lhj;
    .locals 8

    .prologue
    .line 30
    new-instance v0, Lhj;

    invoke-direct {v0}, Lhj;-><init>()V

    .line 31
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lhj;->b(Lid;Ljava/lang/String;LhH;LhC;III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :cond_0
    return-object v0
.end method

.method private a(LhH;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lhj;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 130
    const/16 v1, 0x8

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 131
    iget-object v1, p0, Lhj;->a:LhF;

    invoke-virtual {v1, p1}, LhF;->a(LhH;)LhJ;

    move-result-object v1

    .line 132
    invoke-interface {v0, v1}, LhM;->a(LhJ;)V

    .line 133
    invoke-interface {v0}, LhM;->a()LhK;

    .line 134
    invoke-interface {v1}, LhJ;->a()V

    .line 135
    return-void
.end method

.method private b(Lid;Ljava/lang/String;LhH;LhC;III)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 40
    .line 41
    new-instance v0, LhF;

    invoke-direct {v0}, LhF;-><init>()V

    iput-object v0, p0, Lhj;->a:LhF;

    .line 43
    invoke-interface {p4}, LhC;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lhj;->a:LhF;

    invoke-interface {p1, v0, v2}, Lid;->a(Ljava/lang/String;Lie;)Lic;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    iget-object v2, p0, Lhj;->a:LhF;

    invoke-virtual {v2, v0}, LhF;->a(Lic;)LhI;

    move-result-object v0

    check-cast v0, LhT;

    iput-object v0, p0, Lhj;->b:LhT;

    .line 46
    iget-object v0, p0, Lhj;->b:LhT;

    const-string v2, "com.kavsdk.antivirus.RtpMonitor"

    invoke-virtual {v0, v2}, LhT;->a(Ljava/lang/String;)LhJ;

    move-result-object v0

    check-cast v0, LhS;

    iput-object v0, p0, Lhj;->c:LhS;

    .line 47
    iget-object v0, p0, Lhj;->c:LhS;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lhj;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 50
    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 51
    invoke-interface {v0, p2}, LhM;->a(Ljava/lang/String;)V

    .line 53
    invoke-interface {v0}, LhM;->a()LhK;

    move-result-object v0

    .line 54
    invoke-interface {v0}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v0}, LhK;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-direct {p0, p3}, Lhj;->a(LhH;)V

    .line 58
    const/4 v0, 0x1

    .line 62
    :goto_0
    invoke-virtual {p0, p5, p7}, Lhj;->a(II)V

    .line 63
    invoke-virtual {p0, p6}, Lhj;->a(I)V

    move v1, v0

    .line 67
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 71
    const/4 v0, -0x3

    .line 72
    iget-object v1, p0, Lhj;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v1

    .line 73
    const/4 v2, 0x1

    invoke-interface {v1, v2}, LhM;->a(I)V

    .line 74
    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    .line 76
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-interface {v1}, LhK;->b()I

    move-result v0

    .line 80
    :cond_0
    return v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lhj;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 106
    const/4 v1, 0x4

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 107
    invoke-interface {v0, p1}, LhM;->a(I)V

    .line 108
    invoke-interface {v0}, LhM;->a()LhK;

    .line 110
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lhj;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 98
    const/4 v1, 0x3

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 99
    invoke-interface {v0, p1}, LhM;->a(I)V

    .line 100
    invoke-interface {v0, p2}, LhM;->a(I)V

    .line 101
    invoke-interface {v0}, LhM;->a()LhK;

    .line 102
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lhj;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 114
    const/4 v1, 0x5

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 115
    invoke-interface {v0, p1}, LhM;->a(Ljava/lang/String;)V

    .line 116
    invoke-interface {v0}, LhM;->a()LhK;

    .line 118
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lhj;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 85
    const/4 v1, 0x2

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 86
    invoke-interface {v0}, LhM;->a()LhK;

    .line 87
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lhj;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 122
    const/4 v1, 0x6

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 123
    invoke-interface {v0, p1}, LhM;->a(Ljava/lang/String;)V

    .line 124
    invoke-interface {v0}, LhM;->a()LhK;

    .line 126
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lhj;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 92
    const/16 v1, 0xa

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 93
    invoke-interface {v0}, LhM;->a()LhK;

    .line 94
    return-void
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lhj;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v1

    .line 152
    const/4 v2, 0x7

    invoke-interface {v1, v2}, LhM;->a(I)V

    .line 153
    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    .line 155
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {v1}, LhK;->a()Z

    move-result v0

    .line 158
    :cond_0
    return v0
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lhj;->c:LhS;

    invoke-virtual {v0}, LhS;->a()V

    .line 145
    iget-object v0, p0, Lhj;->b:LhT;

    invoke-virtual {v0}, LhT;->a()V

    .line 146
    iget-object v0, p0, Lhj;->a:LhF;

    invoke-virtual {v0}, LhF;->a()V

    .line 147
    return-void
.end method
