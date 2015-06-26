.class public final Ltl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LsW;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 32
    invoke-interface {p0}, LsW;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p0}, LsW;->f()J

    move-result-wide v0

    .line 34
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(LaC;)Z
    .locals 2

    .prologue
    .line 20
    invoke-interface {p0}, LaC;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lay;)Z
    .locals 2

    .prologue
    .line 16
    invoke-interface {p0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(LaC;)Z
    .locals 2

    .prologue
    .line 28
    invoke-interface {p0}, LaC;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lay;)Z
    .locals 2

    .prologue
    .line 24
    invoke-interface {p0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
