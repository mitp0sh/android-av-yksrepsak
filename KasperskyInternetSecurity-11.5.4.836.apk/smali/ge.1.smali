.class final Lge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lge;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, LjJ;->k()Lww;

    move-result-object v0

    invoke-interface {v0}, Lww;->b()Z

    move-result v0

    .line 116
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 114
    :cond_0
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    invoke-interface {v0}, Lde;->k()Z

    move-result v0

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
