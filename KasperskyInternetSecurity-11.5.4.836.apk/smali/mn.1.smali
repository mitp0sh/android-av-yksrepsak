.class public final Lmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/kms/antivirus/AntivirusStateType;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:Ljava/util/List;

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000000000000000L

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    iput-object v0, p0, Lmn;->a:Lcom/kms/antivirus/AntivirusStateType;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lmn;->b:I

    .line 46
    iput-wide v1, p0, Lmn;->f:J

    .line 49
    iput-wide v1, p0, Lmn;->g:J

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmn;->h:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lmn;->i:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/AntivirusStateType;)V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000000000000000L

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    iput-object v0, p0, Lmn;->a:Lcom/kms/antivirus/AntivirusStateType;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lmn;->b:I

    .line 46
    iput-wide v1, p0, Lmn;->f:J

    .line 49
    iput-wide v1, p0, Lmn;->g:J

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmn;->h:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lmn;->i:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lmn;->a:Lcom/kms/antivirus/AntivirusStateType;

    .line 70
    return-void
.end method

.method private static a(J)J
    .locals 2

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_0
.end method

.method public static a()Lmn;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lmn;

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    invoke-direct {v0, v1}, Lmn;-><init>(Lcom/kms/antivirus/AntivirusStateType;)V

    return-object v0
.end method

.method public static b()Lmn;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lmn;

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Running:Lcom/kms/antivirus/AntivirusStateType;

    invoke-direct {v0, v1}, Lmn;-><init>(Lcom/kms/antivirus/AntivirusStateType;)V

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lmn;->f:J

    .line 117
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lmn;->g:J

    .line 118
    return-object v0
.end method

.method private n()Lmn;
    .locals 3

    .prologue
    .line 203
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lmn;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lmn;->h:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    return-object v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a(I)Lmn;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lmn;->n()Lmn;

    move-result-object v0

    .line 80
    iput p1, v0, Lmn;->b:I

    .line 81
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lmn;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lmn;->n()Lmn;

    move-result-object v0

    .line 108
    iput-object p1, v0, Lmn;->i:Ljava/lang/String;

    .line 109
    return-object v0
.end method

.method public final a(Lmf;)Lmn;
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lmn;->n()Lmn;

    move-result-object v0

    .line 101
    iget-object v1, v0, Lmn;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-object v0
.end method

.method public final b(I)Lmn;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lmn;->n()Lmn;

    move-result-object v0

    .line 87
    iput p1, v0, Lmn;->c:I

    .line 88
    return-object v0
.end method

.method public final c()Lmn;
    .locals 3

    .prologue
    .line 123
    invoke-direct {p0}, Lmn;->n()Lmn;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    iput-object v1, v0, Lmn;->a:Lcom/kms/antivirus/AntivirusStateType;

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lmn;->g:J

    .line 126
    const/4 v1, 0x0

    iput-object v1, v0, Lmn;->i:Ljava/lang/String;

    .line 127
    return-object v0
.end method

.method public final c(I)Lmn;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lmn;->n()Lmn;

    move-result-object v0

    .line 93
    iput p1, v0, Lmn;->d:I

    .line 94
    return-object v0
.end method

.method protected final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lmn;->n()Lmn;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lmn;
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lmn;->n()Lmn;

    move-result-object v0

    .line 132
    iget v1, v0, Lmn;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmn;->e:I

    .line 133
    return-object v0
.end method

.method public final e()Lcom/kms/antivirus/AntivirusStateType;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lmn;->a:Lcom/kms/antivirus/AntivirusStateType;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lmn;->c:I

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lmn;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lmn;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i()J
    .locals 4

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 179
    invoke-virtual {p0}, Lmn;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmn;->f:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lmn;->a(J)J

    move-result-wide v0

    .line 185
    :cond_0
    :goto_0
    return-wide v0

    .line 182
    :cond_1
    iget-wide v2, p0, Lmn;->f:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lmn;->g:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 183
    iget-wide v0, p0, Lmn;->g:J

    iget-wide v2, p0, Lmn;->f:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lmn;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lmn;->e:I

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lmn;->l()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final l()F
    .locals 3

    .prologue
    const/high16 v0, 0x42c80000    # 100.0f

    .line 219
    iget v1, p0, Lmn;->b:I

    if-gez v1, :cond_1

    .line 220
    const/4 v0, 0x0

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    iget v1, p0, Lmn;->b:I

    if-eqz v1, :cond_0

    .line 224
    iget v1, p0, Lmn;->d:I

    iget v2, p0, Lmn;->b:I

    if-gt v1, v2, :cond_0

    .line 227
    iget v1, p0, Lmn;->d:I

    int-to-float v1, v1

    iget v2, p0, Lmn;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 228
    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lmn;->e()Lcom/kms/antivirus/AntivirusStateType;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Running:Lcom/kms/antivirus/AntivirusStateType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
