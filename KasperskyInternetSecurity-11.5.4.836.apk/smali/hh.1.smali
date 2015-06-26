.class final Lhh;
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Lid;Ljava/lang/String;LhC;)Lhh;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lhh;

    invoke-direct {v0}, Lhh;-><init>()V

    .line 32
    invoke-direct {v0, p0, p1, p2}, Lhh;->b(Lid;Ljava/lang/String;LhC;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :cond_0
    return-object v0
.end method

.method private b(Lid;Ljava/lang/String;LhC;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 39
    .line 40
    new-instance v0, LhF;

    invoke-direct {v0}, LhF;-><init>()V

    iput-object v0, p0, Lhh;->a:LhF;

    .line 42
    invoke-interface {p3}, LhC;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lhh;->a:LhF;

    invoke-interface {p1, v0, v2}, Lid;->a(Ljava/lang/String;Lie;)Lic;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    iget-object v2, p0, Lhh;->a:LhF;

    invoke-virtual {v2, v0}, LhF;->a(Lic;)LhI;

    move-result-object v0

    check-cast v0, LhT;

    iput-object v0, p0, Lhh;->b:LhT;

    .line 46
    iget-object v0, p0, Lhh;->b:LhT;

    const-string v2, "com.kavsdk.antivirus.Quarantine"

    invoke-virtual {v0, v2}, LhT;->a(Ljava/lang/String;)LhJ;

    move-result-object v0

    check-cast v0, LhS;

    iput-object v0, p0, Lhh;->c:LhS;

    .line 47
    iget-object v0, p0, Lhh;->c:LhS;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lhh;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 50
    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 51
    invoke-interface {v0, p2}, LhM;->a(Ljava/lang/String;)V

    .line 52
    invoke-interface {v0}, LhM;->a()LhK;

    move-result-object v0

    .line 53
    invoke-interface {v0}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-interface {v0}, LhK;->b()I

    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private e()J
    .locals 4

    .prologue
    .line 141
    const-wide/16 v0, -0x3

    .line 142
    iget-object v2, p0, Lhh;->c:LhS;

    invoke-virtual {v2}, LhS;->c()LhM;

    move-result-object v2

    .line 144
    const/4 v3, 0x5

    invoke-interface {v2, v3}, LhM;->a(I)V

    .line 145
    invoke-interface {v2}, LhM;->a()LhK;

    move-result-object v2

    .line 146
    invoke-interface {v2}, LhK;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-interface {v2}, LhK;->c()J

    move-result-wide v0

    .line 150
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 72
    const/4 v0, -0x3

    .line 73
    iget-object v1, p0, Lhh;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v1

    .line 75
    const/4 v2, 0x1

    invoke-interface {v1, v2}, LhM;->a(I)V

    .line 76
    invoke-interface {v1, p1}, LhM;->a(Ljava/lang/String;)V

    .line 77
    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    .line 78
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v1}, LhK;->b()I

    move-result v0

    .line 81
    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 97
    const/4 v0, -0x3

    .line 98
    iget-object v1, p0, Lhh;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v1

    .line 100
    const/4 v2, 0x3

    invoke-interface {v1, v2}, LhM;->a(I)V

    .line 101
    invoke-interface {v1, p1}, LhM;->a(Ljava/lang/String;)V

    .line 102
    invoke-interface {v1, p2}, LhM;->a(Ljava/lang/String;)V

    .line 103
    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    .line 104
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-interface {v1}, LhK;->b()I

    move-result v0

    .line 108
    :cond_0
    return v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lhh;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 67
    const/4 v1, 0x2

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 68
    invoke-interface {v0}, LhM;->a()LhK;

    .line 69
    return-void
.end method

.method public final declared-synchronized a(LhH;II)V
    .locals 3

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhh;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lhh;->a:LhF;

    invoke-virtual {v1, p1}, LhF;->a(LhH;)LhJ;

    move-result-object v1

    .line 170
    const/4 v2, 0x7

    invoke-interface {v0, v2}, LhM;->a(I)V

    .line 171
    invoke-interface {v0, v1}, LhM;->a(LhJ;)V

    .line 172
    invoke-interface {v0, p2}, LhM;->a(I)V

    .line 173
    invoke-interface {v0, p3}, LhM;->a(I)V

    .line 174
    invoke-interface {v0}, LhM;->a()LhK;

    .line 175
    invoke-interface {v1}, LhJ;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 113
    const/4 v0, -0x3

    .line 114
    iget-object v1, p0, Lhh;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v1

    .line 116
    const/4 v2, 0x4

    invoke-interface {v1, v2}, LhM;->a(I)V

    .line 117
    invoke-interface {v1, p1}, LhM;->a(Ljava/lang/String;)V

    .line 118
    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    .line 119
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v1}, LhK;->b()I

    move-result v0

    .line 122
    :cond_0
    return v0
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lhh;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v1

    .line 88
    const/16 v2, 0x8

    invoke-interface {v1, v2}, LhM;->a(I)V

    .line 89
    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    .line 90
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1}, LhK;->a()Z

    move-result v0

    .line 93
    :cond_0
    return v0
.end method

.method public final c()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 127
    invoke-direct {p0}, Lhh;->e()J

    move-result-wide v2

    .line 129
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 137
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lhh;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 180
    const/4 v1, 0x6

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 181
    invoke-interface {v0}, LhM;->a()LhK;

    .line 183
    return-void
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lhh;->c:LhS;

    invoke-virtual {v0}, LhS;->a()V

    .line 203
    iget-object v0, p0, Lhh;->b:LhT;

    invoke-virtual {v0}, LhT;->a()V

    .line 204
    iget-object v0, p0, Lhh;->a:LhF;

    invoke-virtual {v0}, LhF;->a()V

    .line 205
    return-void
.end method
