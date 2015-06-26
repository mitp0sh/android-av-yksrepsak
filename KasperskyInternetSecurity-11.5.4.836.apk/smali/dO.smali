.class public final LdO;
.super LdQ;
.source "SourceFile"

# interfaces
.implements LdT;


# instance fields
.field private volatile g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Ldj;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, LdQ;-><init>(Ldj;I)V

    .line 41
    new-instance v0, LdP;

    invoke-direct {v0, p0}, LdP;-><init>(LdO;)V

    iput-object v0, p0, LdO;->k:Ljava/util/TimerTask;

    .line 30
    return-void
.end method

.method static synthetic a(LdO;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, LdO;->h:I

    return p1
.end method

.method static synthetic a(LdO;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, LdO;->g:Z

    return v0
.end method

.method static synthetic b(LdO;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, LdO;->h:I

    return v0
.end method

.method static synthetic b(LdO;I)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LdO;->a(I)V

    return-void
.end method

.method static synthetic c(LdO;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, LdO;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LdO;->i:I

    return v0
.end method

.method static synthetic c(LdO;I)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LdO;->a(I)V

    return-void
.end method

.method static synthetic d(LdO;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, LdO;->i()V

    return-void
.end method


# virtual methods
.method public final a([BLandroid/hardware/Camera$Parameters;)V
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, LdJ;->a([BZLandroid/hardware/Camera$Parameters;)[B

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, LdO;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return-void
.end method

.method protected final e()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, LdO;->k:Ljava/util/TimerTask;

    return-object v0
.end method

.method protected final f()Z
    .locals 2

    .prologue
    .line 33
    const-string v0, "PARAM_RUN_IMEDIATELY"

    invoke-virtual {p0}, LdO;->l()Leb;

    move-result-object v1

    invoke-interface {v1}, Leb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, LdO;->j:Z

    .line 34
    iget-boolean v0, p0, LdO;->j:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, LdO;->g()V

    .line 38
    :cond_0
    iget-boolean v0, p0, LdO;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0, p0}, Lcom/kms/kmsshared/KMSApplication;->a(LdT;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, LdO;->g:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, LdO;->h:I

    .line 123
    const/4 v0, 0x5

    iput v0, p0, LdO;->i:I

    .line 124
    invoke-super {p0}, LdQ;->g()V

    .line 125
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, LdO;->g:Z

    .line 154
    return-void
.end method
