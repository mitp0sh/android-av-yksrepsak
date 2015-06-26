.class abstract LvM;
.super LvQ;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lwc;I)V
    .locals 1

    .prologue
    .line 11
    const v0, 0x7f030058

    invoke-direct {p0, p1, p2, v0}, LvQ;-><init>(Ljava/lang/String;Lwc;I)V

    .line 12
    return-void
.end method

.method static synthetic a(LvM;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, LvM;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public g()LbR;
    .locals 1

    .prologue
    .line 16
    new-instance v0, LvN;

    invoke-direct {v0, p0}, LvN;-><init>(LvM;)V

    return-object v0
.end method
