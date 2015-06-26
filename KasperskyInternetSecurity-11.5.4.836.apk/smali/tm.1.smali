.class public final Ltm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;LaC;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 18
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v0

    invoke-static {p0, v0}, Ltm;->a(Landroid/content/Context;Lay;)Landroid/util/Pair;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 22
    :cond_0
    invoke-static {p0, p1}, Ltm;->b(Landroid/content/Context;LaC;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lay;)Landroid/util/Pair;
    .locals 10

    .prologue
    const v9, 0x7f07035a

    const v8, 0x7f07034e

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f070350

    .line 30
    const/4 v0, 0x0

    .line 32
    invoke-interface {p1}, Lay;->k()Laz;

    move-result-object v1

    invoke-interface {v1}, Laz;->e()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 34
    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v2, v1

    .line 35
    invoke-interface {p1}, Lay;->d()Z

    move-result v1

    .line 36
    invoke-interface {p1}, Lay;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 37
    const v1, 0x7f070352

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 40
    :cond_0
    invoke-interface {p1}, Lay;->b()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 102
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 46
    :pswitch_1
    if-nez v1, :cond_1

    .line 47
    const v0, 0x7f070351

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    const v0, 0x7f070353

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 57
    :pswitch_2
    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    const v0, 0x7f070357

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    const v0, 0x7f070354

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_3
    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    const v0, 0x7f070358

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    const v0, 0x7f070355

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :pswitch_4
    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    const v0, 0x7f070359

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 95
    :cond_4
    const v0, 0x7f07034f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    const v0, 0x7f070356

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;LaC;)Landroid/util/Pair;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    invoke-interface {p1}, LaC;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const v0, 0x7f0702f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    return-object v1

    .line 116
    :cond_0
    invoke-interface {p1}, LaC;->d()I

    move-result v1

    .line 117
    const/16 v0, 0xe

    if-gt v1, v0, :cond_3

    .line 119
    if-ne v1, v2, :cond_1

    .line 120
    const v0, 0x7f0702f1

    .line 126
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    if-le v1, v2, :cond_2

    const/4 v0, 0x5

    if-ge v1, v0, :cond_2

    .line 122
    const v0, 0x7f0702f2

    goto :goto_1

    .line 124
    :cond_2
    const v0, 0x7f0702f3

    goto :goto_1

    .line 129
    :cond_3
    const v0, 0x7f070170

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
