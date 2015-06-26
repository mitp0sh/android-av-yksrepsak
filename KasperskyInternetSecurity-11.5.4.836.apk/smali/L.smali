.class public final LL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, LL;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 24
    iput-wide p1, p0, LL;->a:J

    .line 25
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, LL;->c:Z

    .line 37
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, LL;->b:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 0

    .prologue
    .line 32
    iput-wide p1, p0, LL;->b:J

    .line 33
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, LL;->c:Z

    return v0
.end method
