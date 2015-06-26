.class public final Lll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LkZ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 69
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lsr;->d()Lsc;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsc;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 20
    invoke-static {p1}, Lll;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong antispam mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    invoke-static {}, Lsr;->d()Lsc;

    move-result-object v0

    .line 25
    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsc;->a(ILjava/lang/Object;)Lss;

    .line 26
    invoke-virtual {v0}, Lsc;->g_()V

    .line 28
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antispam/AntispamEventType;->ModeChanged:Lcom/kms/antispam/AntispamEventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/antispam/AntispamEventType;->newEvent(Ljava/lang/Object;)Llb;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 29
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lsr;->d()Lsc;

    move-result-object v0

    .line 39
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsc;->a(ILjava/lang/Object;)Lss;

    .line 40
    invoke-virtual {v0}, Lsc;->g_()V

    .line 41
    invoke-static {p1}, Lcom/google/android/apps/analytics/easytracking/GA;->m(Z)V

    .line 42
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lsr;->d()Lsc;

    move-result-object v0

    .line 52
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsc;->a(ILjava/lang/Object;)Lss;

    .line 53
    invoke-virtual {v0}, Lsc;->g_()V

    .line 54
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lsr;->d()Lsc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsc;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lsr;->d()Lsc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsc;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lsr;->d()Lsc;

    move-result-object v0

    .line 64
    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsc;->a(ILjava/lang/Object;)Lss;

    .line 65
    invoke-virtual {v0}, Lsc;->g_()V

    .line 66
    return-void
.end method
