.class final Lpk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lps;

.field private b:Z


# direct methods
.method private constructor <init>(Lps;)V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpk;->b:Z

    .line 236
    iput-object p1, p0, Lpk;->a:Lps;

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Lps;B)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lpk;-><init>(Lps;)V

    return-void
.end method

.method static synthetic a(Lpk;Lps;)Lpk;
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lpk;->a(Lps;)Lpk;

    move-result-object v0

    return-object v0
.end method

.method private a(Lps;)Lpk;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lpk;

    invoke-direct {v0, p1}, Lpk;-><init>(Lps;)V

    .line 241
    iget-boolean v1, p0, Lpk;->b:Z

    iput-boolean v1, v0, Lpk;->b:Z

    .line 242
    return-object v0
.end method

.method static synthetic a(Lpk;)Lps;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lpk;->a:Lps;

    return-object v0
.end method

.method static synthetic a(Lpk;Z)Z
    .locals 0

    .prologue
    .line 230
    iput-boolean p1, p0, Lpk;->b:Z

    return p1
.end method

.method static synthetic b(Lpk;)Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lpk;->b:Z

    return v0
.end method
