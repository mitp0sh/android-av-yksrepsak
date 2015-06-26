.class public final Lgd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()LfX;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 28
    new-instance v0, LfX;

    invoke-direct {v0, v4}, LfX;-><init>(Z)V

    .line 30
    invoke-virtual {v0, v5, v4}, LfX;->a(IZ)V

    .line 31
    const/16 v1, 0xc

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v4, v2}, LfX;->a(IZI)V

    .line 32
    const/4 v1, 0x6

    const/16 v2, 0x9

    new-instance v3, Lgh;

    invoke-direct {v3, v5}, Lgh;-><init>(B)V

    invoke-virtual {v0, v1, v4, v2, v3}, LfX;->a(IZILga;)V

    .line 33
    const/4 v1, 0x7

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v4, v2}, LfX;->a(IZI)V

    .line 35
    return-object v0
.end method

.method public static b()LfX;
    .locals 4

    .prologue
    .line 39
    new-instance v0, LfX;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LfX;-><init>(Z)V

    .line 40
    const/16 v1, 0xc

    const/4 v2, 0x1

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, LfX;->a(IZI)V

    .line 41
    return-object v0
.end method

.method public static c()LfX;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v3, LfX;

    invoke-direct {v3, v2}, LfX;-><init>(Z)V

    .line 47
    const/16 v0, 0xe

    const/16 v4, 0xd

    new-instance v5, Lge;

    invoke-direct {v5, v2}, Lge;-><init>(B)V

    invoke-virtual {v3, v0, v1, v4, v5}, LfX;->a(IZILga;)V

    .line 49
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 50
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2, v0}, LfX;->a(IZIZ)V

    .line 52
    const/16 v0, 0x8

    new-instance v4, Lgg;

    invoke-direct {v4, v2}, Lgg;-><init>(B)V

    invoke-virtual {v3, v0, v2, v2, v4}, LfX;->a(IZILga;)V

    .line 54
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lsx;->b()Z

    move-result v4

    .line 56
    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lsx;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez v4, :cond_4

    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->p()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    move v0, v1

    .line 57
    :goto_1
    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x6

    const/16 v4, 0x9

    invoke-virtual {v3, v0, v1, v4, v1}, LfX;->a(IZIZ)V

    .line 62
    :cond_2
    invoke-static {}, Los;->a()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 63
    :goto_2
    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1, v2, v0}, LfX;->a(IZIZ)V

    .line 65
    const/4 v0, 0x3

    new-instance v1, Lgf;

    invoke-direct {v1, v2}, Lgf;-><init>(B)V

    invoke-virtual {v3, v0, v2, v2, v1}, LfX;->a(IZILga;)V

    .line 67
    return-object v3

    :cond_3
    move v0, v2

    .line 49
    goto :goto_0

    :cond_4
    move v0, v2

    .line 56
    goto :goto_1

    :cond_5
    move v0, v2

    .line 62
    goto :goto_2
.end method

.method public static d()LfX;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 71
    new-instance v0, LfX;

    invoke-direct {v0, v5}, LfX;-><init>(Z)V

    .line 72
    const/16 v1, 0xe

    const/16 v2, 0xd

    new-instance v3, Lge;

    invoke-direct {v3, v5}, Lge;-><init>(B)V

    invoke-virtual {v0, v1, v4, v2, v3}, LfX;->a(IZILga;)V

    .line 73
    const/4 v1, 0x6

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v4, v2, v4}, LfX;->a(IZIZ)V

    .line 74
    return-object v0
.end method
