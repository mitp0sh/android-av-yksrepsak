.class final LjI;
.super LjR;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, LjR;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, LjI;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(LjE;)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p1}, LjE;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p1}, LjE;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->e()Z

    .line 50
    :cond_0
    return-void
.end method
