.class public final Lvd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean p1, p0, Lvd;->a:Z

    .line 115
    iput-boolean p2, p0, Lvd;->b:Z

    .line 116
    return-void
.end method

.method private a()Lvd;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lvd;

    iget-boolean v1, p0, Lvd;->a:Z

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lvd;-><init>(ZZ)V

    return-object v0
.end method

.method static synthetic a(Lvd;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lvd;->a:Z

    return v0
.end method

.method private b()Lvd;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lvd;

    iget-boolean v1, p0, Lvd;->a:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvd;-><init>(ZZ)V

    return-object v0
.end method

.method static synthetic b(Lvd;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lvd;->b:Z

    return v0
.end method

.method private c()Lvd;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lvd;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lvd;->b:Z

    invoke-direct {v0, v1, v2}, Lvd;-><init>(ZZ)V

    return-object v0
.end method

.method static synthetic c(Lvd;)Lvd;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lvd;->a()Lvd;

    move-result-object v0

    return-object v0
.end method

.method private d()Lvd;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lvd;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lvd;->b:Z

    invoke-direct {v0, v1, v2}, Lvd;-><init>(ZZ)V

    return-object v0
.end method

.method static synthetic d(Lvd;)Lvd;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lvd;->b()Lvd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lvd;)Lvd;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lvd;->c()Lvd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lvd;)Lvd;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lvd;->d()Lvd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    if-ne p0, p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 139
    :cond_3
    check-cast p1, Lvd;

    .line 141
    iget-boolean v2, p0, Lvd;->a:Z

    iget-boolean v3, p1, Lvd;->a:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 142
    :cond_4
    iget-boolean v2, p0, Lvd;->b:Z

    iget-boolean v3, p1, Lvd;->b:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    iget-boolean v0, p0, Lvd;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 150
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lvd;->b:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 151
    return v0

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v1, v2

    .line 150
    goto :goto_1
.end method
