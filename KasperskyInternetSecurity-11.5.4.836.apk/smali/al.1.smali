.class public final Lal;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LaD;)Lae;
    .locals 15

    .prologue
    .line 56
    const/4 v9, 0x0

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0}, LaD;->b()LaE;

    move-result-object v0

    iget-object v0, v0, LaE;->e:LaF;

    .line 62
    iget-object v6, v0, LaF;->f:LaI;

    .line 63
    if-eqz v6, :cond_5

    iget v1, v6, LaI;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, v0, LaF;->e:LaM;

    if-eqz v1, :cond_5

    iget-object v0, v0, LaF;->e:LaM;

    iget v0, v0, LaM;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 67
    iget-object v0, v6, LaI;->d:[J

    .line 68
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 70
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 71
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 74
    :cond_1
    iget-object v7, v6, LaI;->c:[Ljava/lang/String;

    .line 75
    if-eqz v7, :cond_5

    .line 77
    const/4 v0, 0x0

    .line 78
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 79
    array-length v3, v7

    const/4 v4, 0x4

    if-lt v3, v4, :cond_7

    .line 80
    const/4 v0, 0x1

    aget-object v0, v7, v0

    .line 81
    const/4 v3, 0x2

    aget-object v11, v7, v3

    .line 82
    const/4 v3, 0x3

    aget-object v10, v7, v3

    move-object v3, v0

    .line 85
    :goto_1
    const/4 v0, 0x0

    .line 86
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 87
    array-length v8, v7

    const/4 v12, 0x6

    if-lt v8, v12, :cond_6

    .line 88
    const/4 v0, 0x4

    aget-object v0, v7, v0

    .line 89
    const/4 v4, 0x5

    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-object v12, v0

    .line 92
    :goto_2
    iget-object v0, v6, LaI;->a:[I

    .line 93
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v6, -0x1

    .line 94
    if-eqz v0, :cond_5

    .line 96
    array-length v13, v0

    const/4 v14, 0x2

    if-lt v13, v14, :cond_2

    .line 97
    const/4 v7, 0x0

    aget v7, v0, v7

    .line 98
    const/4 v8, 0x1

    aget v8, v0, v8

    .line 101
    :cond_2
    array-length v13, v0

    const/4 v14, 0x3

    if-lt v13, v14, :cond_3

    .line 102
    const/4 v6, 0x2

    aget v6, v0, v6

    .line 105
    :cond_3
    invoke-virtual {p0}, LaD;->b()LaE;

    move-result-object v0

    iget-object v0, v0, LaE;->e:LaF;

    iget-object v0, v0, LaF;->e:LaM;

    .line 106
    if-eqz v0, :cond_5

    .line 107
    iget v9, v0, LaM;->f:I

    .line 108
    new-instance v0, Lae;

    if-nez v12, :cond_4

    :goto_3
    invoke-direct/range {v0 .. v11}, Lae;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;DIIIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v3, v12

    goto :goto_3

    :cond_5
    move-object v0, v9

    goto/16 :goto_0

    :cond_6
    move-object v12, v0

    goto :goto_2

    :cond_7
    move-object v3, v0

    goto :goto_1
.end method
