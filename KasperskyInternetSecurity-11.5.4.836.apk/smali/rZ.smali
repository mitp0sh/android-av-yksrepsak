.class public final LrZ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/kaspersky/components/urlchecker/UrlInfo;)J
    .locals 6

    .prologue
    .line 48
    const-wide/16 v0, -0x1

    .line 50
    iget-wide v2, p0, Lcom/kaspersky/components/urlchecker/UrlInfo;->mCategories:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 51
    iget-wide v2, p0, Lcom/kaspersky/components/urlchecker/UrlInfo;->mCategories:J

    invoke-static {v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getCategoriesByMask(J)Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 53
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v0}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getMask()J

    move-result-wide v0

    .line 57
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlInfo;)V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    invoke-static {p1}, LrZ;->a(Lcom/kaspersky/components/urlchecker/UrlInfo;)J

    move-result-wide v4

    .line 19
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->getFilteredEventsInVector(I)Ljava/util/Vector;

    move-result-object v6

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 22
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_2

    .line 23
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/reports/Event;

    .line 24
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getTime()J

    move-result-wide v9

    .line 26
    sub-long v9, v7, v9

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-gtz v9, :cond_2

    .line 27
    invoke-virtual {v0, v2}, Lcom/kms/kmsshared/reports/Event;->param(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lra;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/reports/Event;->param(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 29
    cmp-long v0, v10, v4

    if-nez v0, :cond_1

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 37
    :goto_1
    if-nez v0, :cond_0

    .line 38
    const/16 v0, 0x48

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Serializable;

    aput-object p0, v3, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 40
    :cond_0
    return-void

    .line 22
    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlInfo;)V
    .locals 5

    .prologue
    .line 43
    invoke-static {p2}, LrZ;->a(Lcom/kaspersky/components/urlchecker/UrlInfo;)J

    move-result-wide v0

    .line 44
    const/16 v2, 0x4b

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/Serializable;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 45
    return-void
.end method
