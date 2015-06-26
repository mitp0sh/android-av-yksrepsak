.class final Lgb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Lga;


# direct methods
.method public constructor <init>(IZILga;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lgb;->a:I

    .line 211
    iput-boolean p2, p0, Lgb;->c:Z

    .line 212
    iput p3, p0, Lgb;->b:I

    .line 213
    iput-object p4, p0, Lgb;->d:Lga;

    .line 214
    return-void
.end method

.method static synthetic a(Lgb;)I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lgb;->a:I

    return v0
.end method

.method static synthetic b(Lgb;)Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lgb;->c:Z

    return v0
.end method

.method static synthetic c(Lgb;)I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lgb;->b:I

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lgb;->d:Lga;

    invoke-interface {v0}, Lga;->b()Z

    move-result v0

    return v0
.end method
