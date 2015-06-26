.class public final LvH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LvH;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, LvH;->f:Ljava/lang/Boolean;

    .line 73
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, LvH;->a:Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, LvH;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LvH;->e:Ljava/lang/Boolean;

    .line 65
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LvH;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, LvH;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, LvH;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, LvH;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, LvH;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, LvH;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p0, p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    check-cast p1, LvH;

    .line 97
    iget-object v2, p0, LvH;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    .line 98
    iget-object v2, p1, LvH;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    move v0, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    iget-object v2, p0, LvH;->e:Ljava/lang/Boolean;

    iget-object v3, p1, LvH;->e:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget-object v2, p0, LvH;->c:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 103
    iget-object v2, p1, LvH;->c:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    iget-object v2, p0, LvH;->c:Ljava/lang/String;

    iget-object v3, p1, LvH;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_7
    iget-object v2, p0, LvH;->a:Ljava/lang/Integer;

    if-nez v2, :cond_8

    .line 108
    iget-object v2, p1, LvH;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    move v0, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_8
    iget-object v2, p0, LvH;->a:Ljava/lang/Integer;

    iget-object v3, p1, LvH;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_9
    iget-object v2, p0, LvH;->d:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 113
    iget-object v2, p1, LvH;->d:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_a
    iget-object v2, p0, LvH;->d:Ljava/lang/String;

    iget-object v3, p1, LvH;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 116
    goto :goto_0

    .line 117
    :cond_b
    iget-object v2, p0, LvH;->b:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 118
    iget-object v2, p1, LvH;->b:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_c
    iget-object v2, p0, LvH;->b:Ljava/lang/String;

    iget-object v3, p1, LvH;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 121
    goto :goto_0

    .line 122
    :cond_d
    iget-object v2, p0, LvH;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    .line 123
    iget-object v2, p1, LvH;->f:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move v0, v1

    .line 124
    goto/16 :goto_0

    .line 125
    :cond_e
    iget-object v2, p0, LvH;->f:Ljava/lang/Boolean;

    iget-object v3, p1, LvH;->f:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 126
    goto/16 :goto_0
.end method

.method public final f()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, LvH;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, LvH;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, LvH;->b:Ljava/lang/String;

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LvH;->c:Ljava/lang/String;

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LvH;->d:Ljava/lang/String;

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LvH;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, LvH;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, LvH;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 80
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, LvH;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 81
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, LvH;->a:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, LvH;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 83
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, LvH;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, LvH;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 85
    return v0

    .line 78
    :cond_0
    iget-object v0, p0, LvH;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, LvH;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, p0, LvH;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 82
    :cond_3
    iget-object v0, p0, LvH;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 83
    :cond_4
    iget-object v0, p0, LvH;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 84
    :cond_5
    iget-object v1, p0, LvH;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PpcsData [mPpcsId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LvH;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTrialCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LvH;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBuyLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LvH;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRenewLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LvH;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoTrialActivation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LvH;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUcpReadiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LvH;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
