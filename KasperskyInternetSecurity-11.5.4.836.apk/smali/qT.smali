.class public final LqT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, LqT;->a:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, LqT;->e:I

    .line 40
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 21
    iput-wide p1, p0, LqT;->a:J

    .line 22
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, LqT;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, LqT;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, LqT;->f:I

    .line 46
    return-void
.end method

.method public final b(J)V
    .locals 0

    .prologue
    .line 33
    iput-wide p1, p0, LqT;->c:J

    .line 34
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, LqT;->h:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, LqT;->c:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, LqT;->g:I

    .line 52
    return-void
.end method

.method public final c(J)V
    .locals 0

    .prologue
    .line 87
    iput-wide p1, p0, LqT;->d:J

    .line 88
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, LqT;->i:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, LqT;->e:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, LqT;->j:I

    .line 70
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, LqT;->l:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LqT;->f:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, LqT;->k:I

    .line 76
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-ne p0, p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    check-cast p1, LqT;

    .line 118
    iget-object v2, p0, LqT;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 119
    iget-object v2, p1, LqT;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    iget-object v2, p0, LqT;->b:Ljava/lang/String;

    iget-object v3, p1, LqT;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    iget-object v2, p0, LqT;->h:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 124
    iget-object v2, p1, LqT;->h:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 125
    goto :goto_0

    .line 126
    :cond_6
    iget-object v2, p0, LqT;->h:Ljava/lang/String;

    iget-object v3, p1, LqT;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 127
    goto :goto_0

    .line 128
    :cond_7
    iget-wide v2, p0, LqT;->d:J

    iget-wide v4, p1, LqT;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    move v0, v1

    .line 129
    goto :goto_0

    .line 130
    :cond_8
    iget-wide v2, p0, LqT;->c:J

    iget-wide v4, p1, LqT;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    move v0, v1

    .line 131
    goto :goto_0

    .line 132
    :cond_9
    iget v2, p0, LqT;->j:I

    iget v3, p1, LqT;->j:I

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 133
    goto :goto_0

    .line 134
    :cond_a
    iget v2, p0, LqT;->e:I

    iget v3, p1, LqT;->e:I

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_b
    iget v2, p0, LqT;->k:I

    iget v3, p1, LqT;->k:I

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 137
    goto :goto_0

    .line 138
    :cond_c
    iget-object v2, p0, LqT;->l:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 139
    iget-object v2, p1, LqT;->l:Ljava/lang/String;

    if-eqz v2, :cond_e

    move v0, v1

    .line 140
    goto :goto_0

    .line 141
    :cond_d
    iget-object v2, p0, LqT;->l:Ljava/lang/String;

    iget-object v3, p1, LqT;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 142
    goto :goto_0

    .line 143
    :cond_e
    iget v2, p0, LqT;->g:I

    iget v3, p1, LqT;->g:I

    if-eq v2, v3, :cond_f

    move v0, v1

    .line 144
    goto/16 :goto_0

    .line 145
    :cond_f
    iget-object v2, p0, LqT;->i:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 146
    iget-object v2, p1, LqT;->i:Ljava/lang/String;

    if-eqz v2, :cond_11

    move v0, v1

    .line 147
    goto/16 :goto_0

    .line 148
    :cond_10
    iget-object v2, p0, LqT;->i:Ljava/lang/String;

    iget-object v3, p1, LqT;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    .line 149
    goto/16 :goto_0

    .line 150
    :cond_11
    iget-wide v2, p0, LqT;->a:J

    iget-wide v4, p1, LqT;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    move v0, v1

    .line 151
    goto/16 :goto_0

    .line 152
    :cond_12
    iget v2, p0, LqT;->f:I

    iget v3, p1, LqT;->f:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 153
    goto/16 :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, LqT;->g:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, LqT;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, LqT;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, LqT;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 95
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, LqT;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, LqT;->d:J

    iget-wide v4, p0, LqT;->d:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, LqT;->c:J

    iget-wide v4, p0, LqT;->c:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 98
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, LqT;->j:I

    add-int/2addr v0, v2

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, LqT;->e:I

    add-int/2addr v0, v2

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, LqT;->k:I

    add-int/2addr v0, v2

    .line 101
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, LqT;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, LqT;->g:I

    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, LqT;->i:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LqT;->a:J

    iget-wide v3, p0, LqT;->a:J

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LqT;->f:I

    add-int/2addr v0, v1

    .line 106
    return v0

    .line 93
    :cond_0
    iget-object v0, p0, LqT;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, LqT;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, LqT;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 103
    :cond_3
    iget-object v1, p0, LqT;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, LqT;->j:I

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, LqT;->k:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, LqT;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final l()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, LqT;->d:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsRecord [threadId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, LqT;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LqT;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", personId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, LqT;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, LqT;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LqT;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LqT;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LqT;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LqT;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LqT;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LqT;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replyPathPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LqT;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LqT;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
