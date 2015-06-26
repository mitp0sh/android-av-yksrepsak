.class public final Lhc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Ljava/util/Date;IJJ)V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lhc;->a:J

    .line 210
    iput p2, p0, Lhc;->b:I

    .line 211
    iput-wide p3, p0, Lhc;->c:J

    .line 212
    iput-wide p5, p0, Lhc;->d:J

    .line 213
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lhc;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 220
    iget-wide v0, p0, Lhc;->a:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lhc;->b:I

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lhc;->c:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lhc;->d:J

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lhc;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
