.class public final LfP;
.super LfN;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, LfN;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lse;->h()Z

    move-result v0

    .line 13
    if-eqz v0, :cond_0

    const/16 v0, 0x19

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x18

    goto :goto_0
.end method
