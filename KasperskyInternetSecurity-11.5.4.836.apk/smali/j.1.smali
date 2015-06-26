.class public final Lj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW;


# instance fields
.field private final a:Lv;


# direct methods
.method public constructor <init>(Lv;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lj;->a:Lv;

    .line 18
    return-void
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {v0}, Lsk;->t()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk;->c(J)V

    .line 39
    invoke-virtual {v0}, Lsk;->g_()V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {v0}, Lsk;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Lsk;->c(J)V

    .line 44
    invoke-virtual {v0}, Lsk;->g_()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Lj;->a(Z)V

    .line 23
    iget-object v0, p0, Lj;->a:Lv;

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Lv;->a(I)V

    .line 24
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lj;->a(Z)V

    .line 29
    iget-object v0, p0, Lj;->a:Lv;

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Lv;->b(I)V

    .line 30
    return-void
.end method
