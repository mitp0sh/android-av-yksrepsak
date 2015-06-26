.class public final Lqo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:I

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lqo;->a:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lqo;->d:I

    .line 41
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, Lqo;->a:J

    .line 23
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lqo;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lqo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lqo;->f:I

    .line 53
    return-void
.end method

.method public final b(J)V
    .locals 0

    .prologue
    .line 46
    iput-wide p1, p0, Lqo;->e:J

    .line 47
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lqo;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lqo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lqo;->h:I

    .line 65
    return-void
.end method

.method public final c(J)V
    .locals 0

    .prologue
    .line 58
    iput-wide p1, p0, Lqo;->g:J

    .line 59
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lqo;->i:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lqo;->d:I

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lqo;->e:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    check-cast p1, Lqo;

    .line 102
    iget-object v2, p0, Lqo;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 103
    iget-object v2, p1, Lqo;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iget-object v2, p0, Lqo;->c:Ljava/lang/String;

    iget-object v3, p1, Lqo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    iget-object v2, p0, Lqo;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 108
    iget-object v2, p1, Lqo;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_6
    iget-object v2, p0, Lqo;->b:Ljava/lang/String;

    iget-object v3, p1, Lqo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_7
    iget v2, p0, Lqo;->d:I

    iget v3, p1, Lqo;->d:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 113
    goto :goto_0

    .line 114
    :cond_8
    iget-wide v2, p0, Lqo;->e:J

    iget-wide v4, p1, Lqo;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    move v0, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_9
    iget-wide v2, p0, Lqo;->g:J

    iget-wide v4, p1, Lqo;->g:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    move v0, v1

    .line 117
    goto :goto_0

    .line 118
    :cond_a
    iget v2, p0, Lqo;->h:I

    iget v3, p1, Lqo;->h:I

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_b
    iget-object v2, p0, Lqo;->i:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 121
    iget-object v2, p1, Lqo;->i:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_c
    iget-object v2, p0, Lqo;->i:Ljava/lang/String;

    iget-object v3, p1, Lqo;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 124
    goto :goto_0

    .line 125
    :cond_d
    iget v2, p0, Lqo;->f:I

    iget v3, p1, Lqo;->f:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lqo;->f:I

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lqo;->g:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lqo;->h:I

    return v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lqo;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 77
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lqo;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lqo;->d:I

    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lqo;->e:J

    iget-wide v4, p0, Lqo;->e:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lqo;->g:J

    iget-wide v4, p0, Lqo;->g:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lqo;->h:I

    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lqo;->i:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lqo;->f:I

    add-int/2addr v0, v1

    .line 84
    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Lqo;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lqo;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 82
    :cond_2
    iget-object v1, p0, Lqo;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lqo;->i:Ljava/lang/String;

    return-object v0
.end method
