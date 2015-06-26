.class public final LtJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lay;


# instance fields
.field private final a:LtI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, LtI;

    invoke-direct {v0}, LtI;-><init>()V

    iput-object v0, p0, LtJ;->a:LtI;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, -0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, LtJ;->a:LtI;

    invoke-virtual {v0}, LtI;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public final k()Laz;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, LtJ;->a:LtI;

    return-object v0
.end method
