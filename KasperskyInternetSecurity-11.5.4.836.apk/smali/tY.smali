.class public final LtY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lay;


# instance fields
.field private final a:Laz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, LtX;

    invoke-direct {v0}, LtX;-><init>()V

    iput-object v0, p0, LtY;->a:Laz;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, -0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 37
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 38
    iget-object v2, p0, LtY;->a:Laz;

    invoke-interface {v2}, Laz;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, LtY;->a:Laz;

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final k()Laz;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, LtY;->a:Laz;

    return-object v0
.end method
