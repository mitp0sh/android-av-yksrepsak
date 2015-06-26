.class public final LtX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laz;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->k()J

    move-result-wide v0

    .line 20
    new-instance v2, Ljava/util/GregorianCalendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const/4 v4, 0x0

    const-string v5, "GMT"

    invoke-direct {v3, v4, v5}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 21
    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 22
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 23
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, LtX;->a:J

    .line 24
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, LtX;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, LtX;->a:J

    return-wide v0
.end method

.method public final f()LaD;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
