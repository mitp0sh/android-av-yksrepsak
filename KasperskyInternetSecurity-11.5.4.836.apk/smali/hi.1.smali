.class final Lhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhH;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhi;->a:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lhi;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(LhK;LhL;)V
    .locals 6

    .prologue
    .line 24
    new-instance v0, LgD;

    invoke-direct {v0}, LgD;-><init>()V

    .line 25
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LgD;->a:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LgD;->b:Ljava/lang/String;

    .line 27
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LgD;->c:Ljava/lang/String;

    .line 28
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LgD;->d:Ljava/lang/String;

    .line 29
    invoke-interface {p1}, LhK;->b()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, LgD;->f:J

    .line 30
    new-instance v1, Ljava/util/Date;

    iget-wide v2, v0, LgD;->f:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LgD;->e:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lhi;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const/4 v0, 0x1

    invoke-interface {p2, v0}, LhL;->a(Z)V

    .line 33
    return-void
.end method
